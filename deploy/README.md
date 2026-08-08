# Deploying to the VPS

The flow: push to `main` → GitHub Actions builds the site with Hugo and force-
pushes the result to the repository's `built` branch → GitHub delivers a
webhook to the VPS → a small listener there verifies it and immediately
publishes the new build through an atomic swap. A systemd timer separately
re-checks every 20 minutes as a fallback, in case a webhook delivery is ever
missed.

The VPS runs **nginx, `git`, and the `webhook` listener** — no Hugo, no SSH
key held by GitHub.

## Why pull, and why not GitHub Actions directly

The first version of this pipeline had GitHub Actions `rsync`ing directly to
the VPS over SSH. That doesn't work: GitHub Actions runners — the ephemeral
Azure VMs that execute workflow steps — are blocked from reaching this VPS by
something at the hosting provider's network edge. Confirmed by testing: even
a plain HTTP request on port 80 times out from a runner, not just SSH on port
22, and this is outside anything `firewalld` or the provider's own firewall
panel controls.

GitHub's own webhook-delivery infrastructure is a *different* set of servers
with a completely different, much smaller IP range than Actions runners use —
and it turns out that one **can** reach this VPS (confirmed directly: a real
webhook delivery got a real HTTP response, not a timeout). So the design
splits the two jobs that used to be one: GitHub Actions builds the site
(unaffected by any of this — building doesn't require reaching the VPS at
all) and pushes the result to a branch; a webhook tells the VPS the moment
that branch moves, and the VPS pulls it — an outbound connection it
initiates, the direction that's confirmed to work.

## Files in this directory

| File | Runs where | Role |
|---|---|---|
| `../.github/workflows/deploy.yml` | GitHub Actions | Build with Hugo, force-push to `built` |
| `hooks.json` | VPS, via the `webhook` listener | Verify the GitHub signature, run `poll-and-publish.sh` |
| `maximum-mathematics-webhook.service` | VPS (systemd) | Runs the `webhook` listener |
| `poll-and-publish.sh` | VPS, via the webhook or the timer | Checks `built`, publishes if it moved |
| `remote-swap.sh` | VPS, via `poll-and-publish.sh` | Atomically publish staging as live |
| `maximum-mathematics-poll.service` | VPS (systemd) | Runs `poll-and-publish.sh` once |
| `maximum-mathematics-poll.timer` | VPS (systemd) | Fallback: re-checks every 20 minutes |
| `nginx.conf` | VPS | Serves the built site, proxies `/hooks/` to the listener |

## One-time setup on the VPS

### 1. Install nginx

```bash
sudo dnf install -y nginx
sudo systemctl enable --now nginx
```

Confirm it's serving before going further:

```bash
curl -sI http://localhost/ | head -1
```

### 2. Open the firewall

```bash
sudo firewall-cmd --permanent --add-service=http --add-service=https
sudo firewall-cmd --reload
```

### 3. Create the `deploy` user and directory tree

```bash
sudo useradd --system --create-home --home-dir /srv/maximum-mathematics --shell /bin/bash deploy
sudo -u deploy mkdir -p /srv/maximum-mathematics/{bin,www,www.new}
```

The home directory `useradd` creates defaults to `700` (owner-only), which
blocks nginx — running as its own user — from ever traversing into it to
reach `www/`. Grant traverse-only access, not read/listing:

```bash
sudo chmod 711 /srv/maximum-mathematics
```

Verify: `ls -ld /srv/maximum-mathematics` should read `drwx--x--x`.

### 4. Install the scripts and webhook config

From your own machine:

```bash
scp deploy/poll-and-publish.sh deploy/remote-swap.sh deploy/hooks.json cloud-user@YOUR_VPS_IP:/tmp/
```

On the VPS:

```bash
sudo mv /tmp/poll-and-publish.sh /tmp/remote-swap.sh /tmp/hooks.json /srv/maximum-mathematics/bin/
sudo chown deploy:deploy /srv/maximum-mathematics/bin/*
sudo chmod 700 /srv/maximum-mathematics/bin/*.sh
sudo chmod 600 /srv/maximum-mathematics/bin/hooks.json
```

Re-copy the same way any time you edit any of these — they are not fetched
from git automatically, on purpose: the thing deciding what gets published
shouldn't itself be something a build can silently change.

### 5. Install the `webhook` binary

```bash
curl -fsSL https://github.com/adnanh/webhook/releases/download/2.8.3/webhook-linux-amd64.tar.gz \
  | tar -xz --strip-components=1 -C /tmp webhook-linux-amd64/webhook
sudo mv /tmp/webhook /usr/local/bin/webhook
sudo chmod 755 /usr/local/bin/webhook
```

Confirm: `webhook -version` should print `webhook version 2.8.3`.

### 6. Generate the webhook secret

```bash
sudo install -d -m 0700 /etc/maximum-mathematics
printf 'WEBHOOK_SECRET=%s\n' "$(openssl rand -hex 32)" | sudo tee /etc/maximum-mathematics/webhook.env > /dev/null
sudo chmod 0600 /etc/maximum-mathematics/webhook.env
```

You'll need this value again in step 9 — read it back with:

```bash
sudo cat /etc/maximum-mathematics/webhook.env
```

The secret is never committed; `hooks.json` reads it from the environment via
`webhook`'s `-template` flag.

### 7. Install and start the webhook listener

```bash
scp deploy/maximum-mathematics-webhook.service deploy/maximum-mathematics-poll.service deploy/maximum-mathematics-poll.timer cloud-user@YOUR_VPS_IP:/tmp/
```

```bash
sudo mv /tmp/maximum-mathematics-webhook.service /tmp/maximum-mathematics-poll.service /tmp/maximum-mathematics-poll.timer /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now maximum-mathematics-webhook.service
sudo systemctl enable --now maximum-mathematics-poll.timer
```

Check the listener actually loaded the hook rather than silently failing:

```bash
sudo journalctl -u maximum-mathematics-webhook.service -n 20 --no-pager
```

Look for `loaded: maximum-mathematics-deploy`, not a template or parse error.

### 8. Configure nginx

Copy `deploy/nginx.conf` to `/etc/nginx/conf.d/maximum-mathematics.conf`,
replacing `maximummathematics.com` with your real domain — or `_` to match any
hostname until DNS is pointed at the VPS:

```bash
scp deploy/nginx.conf cloud-user@YOUR_VPS_IP:/tmp/maximum-mathematics.conf
```

```bash
sudo mv /tmp/maximum-mathematics.conf /etc/nginx/conf.d/maximum-mathematics.conf
sudo nginx -t && sudo systemctl reload nginx
```

> **Watch out:** if the VPS's default `nginx.conf` ships its own example
> `server { listen 80; server_name _; ... }` block (CentOS's nginx package
> does), comment it out — two blocks both claiming `server_name _;` produces a
> `conflicting server name` warning and leaves it ambiguous which one nginx
> actually uses.

### 9. Point the GitHub webhook at it, with the real secret

If you already created a webhook while testing reachability, edit it —
otherwise create one at **Settings → Webhooks → Add webhook**:

| Field | Value |
|---|---|
| Payload URL | `http://YOUR_VPS_IP/hooks/maximum-mathematics-deploy` |
| Content type | `application/json` |
| Secret | the value from step 6 |
| Which events | Just the push event |

### 10. Watch the first deploy happen

Push to `main` (or trigger `deploy.yml` manually from the Actions tab). Once
that workflow finishes and force-pushes `built`, the webhook should fire
within seconds:

```bash
sudo journalctl -u maximum-mathematics-webhook.service -f
```

You should see the hook match and trigger, then `published <commit hash>`.
Then:

```bash
curl -sI http://YOUR_VPS_IP/
```

should return the real site, not the earlier `403` (empty docroot).

On GitHub, the webhook's **Recent Deliveries** tab is the other place to
check — a `200` response there confirms the VPS received and accepted it.

### 11. Point DNS, then add TLS

Once DNS points the domain at the VPS, update `server_name` in the nginx
config and `baseURL` in
[`config/_default/hugo.toml`](../config/_default/hugo.toml), then:

```bash
sudo dnf install -y epel-release
sudo dnf install -y certbot python3-certbot-nginx
sudo certbot --nginx -d maximummathematics.com -d www.maximummathematics.com
```

## Checking a deploy

```bash
sudo journalctl -u maximum-mathematics-webhook.service -f
```

The fallback timer's own log is separate, and should mostly show nothing —
that's expected, it only does anything when a webhook delivery was missed:

```bash
sudo journalctl -u maximum-mathematics-poll.service -f
```

The previous build is always kept:

```bash
ls -la /srv/maximum-mathematics/
```

To roll back manually:

```bash
sudo -u deploy bash -c 'rm -rf www.new && mv www www.new.bad && mv www.previous www'
```

## Left over from the earlier push-based (SSH) design

An SSH keypair, a restricted `authorized_keys` entry, and four GitHub repo
secrets (`VPS_HOST`, `VPS_USER`, `VPS_SSH_PRIVATE_KEY`, `VPS_KNOWN_HOSTS`)
were set up before the network block was discovered. None of them do
anything now. They're harmless to leave in place, or you can remove the
`authorized_keys` line on the VPS and delete the four secrets from
**Settings → Secrets and variables → Actions** on GitHub; neither is urgent.

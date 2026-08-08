# Deploying to the VPS

The flow: push to `main` → GitHub Actions builds the site with Hugo and force-
pushes the result to the repository's `built` branch → a systemd timer on the
VPS notices, pulls it, and publishes it through an atomic swap.

The VPS runs **nginx, `git`, and one systemd timer** — no Hugo, no webhook
listener, no SSH key held by GitHub. It never has anything to say to GitHub
Actions; it just checks in on `github.com` every couple of minutes.

## Why pull instead of push

The first version of this pipeline had GitHub Actions `rsync`ing directly to
the VPS over SSH. That doesn't work here: GitHub Actions runners are blocked
from reaching this VPS by something at the hosting provider's network edge —
confirmed by testing that even a plain HTTP request on port 80 times out from
a runner, not just SSH on port 22, and that this is outside anything
`firewalld` or the provider's own firewall panel controls. The VPS's own
*outbound* connections work fine (`dnf install` reaches package repos with no
issue), so the fix is to flip the direction: the VPS reaches out to GitHub
instead of GitHub reaching in to the VPS.

## Files in this directory

| File | Runs where | Role |
|---|---|---|
| `../.github/workflows/deploy.yml` | GitHub Actions | Build with Hugo, force-push to `built` |
| `poll-and-publish.sh` | VPS, via the timer below | Checks `built`, publishes if it moved |
| `remote-swap.sh` | VPS, via `poll-and-publish.sh` | Atomically publish staging as live |
| `maximum-mathematics-poll.service` | VPS (systemd) | Runs `poll-and-publish.sh` once |
| `maximum-mathematics-poll.timer` | VPS (systemd) | Triggers the service every ~2 minutes |
| `nginx.conf` | VPS | Serves the built site |

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

### 4. Install the scripts

From your own machine:

```bash
scp deploy/poll-and-publish.sh deploy/remote-swap.sh cloud-user@YOUR_VPS_IP:/tmp/
```

On the VPS:

```bash
sudo mv /tmp/poll-and-publish.sh /tmp/remote-swap.sh /srv/maximum-mathematics/bin/
sudo chown deploy:deploy /srv/maximum-mathematics/bin/*.sh
sudo chmod 700 /srv/maximum-mathematics/bin/*.sh
```

Re-copy the same way any time you edit either script — they are not fetched
from git automatically, on purpose: the thing deciding what gets published
shouldn't itself be something a build can silently change.

### 5. Install and enable the systemd timer

From your own machine:

```bash
scp deploy/maximum-mathematics-poll.service deploy/maximum-mathematics-poll.timer cloud-user@YOUR_VPS_IP:/tmp/
```

On the VPS:

```bash
sudo mv /tmp/maximum-mathematics-poll.service /tmp/maximum-mathematics-poll.timer /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now maximum-mathematics-poll.timer
```

Check it's scheduled:

```bash
sudo systemctl list-timers maximum-mathematics-poll.timer
```

### 6. Configure nginx

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

### 7. Watch the first deploy happen

Push to `main` (or trigger `deploy.yml` manually from the Actions tab). Once
that workflow finishes, wait up to ~2 minutes for the timer, then:

```bash
sudo journalctl -u maximum-mathematics-poll.service -n 20 --no-pager
```

You should see `published <commit hash>`. Then:

```bash
curl -sI http://YOUR_VPS_IP/
```

should return the real site, not the earlier `403` (empty docroot) or
`404`.

To force an immediate check instead of waiting for the timer:

```bash
sudo systemctl start maximum-mathematics-poll.service
```

### 8. Point DNS, then add TLS

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

## Left over from the earlier push-based design

An SSH keypair, a restricted `authorized_keys` entry, and four GitHub repo
secrets (`VPS_HOST`, `VPS_USER`, `VPS_SSH_PRIVATE_KEY`, `VPS_KNOWN_HOSTS`)
were set up for the original design before the network block was discovered.
None of them do anything now — nothing on the VPS references that key
anymore. They're harmless to leave in place, or you can remove the
`authorized_keys` line on the VPS and delete the four secrets from
**Settings → Secrets and variables → Actions** on GitHub; neither is urgent.

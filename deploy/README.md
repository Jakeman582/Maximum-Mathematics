# Deploying to the VPS

The flow: push to `main` → GitHub Actions builds the site with Hugo on
GitHub's own runners → it `rsync`s the result to the VPS over SSH → a fixed
script on the VPS atomically publishes it.

The VPS runs **nginx only**. It never installs Hugo, never holds a git
checkout of this repository, and never runs a listener reachable from the
internet beyond nginx and sshd. The deploy SSH key is restricted so that even
if it leaked, it could only overwrite the staging directory or trigger the one
fixed publish script — never open a shell.

Written for **CentOS Stream 10**, confirmed clean: no web server installed,
`firewalld` active, SELinux disabled, a sudo user `cloud-user`.

Files in this directory:

| File | Runs where | Role |
|---|---|---|
| `../.github/workflows/deploy.yml` | GitHub Actions | Build with Hugo, rsync, trigger the swap |
| `ssh-command-wrapper.sh` | VPS, via `command=` in `authorized_keys` | The only two things the deploy key can do |
| `remote-swap.sh` | VPS, via the wrapper | Atomically publish staging as live |
| `nginx.conf` | VPS | Serves the built site |

## One-time setup on the VPS

Run as `cloud-user` with `sudo`, over SSH, unless noted otherwise.

### 1. Install nginx

```bash
sudo dnf install -y nginx
```

```bash
sudo systemctl enable --now nginx
```

Confirm it's serving nginx's default page before going any further:

```bash
curl -sI http://localhost/ | head -1
```

### 2. Open the firewall

`firewalld` is already active and only allows `ssh`, `cockpit`, and
`dhcpv6-client`. Add the web ports without touching those:

```bash
sudo firewall-cmd --permanent --add-service=http --add-service=https
sudo firewall-cmd --reload
```

### 3. Create the `deploy` user and directory tree

A dedicated, non-sudo user — if the CI key ever leaks, the blast radius is
this one directory tree, not the whole VPS.

```bash
sudo useradd --system --create-home --home-dir /srv/maximum-mathematics --shell /bin/bash deploy
```

```bash
sudo -u deploy mkdir -p /srv/maximum-mathematics/{bin,www,www.new}
```

`www` will hold the live site, `www.new` is the rsync target for the next
build, `bin` holds the two scripts below.

### 4. Install the wrapper and swap scripts

From your own machine, copy them from this repository:

```bash
scp deploy/ssh-command-wrapper.sh deploy/remote-swap.sh cloud-user@YOUR_VPS_IP:/tmp/
```

Then, on the VPS:

```bash
sudo mv /tmp/ssh-command-wrapper.sh /tmp/remote-swap.sh /srv/maximum-mathematics/bin/
sudo chown deploy:deploy /srv/maximum-mathematics/bin/*.sh
sudo chmod 700 /srv/maximum-mathematics/bin/*.sh
```

These are not fetched from git on every deploy — they're small, security-
sensitive, and hand-installed once. Re-copy them the same way if you ever edit
them.

### 5. Generate the deploy keypair

**On your own machine**, not the VPS — the private key must never touch the
server:

```bash
ssh-keygen -t ed25519 -f ~/.ssh/maximum-mathematics-deploy -C "github-actions-deploy" -N ""
```

This writes a private key (`~/.ssh/maximum-mathematics-deploy`) and a public
key (`~/.ssh/maximum-mathematics-deploy.pub`).

### 6. Install the public key, restricted

On the VPS, as `deploy` (use `sudo -u deploy -i` from `cloud-user`, or `sudo
su - deploy`):

```bash
mkdir -p ~/.ssh && chmod 700 ~/.ssh
```

Add the public key's contents to `~/.ssh/authorized_keys`, but prefix it —
this is the line that makes the key incapable of opening a shell no matter
what the client asks for:

```
command="/srv/maximum-mathematics/bin/ssh-command-wrapper.sh",no-port-forwarding,no-X11-forwarding,no-agent-forwarding,no-pty ssh-ed25519 AAAA...rest-of-your-public-key... github-actions-deploy
```

```bash
chmod 600 ~/.ssh/authorized_keys
```

Verify the restriction works before wiring up CI — this should print the
rejection message from the wrapper, not open a shell:

```bash
ssh -i ~/.ssh/maximum-mathematics-deploy deploy@YOUR_VPS_IP
```

### 7. Configure nginx

Copy `deploy/nginx.conf` to `/etc/nginx/conf.d/maximum-mathematics.conf` on
the VPS, replacing `maximummathematics.com` with your real domain — or, until
DNS is pointed at the VPS, with `_` to match any hostname so you can test over
the bare IP:

```bash
sudo nginx -t && sudo systemctl reload nginx
```

### 8. Add the GitHub repository secrets

**Settings → Secrets and variables → Actions → New repository secret**, four
of them:

| Secret | Value |
|---|---|
| `VPS_HOST` | The VPS's IP address or hostname |
| `VPS_USER` | `deploy` |
| `VPS_SSH_PRIVATE_KEY` | The **private** key from step 5 — full contents of `~/.ssh/maximum-mathematics-deploy` |
| `VPS_KNOWN_HOSTS` | Output of `ssh-keyscan -t ed25519 YOUR_VPS_IP`, run from your own machine |

`VPS_KNOWN_HOSTS` pins the server's host key so the workflow verifies it's
really talking to your VPS rather than trusting whatever answers on first
connect. Run the `ssh-keyscan` command yourself and paste its output — do not
let the workflow do this discovery itself.

### 9. Push and watch it deploy

```bash
git push origin main
```

Check progress in the repository's **Actions** tab. On success:

```bash
curl -sI http://YOUR_VPS_IP/
```

should return a Hugo-built page. Because `www.new` starts empty, `remote-swap.sh`
refuses to publish on a run where rsync sent nothing — check the Actions log
if the site doesn't update.

### 10. Point DNS, then add TLS

Once `A`/`AAAA` records point the domain at the VPS, update
`server_name` in the nginx config (and `baseURL` in
[`config/_default/hugo.toml`](../config/_default/hugo.toml) — Hugo bakes it
into canonical URLs, the sitemap, and the RSS feed), then:

```bash
sudo dnf install -y epel-release
sudo dnf install -y certbot python3-certbot-nginx
sudo certbot --nginx -d maximummathematics.com -d www.maximummathematics.com
```

certbot rewrites the server block in place and adds the HTTPS listener,
redirect, and a renewal timer.

## Checking a deploy

Actions tab → the workflow run → step-by-step logs, including the rsync
transfer and the `swap` output.

On the VPS, the previous build is always kept:

```bash
ls -la /srv/maximum-mathematics/
```

To roll back manually:

```bash
sudo -u deploy bash -c 'rm -rf www.new && mv www www.new.bad && mv www.previous www'
```

## Editing the wrapper or swap script later

Re-copy with `scp`, as in step 4 — they are not part of what CI deploys, on
purpose. A script that decides what a CI-controlled SSH key is allowed to do
should not itself be something that key can overwrite.

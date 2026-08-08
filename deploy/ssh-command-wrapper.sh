#!/usr/bin/env bash
#
# ssh-command-wrapper.sh
#
# Installed once on the VPS at /srv/maximum-mathematics/bin/ and set as the
# forced command on the deploy user's SSH key, via authorized_keys:
#
#   command="/srv/maximum-mathematics/bin/ssh-command-wrapper.sh",no-port-forwarding,no-X11-forwarding,no-agent-forwarding,no-pty ssh-ed25519 AAAA... github-actions-deploy
#
# The `command=` restriction means OpenSSH runs *this script* for every
# connection made with that key, no matter what the client asked for — a
# leaked key can never open an interactive shell, only trigger the two things
# handled below. $SSH_ORIGINAL_COMMAND holds whatever the client actually
# requested.
#
# GitHub Actions uses this key for exactly two calls:
#   1. `rsync ... deploy@host:anything/`  — the build artifacts, into staging
#   2. `ssh deploy@host swap`             — atomically publish staging as live
#
# Anything else is rejected.

set -o errexit
set -o nounset
set -o pipefail

STAGING_DIRECTORY="/srv/maximum-mathematics/www.new/"
SWAP_SCRIPT="/srv/maximum-mathematics/bin/remote-swap.sh"

case "${SSH_ORIGINAL_COMMAND:-}" in
  "rsync --server"*)
    # Trust the client's own rsync flags — they encode the protocol version
    # and negotiated options — but never its destination path. Drop the last
    # argument (whatever path the client asked to write to) and substitute
    # the one directory this key is allowed to touch. This is the same
    # principle rrsync uses: the path is attacker-influenced input, so the
    # server decides it, not the client.
    read -r -a command_parts <<< "${SSH_ORIGINAL_COMMAND}"
    unset 'command_parts[-1]'
    exec "${command_parts[@]}" "${STAGING_DIRECTORY}"
    ;;
  "swap")
    exec "${SWAP_SCRIPT}"
    ;;
  *)
    echo "rejected: this key may only rsync into staging or run 'swap'" >&2
    exit 1
    ;;
esac

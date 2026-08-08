#!/usr/bin/env bash
#
# poll-and-publish.sh
#
# Installed once on the VPS at /srv/maximum-mathematics/bin/, run every couple
# of minutes by the maximum-mathematics-poll.timer systemd unit (see
# deploy/README.md).
#
# GitHub Actions builds the site and force-pushes the result to the
# repository's `built` branch — a plain orphan branch of static output, fresh
# on every build, no history worth keeping. This script checks whether that
# branch has moved since the last check and, if so, publishes it through the
# same atomic rename-swap remote-swap.sh already uses.
#
# Deliberately outbound-only: this VPS connects out to github.com to check for
# updates, rather than GitHub connecting in to the VPS — the reverse direction
# is blocked by something at the hosting provider's network edge (confirmed:
# GitHub Actions runners time out reaching this VPS on every port tested, not
# just SSH). The repository is public, so this needs no credentials.

set -o errexit
set -o nounset
set -o pipefail

REPOSITORY_URL="https://github.com/Jakeman582/Maximum-Mathematics.git"
BRANCH="built"

ROOT_DIRECTORY="/srv/maximum-mathematics"
CHECKOUT_DIRECTORY="${ROOT_DIRECTORY}/checkout"
STAGING_DIRECTORY="${ROOT_DIRECTORY}/www.new"
SWAP_SCRIPT="${ROOT_DIRECTORY}/bin/remote-swap.sh"
LAST_DEPLOYED_FILE="${ROOT_DIRECTORY}/.last-deployed-commit"

if [ ! -d "${CHECKOUT_DIRECTORY}/.git" ]; then
  git clone --branch "${BRANCH}" --single-branch "${REPOSITORY_URL}" "${CHECKOUT_DIRECTORY}"
fi

cd "${CHECKOUT_DIRECTORY}"
git fetch origin "${BRANCH}"

REMOTE_COMMIT="$(git rev-parse "origin/${BRANCH}")"
LAST_DEPLOYED_COMMIT="$(cat "${LAST_DEPLOYED_FILE}" 2>/dev/null || echo "")"

if [ "${REMOTE_COMMIT}" = "${LAST_DEPLOYED_COMMIT}" ]; then
  exit 0 # nothing new — the common case on most runs
fi

git reset --hard "origin/${BRANCH}"

# Plain coreutils rather than rsync: source and destination are both local
# directories on the same host now (unlike the earlier design, where rsync's
# delta-transfer mattered because it was copying over the network from a
# GitHub Actions runner), so there's nothing rsync buys here — and it keeps
# this VPS's footprint to git plus whatever already ships with the OS.
rm -rf "${STAGING_DIRECTORY}"
cp -a "${CHECKOUT_DIRECTORY}" "${STAGING_DIRECTORY}"
rm -rf "${STAGING_DIRECTORY}/.git"

"${SWAP_SCRIPT}"

echo "${REMOTE_COMMIT}" > "${LAST_DEPLOYED_FILE}"
echo "published ${REMOTE_COMMIT}"

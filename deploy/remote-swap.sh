#!/usr/bin/env bash
#
# remote-swap.sh
#
# Installed once on the VPS at /srv/maximum-mathematics/bin/. Runs there,
# triggered by poll-and-publish.sh once it's confirmed there's a new build to
# publish — never runs on any other machine, and never runs directly from
# GitHub Actions (see poll-and-publish.sh for why: the VPS pulls, it is never
# pushed to).
#
# By the time this runs, www.new/ already holds a fresh build. This makes
# that build live with two renames, so nginx never serves a directory that is
# half old build, half new build: the docroot either points at the complete
# previous build or the complete new one, never a mix. The previous build is
# kept as www.previous/ for a manual rollback.

set -o errexit
set -o nounset
set -o pipefail

ROOT_DIRECTORY="/srv/maximum-mathematics"
LIVE_DIRECTORY="${ROOT_DIRECTORY}/www"
STAGING_DIRECTORY="${ROOT_DIRECTORY}/www.new"
PREVIOUS_DIRECTORY="${ROOT_DIRECTORY}/www.previous"

if [ ! -d "${STAGING_DIRECTORY}" ] || [ -z "$(ls -A "${STAGING_DIRECTORY}" 2>/dev/null)" ]; then
  echo "error: ${STAGING_DIRECTORY} is missing or empty — nothing to publish" >&2
  exit 1
fi

rm -rf "${PREVIOUS_DIRECTORY}"

if [ -d "${LIVE_DIRECTORY}" ]; then
  mv "${LIVE_DIRECTORY}" "${PREVIOUS_DIRECTORY}"
fi
mv "${STAGING_DIRECTORY}" "${LIVE_DIRECTORY}"

# Recreate empty staging so the next run has somewhere to land.
mkdir -p "${STAGING_DIRECTORY}"

# nginx runs as its own unpriviliged user, not `deploy`; content must be
# world-readable for it to serve. Hugo's own output is already world-readable,
# but this makes it explicit rather than relying on that staying true.
chmod -R a+rX "${LIVE_DIRECTORY}"

echo "published $(find "${LIVE_DIRECTORY}" -type f | wc -l) files"

#!/usr/bin/env bash
#
# render-figures.sh
#
# Renders every .asy file under content/ to an .svg beside it. Both the source
# and the rendered SVG are committed, so the site build itself never needs
# Asymptote or LaTeX installed — only this script does.
#
# Usage:
#   scripts/render-figures.sh              # render sources whose SVG is stale or missing
#   scripts/render-figures.sh --force      # re-render everything
#   scripts/render-figures.sh path/to.asy  # render specific files

set -o errexit
set -o nounset
set -o pipefail

REPOSITORY_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CONTENT_DIRECTORY="${REPOSITORY_ROOT}/content"

#-------------------------------------------------------------------------------
# TeX environment
#-------------------------------------------------------------------------------

# Asymptote converts its DVI output to SVG with dvisvgm. On Homebrew, dvisvgm
# is a standalone formula with its own kpathsea, which resolves paths relative
# to its own prefix and so cannot find TeX Live's headers (tex.pro and the font
# map files) on its own. Pointing the TEXMF variables at the TeX Live tree is
# what makes the DVI-to-SVG step work; without them Asymptote fails with
# "PostScript error: undefined in TeXDict".
if command -v kpsewhich >/dev/null 2>&1; then
  TEXMF_DISTRIBUTION="$(kpsewhich --var-value=TEXMFDIST)"
  if [ -d "${TEXMF_DISTRIBUTION}" ]; then
    export TEXMFDIST="${TEXMF_DISTRIBUTION}"
    export TEXMFROOT="$(dirname "${TEXMF_DISTRIBUTION}")"
    export TEXMFCNF="${TEXMF_DISTRIBUTION}/web2c:"
  fi
fi

#-------------------------------------------------------------------------------
# Preconditions
#-------------------------------------------------------------------------------

if ! command -v asy >/dev/null 2>&1; then
  echo "error: asy not found. Install Asymptote and a LaTeX distribution." >&2
  exit 1
fi

# Asymptote resolves `import MaximumMathematics` through the `dir` setting in
# ~/.asy/config.asy. Fail loudly here rather than letting every figure fail.
if ! asy -c 'import MaximumMathematics;' >/dev/null 2>&1; then
  echo "error: Asymptote cannot import MaximumMathematics." >&2
  echo "       Add the Maximum-Asymptote checkout to ~/.asy/config.asy:" >&2
  echo "         dir += \"/absolute/path/to/Maximum-Asymptote\";" >&2
  exit 1
fi

#-------------------------------------------------------------------------------
# Collect sources
#-------------------------------------------------------------------------------

FORCE_RENDER=false
SOURCES=()

for ARGUMENT in "$@"; do
  case "${ARGUMENT}" in
    --force) FORCE_RENDER=true ;;
    *)       SOURCES+=("${ARGUMENT}") ;;
  esac
done

if [ "${#SOURCES[@]}" -eq 0 ]; then
  while IFS= read -r FOUND_SOURCE; do
    SOURCES+=("${FOUND_SOURCE}")
  done < <(find "${CONTENT_DIRECTORY}" -type f -name '*.asy' | sort)
fi

if [ "${#SOURCES[@]}" -eq 0 ]; then
  echo "No .asy sources found under ${CONTENT_DIRECTORY}."
  exit 0
fi

#-------------------------------------------------------------------------------
# Render
#-------------------------------------------------------------------------------

RENDERED_COUNT=0
SKIPPED_COUNT=0

for SOURCE in "${SOURCES[@]}"; do
  OUTPUT="${SOURCE%.asy}.svg"

  # Skip anything already newer than its source unless forced.
  if [ "${FORCE_RENDER}" = false ] && [ -f "${OUTPUT}" ] && [ "${OUTPUT}" -nt "${SOURCE}" ]; then
    SKIPPED_COUNT=$((SKIPPED_COUNT + 1))
    continue
  fi

  echo "rendering ${SOURCE#"${REPOSITORY_ROOT}/"}"

  # Asymptote writes its output to the working directory, so run it there and
  # let the source's own basename determine the output name.
  (
    cd "$(dirname "${SOURCE}")"
    asy -f svg -o "$(basename "${SOURCE%.asy}")" "$(basename "${SOURCE}")"
  )

  RENDERED_COUNT=$((RENDERED_COUNT + 1))
done

echo "rendered ${RENDERED_COUNT}, up to date ${SKIPPED_COUNT}"

+++
title = 'Installation'
description = 'Clone the library and point Asymptote at it.'
weight = 10
+++

**Requirements:** Asymptote 2.70 or newer, and a LaTeX installation — the
library typesets all of its mathematical notation through LaTeX.

## Clone the repository

Put it anywhere you like:

```bash
git clone https://github.com/jacobhiance/Maximum-Asymptote.git ~/.asy/Maximum-Asymptote
```

## Point Asymptote at it

Asymptote does not search subdirectories of `~/.asy`, so name the clone
explicitly in your configuration file, `~/.asy/config.asy`:

```asy
dir += "/absolute/path/to/Maximum-Asymptote";
```

Use an absolute path — `~` is not expanded here.

## Import it

```asy
import MaximumMathematics;
```

That single import pulls in the theme and every visualization. There is no
build or install step; update with `git pull`.

## Check that it worked

```bash
asy -c 'import MaximumMathematics;'
```

Silence means success. `could not load module` means Asymptote is not finding
the clone — check the path in `config.asy`.

{{% notice style="tip" title="Rendering on macOS with Homebrew" %}}
If Asymptote fails with `PostScript error: undefined in TeXDict` and warnings
about missing `tex.pro` or map files, the cause is Homebrew's standalone
`dvisvgm` formula: it carries its own copy of kpathsea, which resolves paths
relative to its own prefix and so never finds TeX Live's headers. Point the
TeX variables at the TeX Live tree before running `asy`:

```bash
export TEXMFDIST="$(kpsewhich --var-value=TEXMFDIST)"
export TEXMFROOT="$(dirname "$TEXMFDIST")"
export TEXMFCNF="$TEXMFDIST/web2c:"
```
{{% /notice %}}

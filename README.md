# Maximum Mathematics

The Maximum Mathematics website: mathematics textbooks with their problem sets,
and documentation for the
[Maximum Mathematics Asymptote library](https://github.com/jacobhiance/Maximum-Asymptote).

Built with [Hugo](https://gohugo.io/) and the
[Relearn](https://mcshelby.github.io/hugo-theme-relearn/) theme.

## Getting started

The theme is a git submodule, so clone recursively:

```bash
git clone --recurse-submodules <repository-url>
```

If you already cloned without it:

```bash
git submodule update --init --recursive
```

Then run the dev server:

```bash
hugo server
```

Hugo must be the **extended** build (`hugo version` should say `extended`).

## Layout

```
Maximum-Mathematics/
├── config/_default/          # Site configuration, split by concern
├── content/
│   ├── books/                # Textbooks — one section per book
│   ├── asymptote/            # Asymptote library documentation
│   └── authoring/            # How to write pages here; live shortcode test
├── layouts/
│   ├── shortcodes/           # figure, statement
│   ├── partials/             # custom-header.html loads the site stylesheet
│   └── _default/_markup/     # Code-block render hook for .asy fences
├── assets/css/               # Site styles layered over the theme
├── scripts/render-figures.sh # Render every .asy under content/ to SVG
├── .github/workflows/         # deploy.yml: build on push, publish to the VPS
├── deploy/                   # VPS-side setup and scripts: see deploy/README.md
└── themes/hugo-theme-relearn # Submodule, pinned to a release tag
```

## Writing content

[`/authoring`](content/authoring/_index.md) documents front matter, mathematics,
the `statement` shortcode (definitions, theorems, proofs), and the `figure`
shortcode. It is also the live test of both shortcodes — if it renders wrong,
something is broken.

## Figures

Figures are **pre-rendered SVGs committed to the repository**, so building the
site needs neither Asymptote nor LaTeX. Only re-rendering does.

Keep each `.asy` beside the `.svg` it produces, inside the page bundle that uses
it. After editing any source:

```bash
scripts/render-figures.sh
```

That renders only what is stale. Pass `--force` to re-render everything, which
you want after changing the library's theme file.

The script needs Asymptote configured to find the library — see
[the installation page](content/asymptote/installation.md).

## Deploying

Push to `main`; GitHub Actions builds the site with Hugo and force-pushes the
result to the `built` branch. A systemd timer on the VPS notices, pulls it,
and publishes it — the VPS reaches out to GitHub rather than the other way
around, since GitHub Actions runners are blocked from reaching the VPS
directly by something at the hosting provider's network edge. See
[`deploy/README.md`](deploy/README.md) for the full explanation and one-time
VPS setup.

Set the real domain in `config/_default/hugo.toml` before the first deploy —
Hugo bakes `baseURL` into canonical URLs, the sitemap, and the RSS feed.

## Known theme constraint

Relearn 9.0.3 detects table-form parameters by comparing `printf "%T"` against
the literal `"maps.Params"`, but Hugo 0.164 reports that type as
`"hmaps.Params"`. So `math.force`, `mermaid.force`, and `openapi.force` are
silently ignored. The site uses the documented `math = true` alias instead,
which takes a working branch. Revisit on the next theme upgrade.

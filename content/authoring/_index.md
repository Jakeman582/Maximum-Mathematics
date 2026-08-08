+++
title = 'Authoring'
description = 'How pages on this site are written: front matter, mathematics, statements, and figures.'
weight = 90

# Reference material for writing content here, not part of the site's public
# navigation. Kept out of the sidebar tree entirely and has no shortcut link
# — still reachable directly at /authoring/, and still doubles as the live
# test for the statement/figure shortcodes during local development.
[params]
  hidden = true
+++

Reference for writing content on this site. This page is also the live test of
every custom shortcode — if something here renders wrong, the shortcode is
broken.

## Front matter

Pages use TOML front matter delimited by `+++`.

```toml
+++
title = 'Limits and Continuity'
description = 'One sentence, shown in section listings and search results.'
weight = 30
chapter = 2
+++
```

| Key | Effect |
|---|---|
| `title` | Page title, sidebar entry, browser tab |
| `description` | Shown in parent-section listings and search results |
| `weight` | Sidebar ordering within its section; lower sorts first |
| `chapter` | Prefixes statement numbers on the page, e.g. Theorem 2.4 |
| `type = 'chapter'` | Renders as a section landing page rather than an article |
| `draft = true` | Excluded from builds unless `hugo -D` |

Start new pages from an archetype rather than by hand:

```bash
hugo new content books/calculus/limits.md
```

```bash
hugo new content books/calculus/_index.md --kind chapter
```

## Mathematics

Write LaTeX directly. `$...$` is inline, `$$...$$` is displayed, and MathJax
loads on every page.

The Euler identity $e^{i\pi} + 1 = 0$ sits inline in the sentence. A displayed
equation gets its own line:

$$\int_a^b f'(x)\,dx = f(b) - f(a)$$

Long displayed equations scroll within their own box rather than forcing the
whole page sideways on a phone.

Because Goldmark passes `$...$` through untouched, backslashes and underscores
inside mathematics need no escaping: `$a_1 + a_2$` gives $a_1 + a_2$, not
italics.

## Statements

`statement` renders a numbered definition, theorem, example, or proof. The body is
parsed as Markdown, so mathematics and emphasis work inside it:

```markdown
{{</* statement kind="theorem" name="Fundamental Theorem of Calculus" */>}}
If $f$ is continuous on $[a, b]$ and $F$ is any antiderivative of $f$, then
$$\int_a^b f(x)\,dx = F(b) - F(a).$$
{{</* /statement */>}}
```

Which renders as:

{{< statement kind="definition" name="Continuity at a point" >}}
A function $f$ is **continuous at $c$** if $\lim_{x \to c} f(x) = f(c)$ — which
requires that $f(c)$ is defined, that the limit exists, and that the two agree.
{{< /statement >}}

{{< statement kind="theorem" name="Fundamental Theorem of Calculus" >}}
If $f$ is continuous on $[a, b]$ and $F$ is any antiderivative of $f$, then
$$\int_a^b f(x)\,dx = F(b) - F(a).$$
{{< /statement >}}

{{< statement kind="proof" >}}
Define $G(x) = \int_a^x f(t)\,dt$. By the first part of the theorem $G' = f$,
so $G$ and $F$ are antiderivatives of the same function and differ by a
constant. Then $F(b) - F(a) = G(b) - G(a) = \int_a^b f(x)\,dx$.
{{< /statement >}}

{{< statement kind="example" >}}
The function $f(x) = 1/x$ is continuous at every $c \neq 0$, and is not
continuous at $0$ for the simplest possible reason: $f(0)$ is undefined.
{{< /statement >}}

### Parameters

| Parameter | Purpose |
|---|---|
| `kind` | `definition`, `theorem`, `lemma`, `corollary`, `proposition`, `example`, `exercise`, `notation`, `remark`, `proof` |
| `name` | Optional italicised name shown in parentheses after the number |
| `number` | Explicit number; omit to take the next number on the page |
| `id` | Explicit HTML id for cross-references; defaults to `kind-number` |

### Numbering

Every numbered kind shares **one counter per page**, so a page reads Definition
1, Theorem 2, Example 3. That is the usual textbook convention, and it keeps a
cross-reference unambiguous without having to name its kind.

Set the page's `chapter` front matter to prefix numbers with the chapter —
`chapter = 3` gives Theorem 3.2.

Proofs and remarks are never numbered; a proof belongs to the statement above
it.

## Figures

Figures are **pre-rendered SVGs committed to the repository**. The site build
never runs Asymptote, so deploying needs neither Asymptote nor LaTeX installed.

Keep the `.asy` source and its `.svg` output together in the page bundle:

```
content/books/calculus/riemann-sums/
├── index.md
├── left-sum.asy
└── left-sum.svg
```

Then reference the SVG by name:

```markdown
{{</* figure src="left-sum.svg"
           title="Figure 1:"
           caption="A left Riemann sum for $f(x) = x^2$."
           source="left-sum.asy" */>}}
```

| Parameter | Purpose |
|---|---|
| `src` | SVG filename; a page resource first, then a site asset |
| `title` | Bold caption lead-in, e.g. `"Figure 1:"` |
| `caption` | Caption body; LaTeX between `$...$` is rendered |
| `source` | `.asy` filename to show in a collapsible block |
| `alt` | Accessible description; falls back to caption, then title |
| `width` | CSS width, e.g. `"60%"` |

Passing `source` puts an **Asymptote source** disclosure under the figure —
worth doing on any figure a reader might want to adapt. There is a live
example on the [Asymptote Library]({{% relref "/asymptote" %}}) page.

A missing `src` or `source` fails the build rather than rendering a broken
image.

### Re-rendering

After editing any `.asy` under `content/`:

```bash
scripts/render-figures.sh
```

That renders only sources whose SVG is missing or older than the source. Pass
`--force` to re-render everything, which you want after changing the library's
theme file.

## Notices

The theme's `notice` shortcode covers asides:

{{% notice style="tip" title="A tip" %}}
Use `style="tip"`, `"note"`, `"info"`, `"warning"`, or `"primary"`.
{{% /notice %}}

{{% notice style="warning" title="A warning" %}}
Reserve warnings for things that will actually cost the reader time.
{{% /notice %}}

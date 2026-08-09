# CLAUDE.md

Guidance for working on the Maximum Mathematics website (this repository).
For how the site is built, deployed, and structured, see
[README.md](README.md) and [deploy/README.md](deploy/README.md). This file is
about the *content* authoring conventions — the things a future session needs
to know to write a page the same way every other page on this site is written.

## Notice types

Every book uses the same six notice boxes for the same purposes, always. Don't
invent a one-off variant for a new page — if none of these fit, that's worth
raising with the user rather than deciding alone.

The two reference pages split by audience, not by content:
[`/style-guide`](content/style-guide/_index.md) is for readers of the books —
what each box looks like and means, no shortcode syntax at all, since nobody
but the site's author writes content.
[`/authoring`](content/authoring/_index.md) is for whoever is writing that
content — the exact call syntax for every shortcode on the site, notices
included. If you change how a notice shortcode works or looks, update both.

All eight shortcodes (`definition`, `theorem`, `proof`, `example`, `star`,
`warning`, `question`, `answer`) live in `layouts/shortcodes/`, share their box
rendering through `layouts/partials/_mm/notice-box.html`, and are called with
the **angle-bracket** delimiter (`{{< ... >}}`), never percent — their body is
explicitly rendered as Markdown in the template, so percent-form would route
the shortcode's own wrapper HTML back through Goldmark, which strips it (raw
HTML is disabled in Markdown source; see "Why raw HTML stays disabled" below).
Colors live in `assets/css/maximum-mathematics.css` under `.mm-notice--<kind>`.

| Type | Color | Title bar shows | Body |
|---|---|---|---|
| **Definition** | Light blue | Term(s) being defined, in capitals | The definition, as prose |
| **Theorem** + **Proof** | Fuchsia | `Theorem <chapter>.<section>.<n>` plus a sentence fragment stating the result, e.g. "Theorem 2.1.3: Every prime greater than 2 is odd"; the paired `Proof <chapter>.<section>.<n>` reuses the same number | Statement, then a separate `proof` call right after — collapsed until clicked |
| **Example** | Light green | What's being demonstrated ("Tossing two dice," not "Example 1") | The worked example |
| **Star** | Yellow | The observation itself | Why it matters / what follows from it |
| **Warning** | Red | The pitfall being flagged | How the mistake happens and how to avoid it |
| **Question** + **Answer** | Gray | Just "Question N" — numbered automatically from 1, own counter, resets every page | The problem, then a separate `answer` call right after — collapsed until clicked, labeled "Solution" |

Usage notes:

- `theorem`/`example`/`star`/`warning` take a required `title` param (a string,
  not numbered — for `theorem` this is the sentence fragment, the number is
  automatic). `definition` takes `terms` — a comma-separated list, natural
  case; the shortcode capitalizes them for the title bar itself.
- `proof` and `answer` take no params. Place them immediately after the
  `theorem`/`question` they belong to — there's no explicit link between the
  pair beyond that adjacency, so don't separate them with other content, and
  never put a second theorem between a theorem and its proof: `proof` doesn't
  count itself, it reuses whichever theorem's count was most recently
  incremented.
- `theorem`'s number restarts at 1 on every page and is prefixed by the page's
  `chapter`/`section` front matter (`section` alone has no effect; both must
  be set to get the three-part form) — set neither and it's just "Theorem 1".
  This numbering is independent of `statement`'s, which only ever uses
  `chapter`, never `section`.
- Highlight a defined term inline, anywhere on the page — not just inside its
  own `definition` box — by wrapping it in `==double equals signs==`
  (Goldmark's `mark` extension, restyled from the default yellow highlight to
  match `definition`'s blue). This is deliberately *not* a shortcode: see the
  next section for why.

### Why raw HTML stays disabled, and what that means for new shortcodes

`config/_default/markup.toml` sets `goldmark.renderer.unsafe = false` — raw
HTML in Markdown source is stripped, sitewide, on purpose. This has a
consequence worth knowing before adding a new shortcode: if shortcode A's body
gets explicitly re-rendered as Markdown (via `.Page.RenderString`, the pattern
every notice shortcode and `statement` use to get real Markdown/math support
inside a custom HTML wrapper), and shortcode A's body contains a *nested* call
to shortcode B that itself outputs raw HTML, B's output gets silently
stripped — it's raw HTML sitting in what RenderString treats as fresh Markdown
source. This bit us building the `dfn` shortcode (nesting it inside
`definition` silently ate its `<span>`), which is why term-highlighting is
`==mark==` syntax instead: native Goldmark syntax doesn't have this problem,
since there's no raw HTML to strip in the first place — RenderString renders
it correctly on every pass, however deeply nested. If a future shortcode needs
to nest inside another shortcode's body, prefer extending Goldmark (a
passthrough delimiter, an extension) over emitting raw HTML from the inner one.

### Also available

- `statement` (`layouts/shortcodes/statement.html`) — numbered
  definition/theorem/lemma/proof, no color box, shares one counter per page.
  Predates the notice types above and serves a different purpose (a running
  numbered list, like a textbook's "Theorem 4.2") rather than a flagged aside.
  Don't use it for new content without checking with the user first — it may
  be consolidated with the notice types later.
- `figure` (`layouts/shortcodes/figure.html`) — embeds a pre-rendered Asymptote
  SVG with a caption and an optional collapsible source block.
- Front matter `[params] hidden = true` keeps a page out of the main sidebar
  tree everywhere except while a reader is actually browsing inside it (or one
  of its descendants) — used for `/books`, `/asymptote`, `/style-guide`, and
  `/authoring`, which are reached via the shortcuts at the bottom of the
  sidebar (`config/_default/menus.toml`) instead of the tree.

Full syntax reference for front matter, math, and figures — not just
notices — is at [`/authoring`](content/authoring/_index.md).

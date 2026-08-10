# CLAUDE.md

Guidance for working on the Maximum Mathematics website (this repository).
For how the site is built, deployed, and structured, see
[README.md](README.md) and [deploy/README.md](deploy/README.md). This file is
about the *content* authoring conventions — the things a future session needs
to know to write a page the same way every other page on this site is written.

## Adding a new book

Every book is `content/books/<slug>/_index.md`. Its front matter is
boilerplate — set it up exactly like this for every new book, filling in only
`title`, `description`, `weight`, and the two `<slug>` placeholders (which
must match the book's own directory/URL):

```toml
+++
title = 'Book Title'
description = 'One sentence, shown on the /books gallery card.'
type = 'chapter'
weight = 10

[params]
  cover = 'cover-image-filename.png'   # resolved against
                                        # assets/images/book-covers/

[cascade.params]
  sidebarmenus = [
    { type = 'page', identifier = 'main', pageRef = '/books/<slug>' },
    { type = 'menu', identifier = 'shortcuts' },
  ]
+++
```

What each piece is for:

- `type = 'chapter'` — the book's chapters/sections nest under it as ordinary
  content pages.
- `[params] cover` — a filename only, resolved against
  `assets/images/book-covers/` (add the actual image file there first). Drives
  two things: the `/books` gallery card (`layouts/shortcodes/book-gallery.html`)
  and, while browsing inside the book, the sidebar's full-bleed hero image in
  place of the site title (`layouts/partials/logo.html`).
- `[cascade.params] sidebarmenus` — scopes the *main* sidebar tree (not the
  MORE section, which stays untouched) to this book's own table of contents
  instead of the whole site's page tree, for every page inside the book no
  matter how deeply nested. The `pageRef` has to repeat the book's own path —
  Hugo's cascade has no way to self-reference the page that sets it.

## Chapters and front-matter pages

A chapter is `content/books/<slug>/<chapter-slug>/_index.md`:

```toml
+++
title = 'Chapter Title'
type = 'chapter'
weight = 1   # 1 for the first chapter, 2 for the second, etc.

[cascade.params]
  chapter = 1   # same number as weight, cascades to this chapter's own
                # sections for theorem/proof numbering (see "Notice types"
                # below)
+++
```

`weight` *is* the displayed chapter number (`layouts/chapter/article.html`
labels the page "Chapter `<weight>`") — always sequential starting at 1, never
the "leave gaps of 10" spacing used for books on `/books`, since gaps here
would show up as skipped chapter numbers.

A front-matter-style page — a table of contents, preface, acknowledgments,
anything that belongs before Chapter 1 but isn't itself a numbered chapter —
skips the number instead:

```toml
+++
title = 'Table of Contents'
type = 'chapter'
weight = -10   # negative, so it sorts before Chapter 1 without needing to
               # renumber any real chapter to make room

[params]
  frontmatter = true   # suppresses the "Chapter <N>" label
+++
```

Give each front-matter page its own negative weight (e.g. -10, -20) if a book
ends up with more than one, so their relative order is deliberate.

A section is `content/books/<slug>/<chapter-slug>/<section-slug>/_index.md` —
its own folder, one level inside its chapter's own directory, even though a
section has no children of its own. The folder exists so the section's
images and other resources have somewhere to live alongside it, colocated
rather than in a separate site-wide assets tree.

```toml
+++
title = 'Section Title'
type = 'chapter'
weight = 1   # 1 for this chapter's first section, 2 for its second, etc. —
             # its own sequential count, unrelated to the chapter's weight

[params]
  section = 1   # same number as weight; combines with the chapter's
                # cascaded `chapter` param for theorem/proof numbering (see
                # "Notice types" below) and suppresses the "Chapter <N>"
                # label a section page would otherwise wrongly inherit from
                # its own weight
+++
```

On a book's table of contents page, a chapter's planned sections are a
numbered sub-list nested directly under that chapter's own list item:

```markdown
1. [Chapter Title]({{% relref "/books/<slug>/<chapter-slug>" %}})
   1. Section One
   2. Section Two
   3. Section Three
2. Next Chapter Title
```

Indent sub-items three spaces (aligning with the text after "1. ") so
Goldmark treats them as nested rather than breaking the outer list. This
sub-list renders smaller than the chapter list itself (`article.chapter ol
ol` in `assets/css/maximum-mathematics.css`) so the two levels read as
distinct.

## Math typesetting

Regular expository prose stays plain Markdown — a page doesn't need LaTeX
just because the topic is mathematical. LaTeX is reserved for the actual
mathematical objects being referenced, not the discussion around them:

- A specific variable, proposition, set, function, or symbolic expression —
  even a single bare letter — gets inline math: `$p$`, `$x$`, `$p \land q$`.
  Never leave one as plain text ("the proposition p" should read "the
  proposition $p$").
- A full statement being presented *as* an actual proposition (not just
  mentioned in passing) gets typeset in its entirety via `\text{}` inside a
  math environment: `$$\text{Squares have four equal sides.}$$` for one
  standalone statement, or a `\[ \begin{array}{ll} ... \end{array} \]` block
  when several need to line up together, e.g. a list of labeled example
  propositions and their truth values. See
  `content/books/foundational-mathematics/logic/propositions/_index.md` for
  a fully worked example of both.
- Prose *about* mathematics that isn't itself presenting a specific object —
  "we can start to evaluate these expressions by examining simple
  expressions" — stays ordinary text, no math markup at all.

The rule doesn't change inside a notice box: an example proposition inside an
`example` box is LaTeX; the sentence introducing that box is plain Markdown,
except for whichever variable names it happens to mention in passing.

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
| **Question** + **Answer** | Gray | Just "Question N" — numbered automatically from 1, resets every page; the paired "Solution N" reuses the same number | The problem, then a separate `answer` call right after — collapsed until clicked |

Usage notes:

- `theorem`/`example`/`star`/`warning` take a required `title` param (a string,
  not numbered — for `theorem` this is the sentence fragment, the number is
  automatic). `definition` takes `terms` — a comma-separated list, natural
  case; the shortcode capitalizes them for the title bar itself.
- `proof` and `answer` take no params. Place them immediately after the
  `theorem`/`question` they belong to — there's no explicit link between the
  pair beyond that adjacency, so don't separate them with other content, and
  never put a second theorem/question in between: neither counts itself,
  each reuses whichever theorem's/question's count was most recently
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

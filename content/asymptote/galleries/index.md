+++
title = 'Galleries'
description = 'Several visualizations arranged in a grid, with per-cell captions.'
weight = 50
+++

`Gallery` arranges several visualizations in a grid. Every cell is the same
visual size and can carry its own caption. Like
[`Image`]({{% relref "/asymptote/images" %}}), a gallery **renders
automatically** as you add to it — you never call a render function.

```asy
Gallery gallery = Gallery(1, 3, visual_width=5, visual_height=6);
gallery.set_margin(0.5);
gallery.set_padding(0.3);
gallery.set_caption_height(0.8);

gallery.add(injective, 0, 0, "Injective");
gallery.add(surjective, 0, 1, "Surjective");
gallery.add(bijective, 0, 2, "Bijective");

// Gallery-wide caption, set after the cells — this re-renders automatically.
gallery.caption_title("Figure 1:");
gallery.caption_text("Three kinds of relations between two sets.");
```

{{< figure src="relation-types.svg"
           alt="A one-by-three gallery of relation diagrams, each cell captioned, with a caption beneath the whole grid."
           caption="A 1 × 3 gallery. The per-cell captions and the caption under the grid are both drawn by `Gallery` itself."
           source="relation-types.asy" >}}

## Visual width and height

These describe **one visual within the grid**, not the whole gallery.

Every cell reserves the same box: `visual_width` is how wide each individual
visual is, `visual_height` how tall. The gallery grows from those — its total
size is the visuals laid out across `rows × cols`, plus padding, margins, cell
captions, and the gallery caption zone.

Set them in the constructor or afterwards with `set_visual_width` and
`set_visual_height`, but set them **before** adding visuals: each visual is
rendered to the stored size at the moment you call `add()`.

Set gallery-wide options such as the caption **last**; they re-render the
gallery to pick up the change.

## Methods

| Method | Purpose |
|---|---|
| `Gallery(rows, cols, visual_width=5, visual_height=4)` | Create the grid |
| `add(RelationDiagram, row, col, caption="")` | Place a relation diagram in a cell |
| `add(picture, row, col, caption="")` | Place any pre-rendered picture in a cell |
| `set_margin / set_padding(v)` | Grid spacing |
| `set_visual_width / set_visual_height(v)` | Size of each visual; set before `add` |
| `set_caption_height / set_cell_caption_height(h)` | Caption zone heights |
| `caption_title / caption_text(text)` | Gallery-wide caption |
| `set_background_color(pen)`, `set_debug_mode(bool)` | Styling and debug |

## Other visualizations in a cell

`Gallery` accepts a `RelationDiagram` directly. Everything else must be
[rendered to a picture]({{% relref "/asymptote/standalone-rendering" %}}) first:

```asy
TruthTable table = TruthTable(variables, column_labels, evaluators);
gallery.add(table.render(4, 3, 1cm), 0, 1, "Truth table");
```

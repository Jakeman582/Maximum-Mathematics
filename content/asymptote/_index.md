+++
title = 'Asymptote Library'
description = 'Draw mathematical figures with consistent styling, using the same library every figure on this site is drawn with.'
weight = 20
+++

Every figure on this site is drawn with this library. It is free to use in your
own work, and this section is its complete documentation.

[Asymptote](https://asymptote.sourceforge.io/) is a vector graphics language
with real mathematical typesetting behind it. It is powerful, and it is also
verbose: a figure as ordinary as "two sets with arrows between them" is a
hundred lines of layout arithmetic. This library supplies the layout so you
only supply the mathematics.

## The shape of every figure

Three steps, always in the same order:

1. **Create a visualization** and configure its data.
2. **Create an [`Image`]({{% relref "/asymptote/images" %}})** and configure its
   size, margins, and caption.
3. **Add the visualization to the image** with `image.add(visualization)`.

That last step renders automatically. You never call a render, draw, or output
function — the one exception being
[standalone rendering]({{% relref "/asymptote/standalone-rendering" %}}), where
you deliberately want the bare visualization without an enclosing image.

```asy
import MaximumMathematics;

// 1. Create and configure a visualization
RelationDiagram diagram = RelationDiagram();
diagram.add_set(new string[] {"1", "2", "3"}, "A");
diagram.add_set(new string[] {"a", "b", "c"}, "B");
diagram.add_relation(0, 1, new pair[] {(0,0), (1,1), (2,2)});

// 2. Create and configure an image
Image img = Image();
img.set_diagram_padding(0.5);
img.caption_title("Figure 1:");
img.caption_text("A bijection between two sets.");

// 3. Add — this renders automatically
img.add(diagram);
```

There are no configuration structs and no wrapper types. You configure
everything through setter methods on the object itself.

## Sections

{{% children type="list" depth="1" description="true" %}}

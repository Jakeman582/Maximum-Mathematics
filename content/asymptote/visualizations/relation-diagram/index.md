+++
title = 'RelationDiagram'
description = 'Functions, relations, and mappings between sets.'
weight = 10
+++

Functions, relations, and mappings between sets — the arrow diagrams that show
what a map does to each element.

{{< figure src="bijection.svg"
           title="Figure 1:"
           caption="A bijection between $A$ and $B$."
           source="bijection.asy" >}}

## Building a diagram

Sets are laid out left to right in the order you add them, evenly distributed
across the width. Relations connect **neighbouring** sets by element index:
each `pair` is `(source_index, target_index)`.

```asy
RelationDiagram diagram = RelationDiagram();
diagram.add_set(new string[] {"1", "2", "3"}, "A");
diagram.add_set(new string[] {"a", "b", "c"}, "B");
diagram.add_set(new string[] {"u", "v", "w"}, "C");

diagram.add_relation(0, 1, new pair[] {(0,0), (1,1), (2,2)});   // A -> B
diagram.add_relation(1, 2, new pair[] {(0,1), (1,2), (2,0)});   // B -> C

Image img = Image(12, 8);
img.set_diagram_padding(0.5);
img.add(diagram);
```

{{< figure src="composition.svg"
           title="Figure 2:"
           caption="Two relations composed across three sets."
           source="composition.asy" >}}

Indices are zero-based and refer to position within the set, so `(1, 2)` on the
relation `B -> C` means "the second element of $B$ maps to the third element of
$C$."

## Methods

| Method | Purpose |
|---|---|
| `RelationDiagram()` / `RelationDiagram(sets, names)` | Empty, or seeded with `string[][]` sets and `string[]` names |
| `add_set(elements, name="", width=0)` | Add one set; `width=0` auto-sizes it |
| `add_sets(sets, names={}, widths={})` | Add several sets at once |
| `set_width(set_index, width)` | Fix one set's width |
| `add_relation(from_set, to_set, pairs)` | Arrows between two sets, by element index |
| `set_debug_mode(bool)` | Draw zones and boundaries |

{{% notice style="tip" title="Give it room" %}}
A relation diagram distributes its elements evenly across the available
height. Cram three elements into a short image and the labels collide. If a
diagram looks wrong, increase the image height before suspecting anything
else.
{{% /notice %}}

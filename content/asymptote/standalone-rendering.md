+++
title = 'Standalone Rendering'
description = 'Getting a bare visualization without an enclosing Image.'
weight = 60
+++

Adding a visualization to an [`Image`]({{% relref "/asymptote/images" %}})
renders it automatically. If you want the visualization on its own — to place
it in a [gallery cell]({{% relref "/asymptote/galleries" %}}), or to compose it
into a larger picture by hand — call `render(width, height, unit)` yourself and
add the picture it returns.

This is the one place in the library where you render explicitly.

```asy
RelationDiagram diagram = RelationDiagram();
diagram.add_set(new string[] {"1", "2"}, "A");
diagram.add_set(new string[] {"a", "b"}, "B");
diagram.add_relation(0, 1, new pair[] {(0,0), (1,1)});

picture p = diagram.render(8, 6, 1cm);   // width, height in cm, then the unit
add(currentpicture, p);
```

Every visualization implements the same `render(width, height, unit)` contract
and lays itself out to fill the given area. That uniformity is what lets a
gallery hold a truth table and a plot side by side without knowing anything
about either.

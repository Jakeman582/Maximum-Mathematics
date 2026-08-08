+++
title = 'Visualizations'
description = 'Relation diagrams, truth tables, accumulation tables, and plots.'
weight = 30
+++

Each visualization is created with a constructor, refined with fluent methods,
and added to an [`Image`]({{% relref "/asymptote/images" %}}).

LaTeX math is supported in every label. Use a **single** backslash in `.asy`
strings — `"$\land$"`, not `"$\\land$"`.

Every visualization also implements the same
[`render(width, height, unit)`]({{% relref "/asymptote/standalone-rendering" %}})
contract, laying itself out to fill whatever area it is given.

{{% children type="list" depth="1" description="true" %}}

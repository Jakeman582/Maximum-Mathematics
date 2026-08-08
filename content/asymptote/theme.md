+++
title = 'Styling and Typography'
description = 'The shared pens, colours, and type scale — and how to replace them.'
weight = 80
+++

Global pens, colours, and typography live in
`Theme/MaximumMathematicsTheme.asy` and are shared by every visualization.
`MaximumMathematics.asy` itself is only an aggregator: it includes the theme
and every module, with no styling of its own.

That separation is the point. Swapping in an alternate theme file restyles the
entire library without touching a line of visualization code.

## What the theme defines

| Group | Names |
|---|---|
| **Brand colours** | `brand_color_1` (blue), `brand_color_2` (orange) |
| **Table colours** | `table_header`, `table_sub_header` |
| **Graph colours** | `axis_color`, `grid_color`, `function_color_1`, `function_color_2` |
| **Typography** | `header_1`, `header_2`, `header_3`, `text_large`, `text_normal`, `text_small` |

The typography names are plain `pen`s, so they compose anywhere a pen is
expected:

```asy
label("Section", position, header_2 + bold);
```

[`Plot`]({{% relref "/asymptote/visualizations/plot" %}}) colours its functions
through `plot_function_colors(n)`, which sweeps hue from red to violet in HSV
space rather than picking from a fixed list — which is why the palette divides
sensibly no matter how many functions you add.

## Using your own colours

Full Asymptote colour and pen support is available anywhere the library takes a
pen:

```asy
img.set_background_color(rgb(0.98, 0.98, 1.0));
p.add(f, color=RGB(200, 40, 90));
```

## Project structure

```
Maximum-Asymptote/
├── MaximumMathematics.asy            # Entry point: includes the theme and every module
│
├── Theme/
│   └── MaximumMathematicsTheme.asy   # Colours, pens, layout constants, typography
│
├── Utilities/
│   ├── TextWrapping.asy              # Caption and text wrapping
│   ├── TextMeasurement.asy           # True (LaTeX) text size measurement
│   ├── TextSetWidth.asy              # Set-width helpers
│   ├── FunctionTypes.asy             # Function type aliases (real_function_1, ...)
│   ├── Functions/
│   │   ├── Line.asy                  # Line: general line, implicit_2-ready
│   │   └── Conic.asy                 # Conic: general conic section, implicit_2-ready
│   ├── DefaultFunctions.asy          # identity, square
│   ├── AxisTicks.asy                 # Shared tick computation
│   ├── Image.asy                     # Image: canvas, zones, captions, auto-render
│   └── Gallery.asy                   # Gallery: grid layout
│
├── Visualizations/
│   ├── RelationDiagram.asy
│   ├── TruthTable.asy
│   ├── AccumulationTable.asy
│   ├── ContinuousPlot.asy            # Plot is a typedef alias for ContinuousPlot
│   └── DiscretePlot.asy
│
└── Examples/                         # Runnable examples, grouped by visualization
```

`import MaximumMathematics;` pulls in all of it.

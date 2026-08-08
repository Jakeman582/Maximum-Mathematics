+++
title = 'DiscretePlot'
description = 'Step and bar plots for Riemann sums and discrete accumulation.'
weight = 50
+++

A discrete step plot, sampling a function at the left, middle, or right of each
interval. Useful for Riemann-sum and accumulation illustrations — the discrete
counterpart to [`Plot`]({{% relref "/asymptote/visualizations/plot" %}})'s
smooth curves.

```asy
real value(real x) { return 1000 * exp(log(1.05) * x); }

DiscretePlot g = DiscretePlot(1, 0, "left", 8, value);
g.set_window(-0.5, 8.5, 0, 0);   // ymin == ymax leaves the y-window automatic

Image img = Image(12, 6);
img.set_diagram_padding(0.5);
img.add(g);
```

{{< figure src="riemann.svg"
           title="Figure 1:"
           caption="Discrete accumulation, sampled once per period."
           source="riemann.asy" >}}

The `anchor` argument decides where within each interval the function is
sampled: `"left"` underestimates an increasing function, `"right"`
overestimates it, and `"mid"` splits the difference. Which one you pick is
usually the point of the figure.

Passing equal minimum and maximum for an axis in `set_window` leaves that axis
automatic, which is why the example above pins the $x$-window but lets the
$y$-window compute itself from the sampled values.

## Methods

| Method | Purpose |
|---|---|
| `DiscretePlot(dx=1, first_x=0, anchor="left", steps=10, func=identity, xmin=0, xmax=0, ymin=0, ymax=0)` | Build and sample |
| `set_dx / set_first_x / set_steps(...)` | Change the sampling geometry |
| `set_anchor("left" \| "mid" \| "right")` | Where each interval is sampled |
| `set_function(func)` | Replace the function and re-sample |
| `set_window(xmin, xmax, ymin, ymax)` | Set the view; equal min and max leaves that axis automatic |
| `set_debug_mode(bool)` | Draw bounds |

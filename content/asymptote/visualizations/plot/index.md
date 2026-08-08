+++
title = 'Plot'
description = 'Continuous function graphs — explicit and implicit, on one set of axes.'
weight = 40
+++

A continuous function graph: the smooth curve you would draw in a high-school
or calculus class. `Plot` handles two kinds of function on the same axes, in
whatever order you add them:

- **Explicit** — $y = f(x)$, sampled along $x$ and connected point to point.
- **Implicit** — a relation $f(x, y) = 0$, traced with Asymptote's `contour` module.

```asy
real cube(real x) { return x^3; }                      // explicit
real circle(real x, real y) { return x^2 + y^2 - 9; }  // implicit

Plot p = Plot(-4, 4);
p.set_window(-4, 4, -4, 4);
p.add(cube);
p.add(circle, color=red, type=DASHED);

Image img = Image(10, 10);
img.set_diagram_padding(0.5);
img.add(p);
```

{{< figure src="cubic-and-circle.svg"
           title="Figure 1:"
           caption="$y = x^3$ and $x^2 + y^2 = 9$ on one Plot."
           source="cubic-and-circle.asy" >}}

`add()` tells the two apart by the function's own type. `cube` takes one
`real`, so it is sampled along $x$; `circle` takes two, so its $f(x, y) = 0$
curve is traced instead.

Define your functions with the plain `real` return type, not the
`real_function_1` or `implicit_2` aliases — those name *parameter and variable*
types, and are not sugar for a function definition's return type.

`Plot` is a `typedef` alias for the underlying `ContinuousPlot` struct. The two
names are interchangeable everywhere; this page uses `Plot`.

## Methods

| Method | Purpose |
|---|---|
| `Plot(x_min=-5, x_max=5)` | Build the plot; also the default window left and right |
| `add(f, color=AUTO_COLOR, type=SOLID, label="", left_marker=AUTO, right_marker=AUTO, samples=200, x_min, x_max)` | Add an explicit function |
| `add(f, color=AUTO_COLOR, type=SOLID, label="", nx=100, ny=nx, x_min, x_max, y_min, y_max)` | Add an implicit function |
| `legend(height=0)` | Build a standalone legend picture |
| `set_window_left / set_window_right / set_window_bottom / set_window_top(real)` | Override one viewport edge |
| `set_window(left, right, bottom, top)` | Set all four viewport edges at once |
| `set_grid_delta_x / set_grid_delta_y(real)` | Change one grid spacing |
| `set_grid(delta_x=1, delta_y=1)` | Set both grid spacings and turn the grid on |
| `set_grid_mode(bool)` | Turn the grid on or off without changing its spacing |
| `set_margin_left / set_margin_right / set_margin_top / set_margin_bottom(real)` | Override one margin, default `1` |
| `set_margins(real)` | Set all four margins to the same value |
| `set_margins(left, right, top, bottom)` | Set all four margins independently |
| `set_debug_mode(bool)` | Draw bounds |

Which of `add()`'s parameters apply to which kind of function:

| Parameter | Explicit | Implicit | Purpose |
|---|---|---|---|
| `color` | Yes | Yes | Curve colour, or `AUTO_COLOR` to assign from the rainbow palette |
| `type` | Yes | Yes | Line and dash style |
| `left_marker`, `right_marker` | Yes | Not a parameter | What to draw at the curve's true ends |
| `samples` | Yes | Not a parameter | Points sampled across the domain; higher is smoother and slower |
| `nx`, `ny` | Not a parameter | Yes | `contour()`'s search grid resolution; higher resolves thin loops better and is slower |

## The window

The window — left, right, bottom, and top — is the viewport. Left and right
default to `Plot`'s own `x_min` and `x_max`. Bottom and top are always computed
from the sampled $y$-values of **explicit functions only**, with padding,
unless you override them.

A plot of nothing but implicit functions therefore has nothing to compute its
vertical extent from, and needs its window set explicitly.

## Colours

By default every added function is auto-coloured from the rainbow palette: the
red-to-violet gradient is divided into as many zones as there are functions,
explicit and implicit together, and each function takes the middle colour of
its zone.

Pass any ordinary Asymptote pen as `color` to pin a specific function instead:

```asy
Plot p = Plot(-3, 3);
p.add(f, color=red);  // f keeps exactly this colour
p.add(g);              // g and h are auto-coloured, dividing the rainbow
p.add(h);              // between just the two of them
```

An explicitly coloured function is excluded from the rainbow's zone count
entirely, so the remaining auto-coloured functions still spread across the full
gradient rather than losing a slot to a colour they never use.

## Line types

`type` sets the curve's dash pattern, independently of `color`:

| Constant | Pattern |
|---|---|
| `SOLID` | Solid, the default |
| `DOTTED` | Dotted |
| `DASHED` | Dashed |
| `LONG_DASHED` | Long dashes |
| `DASH_DOTTED` | Dash-dot |
| `LONG_DASH_DOTTED` | Long dash-dot |

{{% notice style="warning" title="Always name `color` and `type`" %}}
Both are plain `pen` values in the same `add(f, color=AUTO_COLOR, type=SOLID, ...)`
signature, so Asymptote can only tell them apart by position or by name — and
`color` is the first `pen` slot. A bare positional pen therefore always fills
`color`, never `type`:

```asy
p.add(f, type=DASHED);              // fine: named
p.add(f, DASHED);                    // WRONG: sets color, not type
p.add(f, type=DASHED, color=red);   // fine: order does not matter once named
```

`p.add(f, DASHED)` compiles cleanly and renders a **solid black** curve, since
`DASHED` carries no colour of its own. There is no error — just the wrong
picture. Naming both arguments sidesteps this entirely.
{{% /notice %}}

The line type applies to the curve only. Endpoint markers are always drawn with
a solid outline.

## The grid

Off by default. `set_grid(delta_x, delta_y)` turns it on and sets the spacing in
one call; both default to `1`.

```asy
Plot p = Plot();
p.set_window(-1, 10, -1, 10);
p.set_grid(2, 2);
p.add(f, color=blue, type=LONG_DASH_DOTTED);
```

{{< figure src="grid.svg"
           title="Figure 2:"
           caption="$y = x^3 - 3x^2 + 2x - 1$ over a grid spaced every 2 units."
           source="grid.asy" >}}

Grid lines are spaced out from $0$ — or from the window's edge, if $0$ is not in
view — every `delta_x` and `delta_y`. A visible axis's own position is not
redrawn as a grid line. Lines are always bounded by the window, drawn in the
theme's `grid_color` and `grid_thickness`, underneath the axes and curves.

`set_grid_mode(false)` turns the grid off again without losing the spacing you
set.

## Layout and axes

The graph itself — axes, grid, curves — is drawn inside a **square**, inset from
the plot's render area by a margin on each side (`1` by default). The square is
the largest that fits once the margins are subtracted, so nothing a `Plot` draws
can land outside the area `Image` gave it. The margins exist specifically to
hold tick labels, which always live outside the square. Widen a margin if your
tick labels are unusually wide and start crowding the edge.

The square's border is drawn last, after every function, so a curve running up
to the window's edge sits underneath the border rather than on top of it.

Tick marks and their number labels always sit at the square's four edges —
$y$-values on the left, $x$-values on the bottom, pointing outward into the
margin — regardless of where the data axis itself falls. Every tick is labelled,
including $0$.

A data axis line, arrow-tipped, is drawn only when its value actually falls
inside the window. An all-positive window like $[5, 10]$ gets no $y$-axis line
at all, just the ordinary edge ticks. When an axis is drawn it also gets small
unlabelled crossing-ticks along it, since the edge already carries the labels.
When both axes are visible, their intersection gets a single `0` label of its
own, tucked diagonally into whichever quadrant encloses the least area.

## Endpoint markers

Explicit functions only.

A function's true leftmost and rightmost **visible** points get a marker —
wherever the curve actually starts and ends, whether that is the domain edge,
a window boundary, or a gap where the function is undefined, such as `log` or
`sqrt` of a negative number.

| Constant | Left end | Right end |
|---|---|---|
| `ARROW` (the `AUTO` default) | Arrow pointing left | Arrow pointing right |
| `OPEN_DOT` | Hollow circle | Hollow circle |
| `CLOSED_DOT` | Filled circle | Filled circle |
| `OPEN_INTERVAL` | `(` | `)` |
| `CLOSED_INTERVAL` | `[` | `]` |
| `NONE` | Nothing | Nothing |

```asy
Plot p = Plot(-2, 10);
p.add(sqrt, x_min=0, x_max=10, left_marker=CLOSED_DOT);
```

{{< figure src="markers.svg"
           title="Figure 3:"
           caption="$\sqrt{x}$ with a closed dot at the origin — $\sqrt{0} = 0$ is defined, which the default arrow would misrepresent."
           source="markers.asy" >}}

Every other cut in between — an interior window-boundary crossing, or the curve
resuming after a gap partway through the domain — draws with no marker,
regardless of what you pass. Only the two outermost ends are ever eligible.

An `ARROW`-marked end has its curve trimmed back by the theme's
`plot_arrow_trim`, `0.1` by default, so the arrowhead sits fully inside the
window instead of poking through its border. Dots and interval markers are
unaffected and stay exactly at the true endpoint.

## Implicit functions

An implicit function is a relation $f(x, y) = 0$ rather than a $y = f(x)$ you
can sample along $x$. A circle, $x^2 + y^2 - 9 = 0$, is not a function of $x$ at
all in the usual sense.

`Plot` traces the curve with Asymptote's `contour` module: it searches a box —
the window, by default — on an `nx` by `ny` grid for where $f$ crosses zero, and
connects the crossings into paths. Those may be closed loops, open curves
clipped by the box's edges, or several disconnected pieces.

Because of that, an implicit curve has no equivalent of an explicit function's
true left and right end, so it gets no endpoint markers. Increase `nx` and `ny`
if a curve's finer features — thin loops, sharp turns — look faceted:

```asy
real circle(real x, real y) { return x^2 + y^2 - 9; }

Plot p = Plot(-4, 4);
p.set_window(-4, 4, -4, 4);
p.add(circle, color=red, nx=150, ny=150);
```

For the common shapes there are ready-made relations — see
[predefined functions]({{% relref "/asymptote/predefined-functions" %}}).

## Custom domains

`add()` defers to the plot's own window by default, since the window already
says where in the plane you are looking. When a function genuinely needs a
narrower or wider domain than that, pass `x_min` and `x_max` — and, for
implicit functions, `y_min` and `y_max` — on that `add()` call:

```asy
Plot p = Plot(-2, 10);
p.add(sqrt, x_min=0, x_max=10, left_marker=CLOSED_DOT);   // evaluated over [0, 10]
```

```asy
Plot p = Plot(-10, 10);
p.add(circle, x_min=-5, x_max=5, y_min=-5, y_max=5);      // searched only in [-5,5] x [-5,5]
```

Every bound is independent and optional; the ones you leave out keep deferring
to the window. The domain lives on the same `add()` call as everything else, per
function, independent of the window and of every other function on the plot.

Do not confuse this with `Plot`'s own `x_min` and `x_max`, set at construction.
Those are only the *default* for the window's left and right edges when you have
not called `set_window_left` or `set_window_right` — a per-plot setting, not a
per-function one.

## Legends

Pass `label` on `add()` to name a function. `legend(height=0)` then builds a
standalone legend picture: one row per added function, in `add()` order, each
row a single left-aligned unit — a 2 cm line-style sample in that function's
actual colour and dash pattern, a small gap, then its label. An unlabelled
function falls back to `"Function N"`, numbered by its `add()` order.

Colours are resolved exactly as `render()` resolves them, through the same
underlying method, so the legend always matches what the plot actually draws —
auto-coloured functions included. Rows are top-aligned, the first added
function topmost.

```asy
Plot p = Plot(-10, 10);
p.add(sin, color=blue, label="$\sin(x)$");
p.add(cos, label="$\cos(x)$");   // auto-coloured — legend() still shows its resolved colour

Image img = Image(10, 10);
img.add(p);

Gallery g = Gallery(1, 2, 10, 10);
g.add(img.pic, 0, 0);
g.add(p.legend(10), 0, 1);       // legend() returns a plain picture
```

{{% notice style="tip" title="Pass the gallery's height to `legend()`" %}}
`Gallery.add(picture, ...)` anchors a picture's bottom-left corner to its cell's
bottom-left corner and expects the picture to fill the cell. A full-size `Plot`
picture does; a legend, sized only to its own content at the default
`height=0`, does not — it ends up hugging the bottom of a much taller cell
instead of lining up with the plot. Passing a matching `height` places the top
row at the same margin-inset height the plot's own square top sits at.
{{% /notice %}}

Row spacing, the line sample's length, and the gap before the label are theme
constants: `legend_row_height`, `legend_line_length`, and `legend_label_gap`.

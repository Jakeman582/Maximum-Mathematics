+++
title = 'Predefined Functions'
description = 'Ready-made lines and conic sections, addable to a Plot directly.'
weight = 40
+++

Rather than writing your own implicit relation for a shape you draw constantly,
`Utilities/Functions/` provides ready-made ones. Each exposes `as_implicit()`,
which returns an `implicit_2` closure that
[`Plot.add()`]({{% relref "/asymptote/visualizations/plot" %}}) accepts like any
other implicit function.

{{< figure src="conics.svg"
           title="Figure 1:"
           caption="A circle, an ellipse, a parabola, and a line — four predefined shapes on one plot."
           source="conics.asy" >}}

## Line

A general line in standard form $ax + by + c = 0$. Unlike slope-intercept form,
this represents a vertical line just as naturally as a horizontal or slanted
one, because it never divides by anything.

```asy
Line l = vertical_line(5);

Plot p = Plot(-10, 10);
p.add(l.as_implicit(), color=blue);
```

| Constructor | Builds |
|---|---|
| `Line(a, b, c)` | The line $ax + by + c = 0$ directly |
| `vertical_line(x0)` | The vertical line $x = x_0$ |
| `horizontal_line(y0)` | The horizontal line $y = y_0$ |
| `line_from_slope_intercept(slope, y_intercept)` | $y = mx + b$; cannot express a vertical line — use `vertical_line` |
| `line_from_two_points(p1, p2)` | The line through two points, vertical and horizontal included |

| Method | Purpose |
|---|---|
| `evaluate(x, y)` | $ax + by + c$ — zero exactly on the line, nonzero elsewhere, with the sign giving the side |
| `as_implicit()` | This line as an `implicit_2`, addable to `Plot` directly |

## Conic

A general conic section in standard form
$Ax^2 + By^2 + Cxy + Dx + Ey + F = 0$ — one form covering circles, ellipses,
parabolas, and hyperbolas alike, depending on the coefficients.

```asy
Conic circle = Conic(1, 1, 0, 0, 0, -9);       // x^2 + y^2 - 9 = 0, a circle of radius 3
Conic hyperbola = Conic(1, -1, 0, 0, 0, -1);   // x^2 - y^2 - 1 = 0

Plot p = Plot(-10, 10);
p.add(circle.as_implicit(), color=blue);
```

| Constructor | Builds |
|---|---|
| `Conic(A, B, C, D, E, F)` | The conic $Ax^2 + By^2 + Cxy + Dx + Ey + F = 0$ directly |
| `conic_circle(center_x, center_y, radius)` | A circle |
| `conic_ellipse(center_x, center_y, radius_x, radius_y)` | An axis-aligned ellipse |
| `conic_hyperbola(center_x, center_y, radius_x, radius_y, orientation=HORIZONTAL)` | An axis-aligned hyperbola |
| `conic_parabola(center_x, center_y, scale, orientation=VERTICAL)` | A parabola, from its vertex |

| Method | Purpose |
|---|---|
| `evaluate(x, y)` | $Ax^2 + By^2 + Cxy + Dx + Ey + F$ — zero exactly on the conic |
| `as_implicit()` | This conic as an `implicit_2`, addable to `Plot` directly |

These carry a `conic_` prefix rather than being named plainly, because
Asymptote's own library already defines `circle(pair, real)` and
`ellipse(pair, real, real)` as path constructors. Different signatures, but the
same bare names would read as though they did the same thing.

### Orientation

`orientation` describes which axis the conic is symmetric about: `HORIZONTAL`
opens left and right, `VERTICAL` opens up and down — the familiar $y = x^2$
shape, and `conic_parabola`'s default.

`conic_parabola` expresses the parabola in vertex form, with $h$ =
`center_x`, $k$ = `center_y`, and $a$ = `scale`:

| `orientation` | Equation | Opens |
|---|---|---|
| `VERTICAL` (default) | $y = a(x - h)^2 + k$ | Up if $a > 0$, down if $a < 0$ |
| `HORIZONTAL` | $x = a(y - h)^2 + k$ | Right if $a > 0$, left if $a < 0$ |

$(h, k)$ is the vertex; $a$ is the leading coefficient, and a larger magnitude
means a narrower parabola.

```asy
Conic c = conic_circle(0, 0, 3);                    // x^2 + y^2 = 9
Conic h = conic_hyperbola(0, 0, 2, 3, VERTICAL);    // opens up and down
Conic p = conic_parabola(0, 1, 0.5);                // vertex (0, 1), opens upward
```

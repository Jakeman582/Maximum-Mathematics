import MaximumMathematics;

Conic circle_shape = conic_circle(0, 0, 3);
Conic ellipse_shape = conic_ellipse(0, 0, 6, 2);
Conic parabola_shape = conic_parabola(0, -6, 0.4);
Line diagonal = line_from_slope_intercept(1, 0);

Plot p = Plot(-8, 8);
p.set_window(-8, 8, -8, 8);
p.add(circle_shape.as_implicit());
p.add(ellipse_shape.as_implicit());
p.add(parabola_shape.as_implicit());
p.add(diagonal.as_implicit(), type=DOTTED);

Image img = Image(10, 10);
img.set_diagram_padding(0.5);
img.add(p);

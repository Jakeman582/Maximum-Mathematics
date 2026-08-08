import MaximumMathematics;

real cube(real x) { return x^3; }                      // explicit: y = f(x)
real circle(real x, real y) { return x^2 + y^2 - 9; }  // implicit: f(x, y) = 0

Plot p = Plot(-4, 4);
p.set_window(-4, 4, -4, 4);
p.add(cube);
p.add(circle, color=red, type=DASHED);

Image img = Image(10, 10);
img.set_diagram_padding(0.5);
img.add(p);

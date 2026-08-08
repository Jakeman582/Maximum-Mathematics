import MaximumMathematics;

real value(real x) { return 1000 * exp(log(1.05) * x); }

DiscretePlot g = DiscretePlot(1, 0, "left", 8, value);
g.set_window(-0.5, 8.5, 0, 0);   // ymin == ymax leaves the y-window automatic

Image img = Image(12, 6);
img.set_diagram_padding(0.5);
img.add(g);

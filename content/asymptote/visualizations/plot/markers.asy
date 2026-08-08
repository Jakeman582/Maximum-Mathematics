import MaximumMathematics;

Plot p = Plot(-2, 10);

// sqrt(0) = 0 is defined, so the left end is a closed dot rather than the
// arrowhead AUTO would draw; the right end runs off the window, so it keeps
// the default arrow.
p.add(sqrt, x_min=0, x_max=10, left_marker=CLOSED_DOT);

Image img = Image(10, 8);
img.set_diagram_padding(0.5);
img.add(p);

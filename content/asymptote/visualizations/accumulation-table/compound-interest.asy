import MaximumMathematics;

real compound(real x) { return x * 1.05; }

AccumulationTable table = AccumulationTable(1000, 8, compound, "Compound Interest (5\%)");

Image img = Image(18, 9);
img.set_diagram_padding(0.5);
img.add(table);

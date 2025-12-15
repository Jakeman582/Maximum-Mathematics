import MaximumMathematics;

// Relation Diagram
RelationDiagram diagram = RelationDiagram();

// Defining the sets
diagram.add_set(new string[] {"m", "o", "s"}, "A");
diagram.add_set(new string[] {"a", "n", "w"}, "B");
diagram.add_set(new string[] {"a", "g", "i"}, "C");
diagram.add_set(new string[] {"i", "m", "o"}, "D");
diagram.add_set(new string[] {"c", "n", "p"}, "E");

// Defining the relations
diagram.add_relation(0, 1, new pair[] {(0,0), (1,1), (2, 2)});
diagram.add_relation(1, 2, new pair[] {(0,1), (1,2), (2, 0)});
diagram.add_relation(2, 3, new pair[] {(0,1), (1,0), (2, 2)});
diagram.add_relation(3, 4, new pair[] {(0,0), (1,2), (2, 1)});

Image img = Image(12, 5);
img.set_diagram_padding_horizontal(0.2);
img.add(diagram);
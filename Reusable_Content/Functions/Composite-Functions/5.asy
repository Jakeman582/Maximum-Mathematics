import MaximumMathematics;

// Relation Diagram
RelationDiagram diagram = RelationDiagram();

// Defining the sets
diagram.add_set(new string[] {"1", "2", "3", "4"}, "X");
diagram.add_set(new string[] {"a", "b", "c"}, "Y");
diagram.add_set(new string[] {"$\Phi$", "$\chi$", "$\Psi$"}, "Z");

// Defining the relations
diagram.add_relation(0, 1, new pair[] {(0,1), (1,2), (2, 2), (3, 2)});
diagram.add_relation(1, 2, new pair[] {(0, 0), (1, 2), (2, 1)});

Image img = Image(12, 10);
img.set_diagram_padding_horizontal(0.2);
img.add(diagram);
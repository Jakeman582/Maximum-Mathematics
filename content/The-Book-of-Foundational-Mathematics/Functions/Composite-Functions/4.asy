import MaximumMathematics;

// Relation Diagram
RelationDiagram relation = RelationDiagram();

// Adding the sets
relation.add_set(new string[] {"1", "2", "3", "4"}, "A");
relation.add_set(new string[] {"10", "20", "30", "40"}, "B");
relation.add_set(new string[] {"77", "88", "99"}, "C");

// Defining the relations
relation.add_relation(0, 1, new pair[] {(0, 1), (1, 1), (2, 3), (3, 3)});
relation.add_relation(1, 2, new pair[] {(0, 1), (1, 2), (2, 0), (3, 2)});

// Creating the image
Image image = Image(10, 8);
image.set_diagram_padding_horizontal(0.5);
image.add(relation);
import MaximumMathematics;

RelationDiagram diagram = RelationDiagram();
diagram.add_set(new string[] {"1", "2", "3"}, "A");
diagram.add_set(new string[] {"a", "b", "c"}, "B");
diagram.add_set(new string[] {"u", "v", "w"}, "C");

diagram.add_relation(0, 1, new pair[] {(0,0), (1,1), (2,2)});
diagram.add_relation(1, 2, new pair[] {(0,1), (1,2), (2,0)});

Image img = Image(12, 8);
img.set_diagram_padding(0.5);
img.add(diagram);

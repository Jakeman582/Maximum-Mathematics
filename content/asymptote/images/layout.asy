import MaximumMathematics;

RelationDiagram diagram = RelationDiagram();
diagram.add_set(new string[] {"1", "2", "3"}, "A");
diagram.add_set(new string[] {"a", "b", "c"}, "B");
diagram.add_relation(0, 1, new pair[] {(0,0), (1,1), (2,2)});

Image img = Image(12, 8);
img.set_diagram_padding(0.5);
img.caption_title("Figure 2:");
img.caption_text("The caption zone sizes itself to fit its content, wrapping the text at the image's width.");
img.add(diagram);

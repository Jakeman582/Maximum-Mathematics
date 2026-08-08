import MaximumMathematics;

RelationDiagram injective = RelationDiagram();
injective.add_set(new string[] {"1", "2"}, "A");
injective.add_set(new string[] {"x", "y", "z"}, "B");
injective.add_relation(0, 1, new pair[] {(0,0), (1,1)});

RelationDiagram surjective = RelationDiagram();
surjective.add_set(new string[] {"1", "2", "3"}, "A");
surjective.add_set(new string[] {"x", "y"}, "B");
surjective.add_relation(0, 1, new pair[] {(0,0), (1,1), (2,1)});

RelationDiagram bijective = RelationDiagram();
bijective.add_set(new string[] {"1", "2", "3"}, "A");
bijective.add_set(new string[] {"x", "y", "z"}, "B");
bijective.add_relation(0, 1, new pair[] {(0,0), (1,1), (2,2)});

Gallery gallery = Gallery(1, 3, visual_width=5, visual_height=6);
gallery.set_margin(0.5);
gallery.set_padding(0.3);
gallery.set_caption_height(0.8);

gallery.add(injective, 0, 0, "Injective");
gallery.add(surjective, 0, 1, "Surjective");
gallery.add(bijective, 0, 2, "Bijective");

// Gallery-wide caption, set after the cells — this re-renders automatically.
gallery.caption_title("Figure 1:");
gallery.caption_text("Three kinds of relations between two sets.");

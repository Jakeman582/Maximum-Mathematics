import MaximumMathematics;

///////////////////////////////////////////////////////////////////////////////
// Relation Diagram 1
///////////////////////////////////////////////////////////////////////////////
RelationDiagram relation_1 = RelationDiagram();

// Adding the sets
relation_1.add_set(new string[] {"Anchorage", "Chicago", "Denver", "Miami"}, "City");
relation_1.add_set(new string[] {"Low", "Mid", "High"}, "Latitude");

// Defining the relations
relation_1.add_relation(0, 1, new pair[] {(0, 2), (1, 1), (2, 1), (3, 0)});

///////////////////////////////////////////////////////////////////////////////
// Relation Diagram 2
///////////////////////////////////////////////////////////////////////////////
RelationDiagram relation_2 = RelationDiagram();

// Adding the sets
relation_2.add_set(new string[] {"Low", "Mid", "High"}, "Latitude");
relation_2.add_set(new string[] {"Cold", "Mild", "Hot"}, "Temperature");

// Defining the relations
relation_2.add_relation(0, 1, new pair[] {(0, 2), (1, 1), (2, 0)});

///////////////////////////////////////////////////////////////////////////////
// Creating the gallery
///////////////////////////////////////////////////////////////////////////////
Gallery gallery = Gallery(1, 2, visual_width = 15, visual_height = 10);
gallery.add(relation_1, 0, 0, "(a)");
gallery.add(relation_2, 0, 1, "(b)");
gallery.render();
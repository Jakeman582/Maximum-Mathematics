import MaximumMathematics;

///////////////////////////////////////////////////////////////////////////////
// Relation Diagram 1
///////////////////////////////////////////////////////////////////////////////
RelationDiagram relation_1 = RelationDiagram();

// Adding the sets
relation_1.add_set(new string[] {"d", "h", "p", "s", "w"}, "A");
relation_1.add_set(new string[] {"a", "e", "i", "o", "u"}, "B");

// Defining the relations
relation_1.add_relation(0, 1, new pair[] {(0, 0), (1, 1), (2, 0), (3, 3), (4, 2)});

///////////////////////////////////////////////////////////////////////////////
// Relation Diagram 2
///////////////////////////////////////////////////////////////////////////////
RelationDiagram relation_2 = RelationDiagram();

// Adding the sets
relation_2.add_set(new string[] {"a", "e", "i", "o", "u"}, "B");
relation_2.add_set(new string[] {"c", "l", "n", "r", "t"}, "C");

// Defining the relations
relation_2.add_relation(0, 1, new pair[] {(0, 3), (1, 1), (2, 0), (3, 2), (4, 4)});

///////////////////////////////////////////////////////////////////////////////
// Relation Diagram 3
///////////////////////////////////////////////////////////////////////////////
RelationDiagram relation_3 = RelationDiagram();

// Adding the sets
relation_3.add_set(new string[] {"c", "l", "n", "r", "t"}, "C");
relation_3.add_set(new string[] {"d", "g", "k", "n", "p"}, "D");

// Defining the relations
relation_3.add_relation(0, 1, new pair[] {(0, 2), (1, 4), (2, 1), (3, 2), (4, 3)});

///////////////////////////////////////////////////////////////////////////////
// Relation Diagram 4
///////////////////////////////////////////////////////////////////////////////
RelationDiagram relation_4 = RelationDiagram();

// Adding the sets
relation_4.add_set(new string[] {"a", "e", "i", "o", "u"}, "B");
relation_4.add_set(new string[] {"d", "g", "k", "n", "p"}, "D");

// Defining the relations
relation_4.add_relation(0, 1, new pair[] {(0, 2), (1, 4), (2, 2), (3, 1), (4, 3)});

///////////////////////////////////////////////////////////////////////////////
// Relation Diagram 5
///////////////////////////////////////////////////////////////////////////////
RelationDiagram relation_5 = RelationDiagram();

// Adding the sets
relation_5.add_set(new string[] {"d", "h", "p", "s", "w"}, "A");
relation_5.add_set(new string[] {"d", "g", "k", "n", "p"}, "D");

// Defining the relations
relation_5.add_relation(0, 1, new pair[] {(0, 2), (1, 4), (2, 2), (3, 1), (4, 2)});

///////////////////////////////////////////////////////////////////////////////
// Relation Diagram 6
///////////////////////////////////////////////////////////////////////////////
RelationDiagram relation_6 = RelationDiagram();

// Adding the sets
relation_6.add_set(new string[] {"d", "h", "p", "s", "w"}, "A");
relation_6.add_set(new string[] {"c", "l", "n", "r", "t"}, "C");

// Defining the relations
relation_6.add_relation(0, 1, new pair[] {(0, 3), (1, 1), (2, 3), (3, 2), (4, 0)});

///////////////////////////////////////////////////////////////////////////////
// Creating the gallery
///////////////////////////////////////////////////////////////////////////////
Gallery gallery = Gallery(1, 3, visual_width = 6, visual_height = 7);
gallery.add(relation_1, 0, 0, "$f: A \to B$");
gallery.add(relation_2, 0, 1, "$g: B \to C$");
gallery.add(relation_6, 0, 2, "$[g \circ f]: A \to C$");
gallery.render();
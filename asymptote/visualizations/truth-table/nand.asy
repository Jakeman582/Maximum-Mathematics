import MaximumMathematics;

string[] variables = {"p", "q"};
string[] column_labels = {"$\neg p$", "$p \land q$", "$\neg(p \land q)$"};

bool not_p(bool[] v)   { return !v[0]; }
bool p_and_q(bool[] v) { return v[0] && v[1]; }
bool nand(bool[] v)    { return !(v[0] && v[1]); }

bool_array_function[] evaluators = {not_p, p_and_q, nand};

TruthTable table = TruthTable(variables, column_labels, evaluators);

Image img = Image(12, 6);
img.set_diagram_padding(0.5);
img.add(table);

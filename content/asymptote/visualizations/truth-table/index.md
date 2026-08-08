+++
title = 'TruthTable'
description = 'Truth tables generated from evaluator functions.'
weight = 20
+++

Truth tables for boolean expressions. You give the variable names, the column
labels, and one evaluator function per column; the table generates all $2^n$
rows for you.

An evaluator receives a `bool[]` holding the current row's variable values and
returns that column's result.

```asy
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
```

{{< figure src="nand.svg"
           title="Figure 1:"
           caption="Three derived columns over two variables."
           source="nand.asy" >}}

`bool_array_function` is an alias for `bool(bool[])`.

The order of `variables` fixes the indices your evaluators use: `v[0]` is the
first variable, `v[1]` the second, and so on. `column_labels` and `evaluators`
are matched by position, so the $n$-th label describes the $n$-th evaluator.

## Methods

| Method | Purpose |
|---|---|
| `TruthTable(variable_labels, column_labels, evaluators, title="Truth Table")` | Build the table |
| `set_title(title)` | Set the title |
| `set_debug_mode(bool)` | Draw bounds |

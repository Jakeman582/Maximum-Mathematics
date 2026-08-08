+++
title = 'AccumulationTable'
description = 'An iterative accumulation, one row per step.'
weight = 30
+++

An iterative accumulation. Starting from a seed, each row applies your function
to the previous total. The columns are Step, Current Total, Change, and Next
Total.

```asy
real compound(real x) { return x * 1.05; }   // 5% per period

AccumulationTable table = AccumulationTable(1000, 8, compound, "Compound Interest (5\%)");

Image img = Image(18, 9);
img.set_diagram_padding(0.5);
img.add(table);
```

{{< figure src="compound-interest.svg"
           title="Figure 1:"
           caption="Eight periods of 5% growth from a seed of 1000."
           source="compound-interest.asy" >}}

`func` has type `real_function_1` — that is, `real(real)` — and maps the
current total to the next total. It is not the change; the Change column is
derived by subtracting the current total from what your function returns.

The title is typeset through LaTeX, so `%` must be escaped as `\%` — an
unescaped `%` starts a LaTeX comment and silently swallows the rest of the
line.

## Methods

| Method | Purpose |
|---|---|
| `AccumulationTable(seed=0, steps=10, func=identity, title="Accumulation Table")` | Build the table |
| `set_title(title)` | Set the top header |
| `set_step_header / set_accum_header / set_change_header / set_next_total_header(label)` | Rename a column |
| `set_debug_mode(bool)` | Draw bounds |

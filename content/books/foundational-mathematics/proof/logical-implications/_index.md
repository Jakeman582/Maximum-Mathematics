+++
title = 'Logical Implications'
type = 'chapter'
weight = 3

[params]
  section = 3
+++

So far, we've studied what an implication means on its own, and how it
relates to variations like its converse, inverse, and contrapositive.
Now we turn to a special kind of implication — one that's true no matter
what truth values its hypothesis and conclusion happen to take on. These
implications are especially useful, since knowing one holds lets us
deduce its conclusion with total certainty the moment its hypothesis is
satisfied.

We already know, from the Law of Material Implication, that
$p \to q$ is logically equivalent to $\neg p \lor q$. Before
moving on, it's worth building some intuition for why that's true, and
seeing what it buys us.

## Building Intuition for the Material Implication
---

{{< example title="Deducing what an implication tells us" >}}
Suppose we have $p \to q$ where

\[
\begin{array}{rl}
p\text{: } &\text{Alyssa studies for her Chemistry exam.} \\
q\text{: } &\text{Alyssa gets an A on her Chemistry exam.}
\end{array}
\]

What can we deduce if we know $\neg p$ is true (meaning $p$ is false)?
In this scenario, Alyssa doesn't study for her Chemistry exam. Does this
mean she doesn't get an A on her Chemistry exam?

Not necessarily. Remember, all we know is that if she studies, she'll
get an A — we weren't told $\neg p \to \neg q$. Perhaps the
exam is easy enough that Alyssa doesn't feel the need to study. Perhaps
the exam is difficult, but Alyssa is comfortable enough with the
material to work out correct answers with a little thought. On the
other hand, the exam could be extremely difficult for Alyssa, so maybe
she doesn't get an A. All we can conclude is that she didn't study — we
can't determine whether we have $q$ or $\neg q$.

What if we know we have $p$ instead of $\neg p$? Since we know that if
Alyssa studies, she'll get an A, knowing that $p$ happened tells us that
$q$ happened as well. (Note that since we're asserting $p \to
q$ is true, we can't have $p \to \neg q$.)

Our conclusion hinges entirely on the truth value of $p$: if $\neg p$
happened, we don't get any additional conclusions, but if $p$ happened,
we immediately know $q$ happens too. This is exactly the behavior of the
disjunction $\neg p \lor q$ — which is precisely why
$p \to q \Longleftrightarrow \neg p \lor q$ in the first place.
{{< /example >}}

Keeping this equivalence in mind makes negating an implication far less
error-prone. As a reminder, from the Simplifying Logical Expressions
section, we already worked out that

$$\neg (p \to q) \Longleftrightarrow p \land \neg q,$$

which lines up with what we'd expect: an implication is false exactly
when $p$ is true and $q$ is false.

It's worth emphasizing why parentheses matter here. An expression such
as $\neg p \to q$ is shorthand for $(\neg p) \to
q$ — the negation $\neg$ is the most tightly-binding operation in an
expression, so it only applies to $p$, not to the whole implication.
This is a very different statement from $\neg (p \to q)$,
as the truth table below makes clear.

![The truth table for $\neg p \to q$ and $\neg (p \to q)$, side by side.](01.svg)

Any doubts about how an expression should be parsed can always be put
to rest by adding parentheses of your own.

## Tautologically True Implications
---

{{< example title="An implication that's always true" >}}
Consider two propositions $a$ and $b$, where

\[
\begin{array}{rl}
a\text{: } &\text{Alvarez hauls up a red king crab pot.} \\
b\text{: } &\text{Alvarez has to report the catch to the harbormaster.}
\end{array}
\]

Let's compare two conjunctions built from these propositions and the
implication $a \to b$: $a \land (a \to b)$, and $b \land (a \to b)$.

Suppose $a \land (a \to b)$ is true. Then $a$ is true — Alvarez hauls up
a red king crab pot — and $a \to b$ is true as well. Since $a$ is true
and $a \to b$ is true, we can deduce $b$ must be true too — Alvarez has
to report the catch. So $a \land (a \to b)$ being true pins down both
$a$ and $b$.

Now suppose $b \land (a \to b)$ is true instead. Then $b$ is true —
Alvarez has to report the catch. But once $b$ is true, the implication
$a \to b$ is automatically true too, no matter what $a$ happens to
be — an implication with a true conclusion can never be false. So
$b \land (a \to b)$ being true doesn't actually tell us anything about
$a$; it only ever tells us that $b$ is true.

The truth table below confirms that $[a \land (a \to b)] \to b$ is a
tautology:

![The truth table for $a \to b$, $a \land (a \to b)$, and $[a \land (a \to b)] \to b$.](02.svg)

Every row in the $[a \land (a \to b)] \to b$ column is a $1$, so
$a \land (a \to b)$ always forces $b$ to be true.

Now compare that against the truth table for $[b \land (a \to b)] \to
a$:

![The truth table for $a \to b$, $b \land (a \to b)$, and $[b \land (a \to b)] \to a$.](03.svg)

Here, the $[b \land (a \to b)] \to a$ column has a single $0$, so this
implication is *not* a tautology — $b \land (a \to b)$ being true
doesn't let us conclude $a$.
{{< /example >}}

There's a special name for these kinds of implications.

{{< definition terms="logically implies" >}}
Suppose $a$ and $b$ are any arbitrary statements (primitive or compound)
such that the implication $a \to b$ is always true — in
other words, a tautology. We say that $a$ ==logically implies== $b$, and
we write

$$a \Longrightarrow b.$$

If $a \to b$ is not a tautology, we write $a \not\Longrightarrow
b$.
{{< /definition >}}

Based on the previous example, where we saw that $(a \land (a \to
b)) \to b$ was a tautology, we can use this new notation and write

$$(a \land (a \to b)) \Longrightarrow b.$$

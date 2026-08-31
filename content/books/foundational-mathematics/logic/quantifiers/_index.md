+++
title = 'Quantifiers'
type = 'chapter'
weight = 9

[params]
  section = 9
+++

Consider the following propositional functions, both defined on the
universe $\mathcal{U}$ of all integers:

\[
\begin{array}{rl}
s(n)\text{: } &n^2 \text{ is even.} \\
t(m, n)\text{: } &m^2 - n^2 \text{ is even.}
\end{array}
\]

We can find values of $n$ that make $s(n)$ true, such as $n = -4$. We can
also find values of $n$ that make $s(n)$ false, such as $n = 13$. The
same is true of $t(m, n)$: the values $m = 3$ and $n = -7$ make $t(m, n)$
true, while $m = 4$ and $n = -1$ make $t(m, n)$ false.

Now consider the following statements:

\[
\begin{array}{rl}
\alpha\text{: } &\text{For some } n \text{, } s(n) \text{ is true.} \\
\beta\text{: } &\text{For all } m \text{ and all } n \text{, } t(m, n) \text{ is true.}
\end{array}
\]

$\alpha$ and $\beta$ aren't open statements, even though variables show
up in them. The difference is that each statement is making a specific
claim, and the truth value of that claim doesn't depend on the values
taken by the variables.

Statement $\alpha$ is claiming that *some specific integer exists* that
makes $s(n)$ true. As we saw above, one such value is $n = -4$, so
$\alpha$ is a true proposition. It doesn't matter that $n = 13$ makes
$s(n)$ false — $\alpha$ is only claiming that *some* satisfying value
exists, and we already found one.

Likewise, $\beta$ is making a specific claim: that *every single value*
of $m$ and *every single value* of $n$ makes $t(m, n)$ true. We saw that
$t(m, n)$ is false when $m = 4$ and $n = -1$. Because it isn't true that
every $m$ and every $n$ make $t(m, n)$ true, $\beta$ is a false
statement — regardless of the fact that some values of $m$ and $n$ do
make $t(m, n)$ true.

We explore these kinds of statements here, and in the next couple of
sections.

## The Existential Quantifier
---

The phrases "for some $n$" (used in statement $\alpha$) and "for all $m$
and all $n$" (used in statement $\beta$) are said to *quantify* the
propositional functions $s(n)$ and $t(m, n)$.

The following phrases are all equivalent, and specify the existential
quantifier:

- "for some $x$"
- "for at least one value of $x$"
- "a value of $x$ exists such that"
- "an $x$ exists such that"

{{< definition terms="existential quantifier" >}}
The phrase "for some $x$," specifying that at least one value of $x$
exists that satisfies some condition, is called the ==existential
quantifier==.

The existential quantifier can be expressed symbolically as $\exists x$.
{{< /definition >}}

For any propositional function $p(n)$, we can consider the statement

$$\exists n\ p(n)$$

which is equivalent to the statement "For some $n$, $p(n)$," which in
turn is equivalent to saying "For some $n$, $p(n)$ is true." Note that in
the first two phrasings, we omit the "is true" part — it's assumed that
we're considering the existence of values of $n$ that make $p(n)$ true.
We could also consider the existence of values of $n$ that make $p(n)$
false, by considering the statement

$$\exists n\ \neg p(n).$$

Similarly, we can use logical connectives along with the existential
quantifier. So for propositional functions $x(n)$ and $y(n)$, we can
consider the statements

\[
\begin{align*}
&\exists n\ [x(n) \land y(n)] \\
&\exists n\ [x(n) \lor y(n)] \\
&\exists n\ [x(n) \veebar y(n)] \\
&\exists n\ [x(n) \to y(n)] \\
&\exists n\ [x(n) \leftrightarrow y(n)]
\end{align*}
\]

where we enclose the propositional functions in brackets to specify that
the existential quantifier applies to the whole logical connective. This
is different from the statements

\[
\begin{align*}
&\exists n\ [x(n)] \land y(n) \\
&\exists n\ [x(n)] \lor y(n) \\
&\exists n\ [x(n)] \veebar y(n) \\
&\exists n\ [x(n)] \to y(n) \\
&\exists n\ [x(n)] \leftrightarrow y(n)
\end{align*}
\]

where the existential quantifier only applies to the propositional
function $x(n)$. In general, it's a good idea to enclose whatever
statement you want a quantifier applied to in brackets.

At this point, it's worth pointing out that $p(x)$ is an open statement,
whose truth value can only be determined after substituting in a value
for $x$ from some universe of discourse, whereas $\exists n\ p(n)$ is not
an open statement — it has a definite truth value (either some value of
$x$ from the universe exists such that $p(x) = 1$, or no such value
exists).

It's also worth pointing out that when we say something like
$\exists n\ p(n) = 1$, we mean that the statement $\exists n\ p(n)$ is
equal to $1$ — we are not simply saying that $p(n) = 1$ (again, because
$p(n)$ is an open statement, we'd have to substitute a value in for $n$
before we know whether $p(n) = 0$ or $p(n) = 1$).

Remember that, by definition, a statement such as $\exists n\ p(n)$ is
true if we can find at least one value of $n$ that makes $p(n) = 1$.
There could be infinitely many such values, $1000$ values, $10$ values,
or even exactly $1$ value — the existence of at least one such value is
enough to make $\exists n\ p(n)$ a true statement.

{{< example title="Existentially quantified statements" >}}
Consider the universe of all real numbers, along with the following open
statements:

\[
\begin{array}{rl}
p(x)\text{: } &x \geq 0 \\
q(x)\text{: } &x^2 \geq 0 \\
r(x)\text{: } &1 - x^2 = 0 \\
s(x)\text{: } &x^2 - 3x + 2 > 0
\end{array}
\]

The statement $\exists x\ [p(x) \land r(x)]$ is true, because there
exists at least one value of $x$ ($x = 1$) that makes both $p(x) = 1$ and
$r(x) = 1$. We can translate this statement as "There exists a value of
$x$ such that $x \geq 0$ and $1 - x^2 = 0$."

The statement $\exists x\ [p(x) \to q(x)]$ is true, because
there exists at least one value of $x$ ($x = -1$) such that $p(x) = 0$,
$q(x) = 1$, and $0 \to 1$ is true. Another value that makes
this statement true is $x = 5$, since $p(5) = 1$, $q(5) = 1$, and
$1 \to 1$ is true. We can translate this statement as "There
exists at least one value of $x$ such that if $x \geq 0$, then
$x^2 \geq 0$."

The statement $\exists x\ [r(x) \lor s(x)]$ is true, because there exists
a value of $x$ (such as $x = 4$) where $r(x) \lor s(x) = 1$, since
$r(4) = 0$ and $s(4) = 1$. We can translate this statement as "There
exists a value of $x$ such that $1 - x^2 = 0$, or $x^2 - 3x + 2 > 0$."

Showing that an existentially quantified statement is false is harder
than showing one is true, because it isn't enough to come up with a
single example — it must be demonstrated that *every single value*
within the universe of discourse yields a false statement. To be clear,
for an open statement such as $p(x)$, what we're talking about is
showing that $\neg \exists x\ p(x)$ is true by showing that
$\exists x\ p(x)$ is false. This is different from asking about the
truth value of $\exists x\ [\neg p(x)]$.
{{< /example >}}

{{< example title="Showing an existentially quantified statement is false" >}}
For the universe of discourse of all natural numbers (integers larger
than $0$, not including $0$), consider the following open propositions:

\[
\begin{array}{rl}
a(n)\text{: } &n^2 + 1 = 1 \\
b(n)\text{: } &2n + 1 \text{ is an even number.} \\
c(n)\text{: } &n^2 + 2 \text{ is a perfect square.}
\end{array}
\]

The statement $\exists n\ [a(n)]$ is false, because the only integer
where $n^2 + 1 = 1$ is $n = 0$ — but $0$ isn't in our universe of
discourse, meaning $a(0)$ is undefined. As such, $\exists n\ [a(n)]$ is
false, and $\neg \exists n\ [a(n)]$ is true.

The statement $\exists n\ [b(n)]$ is false, because $1$ more than any
multiple of $2$ is, by definition, odd — so no integer exists such that
doubling it and adding $1$ results in an even integer. Hence,
$\neg \exists n\ [b(n)]$ is true.

The statement $\exists n\ [c(n)]$ is false. Consider the difference
between $n^2$ and $(n+1)^2 = n^2 + 2n + 1$. For any integer greater than
$0$, the value $2n + 1$ is larger than $2$, so it isn't possible to form
a perfect square by adding $2$ to a previous perfect square. Hence,
$\neg \exists n\ [c(n)]$ is true.
{{< /example >}}

## The Universal Quantifier
---

The following phrases are all equivalent, and specify the universal
quantifier:

- "for all $x$"
- "for any $x$"
- "for each $x$"
- "for every $x$"

{{< definition terms="universal quantifier" >}}
The phrase "for all $x$," specifying that every value of $x$ satisfies
some condition, is called the ==universal quantifier==.

The universal quantifier can be expressed symbolically as $\forall x$.
{{< /definition >}}

The statement $\forall x\ p(x)$ asserts that all values of $x$ make
$p(x)$ true. The statement $\forall x\ \neg p(x)$ asserts that all
values of $x$ make $p(x)$ false. Again, it's advisable to use brackets to
specify how the quantifier is being used, as in $\forall x\ [p(x)]$ and
$\forall x\ [\neg p(x)]$.

{{< example title="Universally quantified statements" >}}
Consider the universe of all real numbers, along with the following open
statements:

\[
\begin{array}{rl}
p(x)\text{: } &x \geq 0 \\
q(x)\text{: } &x^2 \geq 0 \\
r(x)\text{: } &1 - x^2 = 0 \\
s(x)\text{: } &x^2 - 3x + 2 > 0
\end{array}
\]

The statement $\forall x\ [q(x)]$ is true, because *no matter what real
number* we square, the result is always greater than or equal to $0$.

As such, the statement $\forall x\ [p(x) \to q(x)]$ is also
true, because squaring a positive number *always* yields a positive
number.

The statement $\forall x\ [p(x) \land s(x)]$ is false, because
$p(1.5) \land s(1.5) = 1 \land 0 = 0$. Thus, $x = 1.5$ is a
counter-example.

The statement $\forall x\ [\neg p(x) \lor r(x)]$ is false, because
$\neg p(0) \lor r(0) = \neg(1) \lor 0 = 0 \lor 0 = 0$. As such, $x = 0$
is a counter-example, proving $\forall x\ [\neg p(x) \lor r(x)]$ is
false.
{{< /example >}}

## Explicit and Implicit Quantification
---

Some open propositions may not be as explicitly stated as we'd like.
Determining whether a statement uses an existential or universal
quantifier may require a close look at its wording, or some outside
knowledge.

{{< example title="An implicitly universally quantified statement" >}}
Consider a universe $A$ consisting of all animal species (sponges, ants,
kangaroos, elephants, etc.), along with the two following sentences:

- If an animal flies, then it has wings.
- If $x$ is a flying animal, then $x$ has wings.

Both sentences express the same idea, but are they open statements? The
second sentence does have a variable, but neither sentence uses a
construct like "All $x$," "For all $x$," "Every $x$," "Some $x$," or
even "An $x$ exists such that…"

The presence of the indefinite articles "a" and "an" suggests that both
statements use the universal quantifier, since they're imposing a
condition, and every animal in the universe can be checked against it.
So, the universal quantifier is being used implicitly here, not
explicitly.

Let's introduce the propositional functions

\[
\begin{array}{rl}
f(x)\text{: } &x \text{ is a flying animal.} \\
w(x)\text{: } &x \text{ is an animal with wings.}
\end{array}
\]

We can rewrite both bulleted statements above in a more mathematically
precise way, using the universal quantifier, as

$$\forall x\ [f(x) \to w(x)].$$
{{< /example >}}

{{< example title="A second implicitly universally quantified statement" >}}
Consider a universe $Q$ consisting of all planar quadrilaterals, along
with the following sentence:

$$\text{The opposite angles of a cyclic quadrilateral are supplementary, and conversely.}$$

Again, this sentence lacks any of the usual linguistic constructs that
explicitly determine which quantifier is used. The only clue that the
universal quantifier is used is the indefinite article "a."

Using the propositional functions

\[
\begin{array}{rl}
c(q)\text{: } &q \text{ is a cyclic quadrilateral.} \\
s(q)\text{: } &\text{The opposite angles of } q \text{ are supplementary.}
\end{array}
\]

we can rewrite the sentence above in a mathematically precise way as

$$\forall q\ [c(q) \leftrightarrow s(q)].$$

(The word "conversely" tells us that the converse of the statement is
also true. We could rewrite the sentence above as "If the opposite
angles of a quadrilateral are supplementary, then that quadrilateral is
cyclic, and conversely," or as "The opposite angles of a quadrilateral
are supplementary if and only if the quadrilateral is cyclic.")
{{< /example >}}

{{< example title="An implicitly existentially quantified statement" >}}
Consider the universe $I$ consisting of all the integers, along with the
statement

$$\text{The polynomial } x^3 - 6x^2 + 11x - 6 \text{ has positive roots.}$$

For this implicitly quantified statement, the word "has" suggests we're
dealing with the existential quantifier. As such, we rewrite this
statement as

$$\exists x\ [x^3 - 6x^2 + 11x - 6 = 0].$$
{{< /example >}}

## A Quick Word on Notation
---

In every example so far, we've specified a universe of discourse, and
it's been implicitly understood that all substitutions for variables
come from that universe. We can make this more explicit.

For example, up to now, we'd say something like "For some universe
$\mathcal{U}$, consider the statements $\forall x\ [p(x)]$ and
$\exists x\ [p(x)]$," where we substitute values from the universe
$\mathcal{U}$ in for the variable $x$. We can instead write "Consider the
statements $\forall x \in \mathcal{U}\ [p(x)]$ and
$\exists x \in \mathcal{U}\ [p(x)]$," using the symbol $\in$ (a stylized
Greek letter epsilon) to indicate that $x$ represents some value from the
collection $\mathcal{U}$. A construct such as "$x \in \mathcal{U}$" is
read as "$x$ is an element residing in universe $\mathcal{U}$."

By extension, when we say something like "$\forall x \in \Psi\ [p(x)]$,"
we're saying that for all values $x$ found within a universe, which we're
denoting $\Psi$ (a capital Greek letter psi), $p(x)$ is a true statement.

Alternatively, when we write something like "$\exists x \in \Psi\
[p(x)]$," this is equivalent to saying there exists some value, which
we'll refer to as $x$, residing in a universe denoted by the Greek letter
$\Psi$, such that $p(x)$ is a true statement.

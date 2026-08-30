+++
title = 'Quantified Laws of Logic'
type = 'chapter'
weight = 10

[params]
  section = 10
+++

What can we deduce from knowing that a universally quantified open
statement is true? What can we deduce from knowing that an existentially
quantified statement is true? How are universally quantified statements
and existentially quantified statements related to each other? In this
section, we dig deeper into quantifiers, and explore propositional logic
involving them.

## A Simple Definition
---

Just like with ordinary statements, we can ask whether two open
statements are logically equivalent.

{{< definition terms="logically equivalent" >}}
Consider open statements $p(x)$ and $q(x)$ defined on some universe
$\mathcal{U}$.

When $p(a) \longleftrightarrow q(a) = 1$ for every value $a$ within
$\mathcal{U}$ — in other words, when $p(a) \longleftrightarrow q(a)$ is a
tautology — we say $p(x)$ and $q(x)$ are ==logically equivalent== open
statements, and we write

$$\forall x\ [p(x) \Leftrightarrow q(x)].$$
{{< /definition >}}

{{< example title="Logically equivalent open statements" >}}
Consider the universe of all planar triangles, along with the open
statements

\[
\begin{array}{ll}
a(t)\text{: } &\text{All three angles of triangle } t \text{ are } 60°. \\
s(t)\text{: } &\text{All three sides of triangle } t \text{ have equal measure.}
\end{array}
\]

From classical geometry, we know that for any particular triangle
$\triangle ABC$,

$$a(\triangle ABC) \Leftrightarrow s(\triangle ABC).$$

As such, $\forall t\ [a(t) \Leftrightarrow s(t)]$.
{{< /example >}}

## Conjunctions and Disjunctions with Quantifiers
---

{{< example title="The existential quantifier doesn't distribute over conjunction" >}}
Consider the universe of all integers, along with the open statements

\[
\begin{array}{ll}
q_1(x)\text{: } &x^2 - 3x + 2 = 0 \\
q_2(x)\text{: } &-x^2 - 3x - 2 = 0
\end{array}
\]

For $q_1(x)$, we have $q_1(1) = 1$ and $q_1(2) = 1$; every other value of
$x$ yields $q_1(x) = 0$. For $q_2(x)$, we have $q_2(-1) = 1$ and
$q_2(-2) = 1$; every other value of $x$ yields $q_2(x) = 0$.

Since no value of $x$ makes $q_1(x) \land q_2(x)$ true, we have

$$\exists x\ [q_1(x)] \land \exists x\ [q_2(x)] = 1$$

whereas

$$\exists x\ [q_1(x) \land q_2(x)] = 0.$$

It's also worth pointing out that $\exists x\ [q_1(x)] \lor \exists x\
[q_2(x)] = 1$.
{{< /example >}}

The previous example shows that the existential quantifier does not
distribute over the conjunction operator $\land$. In other words, for
general open statements $p(x)$ and $q(x)$,

$$\exists x\ [p(x) \land q(x)] \not\Leftrightarrow \exists x\ [p(x)] \land \exists x\ [q(x)].$$

It's still true that whenever $\exists x\ [p(x) \land q(x)]$ holds,
$\exists x\ [p(x)] \land \exists x\ [q(x)]$ holds as well — it's just the
reverse direction that can fail, as the previous example showed.

In general, we do have that

$$\exists x\ [p(x) \lor q(x)] \Leftrightarrow \exists x\ [p(x)] \lor \exists x\ [q(x)],$$

since if a value of $x$ within the universe exists that satisfies the
disjunction, one of the statements in the disjunction must be true. So,
the existential quantifier distributes over disjunction.

{{< example title="The universal quantifier doesn't distribute over disjunction" >}}
Consider the universe of all positive integers, along with the
propositional functions

\[
\begin{array}{ll}
s_1(n)\text{: } &n > 9 \\
s_2(n)\text{: } &n^2 < 100
\end{array}
\]

$s_2(n) = 1$ exactly for the positive integers $1$ through $9$, and
$s_1(n) = 1$ for every integer at least $10$. So,

$$\forall n\ [s_1(n) \lor s_2(n)] = 1.$$

Of course, we have both $\forall n\ [s_1(n)] = 0$ and $\forall n\
[s_2(n)] = 0$, and so

$$\forall n\ [s_1(n)] \lor \forall n\ [s_2(n)] = 0.$$

It's also worth pointing out that we have

$$\forall n\ [s_1(n) \land s_2(n)] = (\forall n\ [s_1(n)] \land \forall n\ [s_2(n)]) = 0.$$
{{< /example >}}

According to the previous example, for any two open statements $p(x)$
and $q(x)$,

$$\forall x\ [p(x)] \lor \forall x\ [q(x)] \not\Leftrightarrow \forall x\ [p(x) \lor q(x)],$$

though whenever $\forall x\ [p(x)] \lor \forall x\ [q(x)]$ holds,
$\forall x\ [p(x) \lor q(x)]$ is guaranteed to hold as well.

On the other hand, it appears we have

$$\forall x\ [p(x) \land q(x)] \Leftrightarrow \bigl(\forall x\ [p(x)] \land \forall x\ [q(x)]\bigr).$$

So, the universal quantifier distributes over conjunction, but not over
disjunction. We summarize the two equivalences below.

{{< star title="Logical Equivalences for Distributing Quantifiers" >}}
Let $p(x)$ and $q(x)$ be any propositional functions defined on some
universe $\mathcal{U}$.

\[
\begin{array}{lcl}
\exists x\ [p(x) \lor q(x)] & \Longleftrightarrow & \exists x\ [p(x)] \lor \exists x\ [q(x)] \\
\forall x\ [p(x) \land q(x)] & \Longleftrightarrow & \forall x\ [p(x)] \land \forall x\ [q(x)]
\end{array}
\]
{{< /star >}}

## Negating Quantified Statements
---

For some open statement $p(x)$ and universe $\mathcal{U}$, what do
$\neg \exists x\ [p(x)]$ and $\neg \forall x\ [p(x)]$ mean, exactly?

Focus first on $\neg \exists x\ [p(x)]$. Remember that $\exists x\
[p(x)]$ asserts that at least one value of $x$ makes $p(x)$ true. If we
negate that statement, we're saying that *zero* values of $x$ make
$p(x)$ true (it's nonsensical to talk about a negative or fractional
number of satisfying values, so we can ignore those). Thus,
$\neg \exists x\ [p(x)]$ asserts that no value of $x$ makes $p(x)$ true —
in other words, *every* value of $x$ makes $p(x)$ false. This is
equivalent to $\forall x\ [\neg p(x)]$, so

$$\neg \exists x\ [p(x)] \Leftrightarrow \forall x\ [\neg p(x)].$$

Now consider $\neg \forall x\ [p(x)]$. Remember that $\forall x\ [p(x)]$
asserts that every value of $x$ makes $p(x)$ true. So, naturally, the
negation of $\forall x\ [p(x)]$ means that not every value of $x$ makes
$p(x)$ true — hence, there must *exist at least one value* of $x$ that
makes $p(x)$ false. This is equivalent to $\exists x\ [\neg p(x)]$, so

$$\neg \forall x\ [p(x)] \Leftrightarrow \exists x\ [\neg p(x)].$$

Let's summarize this finding.

{{< star title="Summarizing Quantifiers" >}}
Consider a propositional function $p(x)$ with some universe
$\mathcal{U}$. We have the following logical equivalencies:

\[
\begin{array}{lcl}
\neg \forall x\ [p(x)] & \Longleftrightarrow & \exists x\ [\neg p(x)] \\
\neg \exists x\ [p(x)] & \Longleftrightarrow & \forall x\ [\neg p(x)]
\end{array}
\]
{{< /star >}}

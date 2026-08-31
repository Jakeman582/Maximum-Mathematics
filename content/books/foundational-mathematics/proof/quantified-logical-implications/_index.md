+++
title = 'Quantified Logical Implications'
type = 'chapter'
weight = 4
draft = true

[params]
  section = 4
+++

Now that we've taken a closer look at the implication itself, let's
revisit quantified statements to see how the same ideas — logical
implication, equivalence, and the converse, inverse, and contrapositive —
carry over to them.

## A Simple Logical Implication
---

Suppose we have some open statement $p(x)$ with some non-empty universe
$\mathcal{U}$ (non-empty just means $\mathcal{U}$ contains at least one
element, which we can refer to as $\alpha$).

What can we conclude if we know that the statement $\forall x\ [p(x)]$ is
true — that is, we know $\forall x\ [p(x)] = 1$?

One thing we can conclude is that if $\alpha \in \mathcal{U}$ (meaning
$\alpha$ is some element found within the universe $\mathcal{U}$), then
$p(\alpha) = 1$. Since some value of $x$ exists that makes $p(x) = 1$, we
can conclude that $\exists x\ [p(x)] = 1$.

{{< example title="A true universal statement gives a true existential statement" >}}
Let our universe, denoted $N$, consist of the integers $1$ through $9$.
Consider the open statement

\[
\begin{array}{rl}
\ell(n)\text{: } &n^2 < 100
\end{array}
\]

defined on $N$. We know that $\forall n\ [\ell(n)]$ is true, because

\[
\begin{array}{lll}
1^2 = 1 < 100 & 4^2 = 16 < 100 & 7^2 = 49 < 100 \\
2^2 = 4 < 100 & 5^2 = 25 < 100 & 8^2 = 64 < 100 \\
3^2 = 9 < 100 & 6^2 = 36 < 100 & 9^2 = 81 < 100
\end{array}
\]

As such, we know that $\exists n\ [\ell(n)]$ is also true, since we know
$1^2 = 1 < 100$, meaning there exists some value ($n = 1$) such that
$\ell(n) = 1$.
{{< /example >}}

Does this work the other way? That is, does knowing that
$\exists x\ [p(x)]$ is true mean that $\forall x\ [p(x)]$ is true?
Certainly not — knowing that some value exists that makes $p(x) = 1$ is
not the same thing as knowing that *every* value of $x$ within
$\mathcal{U}$ makes $p(x) = 1$.

{{< example title="A true existential statement need not give a true universal statement" >}}
Consider the universe, which we'll denote $R$, consisting of all the
real numbers. On that universe, consider the open statement

\[
\begin{array}{rl}
r(x)\text{: } &1 - x^2 = 0.
\end{array}
\]

We know that $\exists x\ [r(x)] = 1$. For example, $r(1) = 1$; we even
have $r(-1) = 1$, for a total of two values that make $r(x)$ true.

However, notice that $1 - (2)^2 = -3$, so $r(2) = 0$. Since not every
value of $x$ makes $r(x) = 1$, we have $\forall x\ [r(x)] = 0$.
{{< /example >}}

This leads us to our first logical implication:

$$\forall x\ [p(x)] \Longrightarrow \exists x\ [p(x)].$$

As a reminder, $\forall x\ [p(x)]$ is a single statement with a definite
truth value — it's not an open statement or a propositional function.
The statement being expressed is that "every value of $x$ within
$\mathcal{U}$ makes $p(x)$ true." Likewise, $\exists x\ [p(x)]$ is also a
single statement, which can be translated as "there exists at least one
value of $x$ that makes $p(x)$ true."

Another way to state this is to say that
$\forall x\ [p(x)] \to \exists x\ [p(x)]$ is a tautology,
where $\forall x\ [p(x)]$ is the hypothesis of the implication, and
$\exists x\ [p(x)]$ is the conclusion.

## Two Simple Definitions
---

Just like with ordinary statements, we can ask whether two open
statements are logically equivalent, or whether one open statement
logically implies another.

{{< definition terms="logically equivalent" >}}
Consider open statements $p(x)$ and $q(x)$ defined on some universe
$\mathcal{U}$.

When $p(a) \leftrightarrow q(a) = 1$ for every value $a$ within
$\mathcal{U}$ — in other words, when $p(a) \leftrightarrow q(a)$ is a
tautology — we say $p(x)$ and $q(x)$ are ==logically equivalent== open
statements, and we write

$$\forall x\ [p(x) \Longleftrightarrow q(x)].$$
{{< /definition >}}

{{< example title="Logically equivalent open statements" >}}
Consider the universe of all planar triangles, along with the open
statements

\[
\begin{array}{rl}
a(t)\text{: } &\text{All three angles of triangle } t \text{ are } 60°. \\
s(t)\text{: } &\text{All three sides of triangle } t \text{ have equal measure.}
\end{array}
\]

From classical geometry, we know that for any particular triangle
$\triangle ABC$,

$$a(\triangle ABC) \Longleftrightarrow s(\triangle ABC).$$

As such, $\forall t\ [a(t) \Longleftrightarrow s(t)]$.
{{< /example >}}

{{< definition terms="logically implies" >}}
Consider open statements $p(x)$ and $q(x)$ defined on some universe
$\mathcal{U}$.

When $p(a) \to q(a) = 1$ for every value $a$ within
$\mathcal{U}$ — in other words, when $p(a) \to q(a)$ is a
tautology — we say $p(x)$ ==logically implies== $q(x)$, and we write

$$\forall x\ [p(x) \Longrightarrow q(x)].$$
{{< /definition >}}

{{< example title="One open statement logically implying another" >}}
Consider the universe of all planar quadrilaterals, along with the open
statements

\[
\begin{array}{rl}
s(q)\text{: } &\text{Quadrilateral } q \text{ is a square.} \\
r(q)\text{: } &\text{Quadrilateral } q \text{ is a rectangle.}
\end{array}
\]

From classical geometry, we know that every square is a rectangle, but
not every rectangle is a square. Thus, for every planar quadrilateral
$q_0$,

$$s(q_0) \Longrightarrow r(q_0)$$

but

$$r(q_0) \not\Longrightarrow s(q_0),$$

and so $\forall q\ [s(q) \Longrightarrow r(q)]$.
{{< /example >}}

## The Converse, Inverse, and Contrapositive of Quantifiers
---

Just like how the statement $p \to q$ has a converse,
inverse, and contrapositive, so does the universally quantified
statement $\forall x\ [p(x) \to q(x)]$.

{{< definition terms="converse, inverse, contrapositive" >}}
Consider open statements $p(x)$ and $q(x)$ defined on some universe
$\mathcal{U}$.

The ==converse== of the statement $\forall x\ [p(x) \to
q(x)]$ is

$$\forall x\ [q(x) \to p(x)].$$

The ==inverse== of the statement $\forall x\ [p(x) \to
q(x)]$ is

$$\forall x\ [\neg p(x) \to \neg q(x)].$$

The ==contrapositive== of the statement $\forall x\ [p(x) \to
q(x)]$ is

$$\forall x\ [\neg q(x) \to \neg p(x)].$$
{{< /definition >}}

Just as an ordinary implication is logically equivalent to its
contrapositive, a quantified implication is logically equivalent to its
contrapositive. Furthermore, the converse and inverse of a quantified
implication are logically equivalent to each other.

{{< example title="Checking the converse, inverse, and contrapositive" >}}
Consider the universe of all planar quadrilaterals, along with the open
statements

\[
\begin{array}{rl}
s(q)\text{: } &\text{Quadrilateral } q \text{ is a square.} \\
e(q)\text{: } &\text{Quadrilateral } q \text{ is equilateral.}
\end{array}
\]

From classical geometry, we know that if a quadrilateral is a square,
then it's equilateral, so the statement $\forall q\ [s(q) \to
e(q)]$ is a tautology. In other words, $\forall q\ [s(q) \Longrightarrow
e(q)]$.

The contrapositive of the above statement is $\forall q\ [\neg e(q)
\to \neg s(q)]$, which says that if a quadrilateral isn't
equilateral, then it isn't a square. Since the original implication is a
logical implication, so is the contrapositive, and so

$$\forall q\ [s(q) \to e(q)] \Longleftrightarrow \forall q\ [\neg e(q) \to \neg s(q)].$$

Now let's consider the converse, $\forall q\ [e(q) \to
s(q)]$, which says that if a quadrilateral is equilateral, then it's a
square. This isn't necessarily true — every rhombus is equilateral, but
not every rhombus is a square. As such, $\forall q\ [e(q) \not\Longrightarrow
s(q)]$.

The inverse can be written as $\forall q\ [\neg s(q) \to
\neg e(q)]$, which says that if a quadrilateral isn't a square, then it
isn't equilateral — but again, any non-square rhombus is equilateral. As
such, $\forall q\ [\neg s(q) \not\Longrightarrow \neg e(q)]$.
{{< /example >}}

{{< example title="A case where the statement, its converse, and its inverse are all true" >}}
Consider the universe of all real numbers, along with the open
statements

\[
\begin{array}{rl}
f(x)\text{: } &x^2 - 1 \geq 0 \\
\alpha(x)\text{: } &x \leq -1
\end{array}
\]

and the following quantified statements:

\[
\begin{array}{ll}
\text{Statement:} &\forall x\ [f(x) \to \alpha(x)] \\
\text{Contrapositive:} &\forall x\ [\neg \alpha(x) \to \neg f(x)] \\
\text{Converse:} &\forall x\ [\alpha(x) \to f(x)] \\
\text{Inverse:} &\forall x\ [\neg f(x) \to \neg \alpha(x)]
\end{array}
\]

Consider $x = 5$: $f(5) = 1$ and $\alpha(5) = 0$. Since $1
\to 0 = 0$, we have that $5$ is a counter-example, and so
$\forall x\ [f(x) \to \alpha(x)] = 0$. Since $\forall x\
[f(x) \to \alpha(x)] \Longleftrightarrow \forall x\ [\neg
\alpha(x) \to \neg f(x)]$, we also have $\forall x\ [\neg
\alpha(x) \to \neg f(x)] = 0$.

We know the converse is true, since when $x \leq -1$, we have $x^2 \geq
1$, giving us $x^2 - 1 \geq 0$. Thus, $\forall x\ [\alpha(x)
\to f(x)] = 1$, and since $\forall x\ [\alpha(x)
\to f(x)] \Longleftrightarrow \forall x\ [\neg f(x)
\to \neg \alpha(x)]$, we also have $\forall x\ [\neg f(x)
\to \neg \alpha(x)] = 1$.
{{< /example >}}

{{< example title="Strengthening a hypothesis can flip a false statement true" >}}
Consider the universe of all real numbers, along with the open
statements from the previous example, together with a new one:

\[
\begin{array}{rl}
f(x)\text{: } &x^2 - 1 \geq 0 \\
\alpha(x)\text{: } &x \leq -1 \\
\beta(x)\text{: } &x \geq 1
\end{array}
\]

Now consider the following quantified statements:

\[
\begin{array}{ll}
\text{Statement:} &\forall x\ [f(x) \to (\alpha(x) \lor \beta(x))] \\
\text{Contrapositive:} &\forall x\ [\neg(\alpha(x) \lor \beta(x)) \to \neg f(x)] \\
\text{Converse:} &\forall x\ [(\alpha(x) \lor \beta(x)) \to f(x)] \\
\text{Inverse:} &\forall x\ [\neg f(x) \to \neg(\alpha(x) \lor \beta(x))]
\end{array}
\]

The converse and inverse both remain true, since all we did was
introduce a disjunction. But now the original statement is also true:

$$\forall x\ [f(x) \to (\alpha(x) \lor \beta(x))] \Longleftrightarrow \forall x\ [\neg(\alpha(x) \lor \beta(x)) \to \neg f(x)] = 1.$$

Furthermore, since we know both the original statement and the converse
are true, we can write

$$\forall x\ [f(x) \leftrightarrow (\alpha(x) \lor \beta(x))] = 1,$$

or equivalently, $\forall x\ [f(x) \Longleftrightarrow (\alpha(x) \lor
\beta(x))]$.
{{< /example >}}

{{< example title="Negating a quantified implication" >}}
Reconsider the earlier example where we considered the universe of all
planar quadrilaterals with

\[
\begin{array}{rl}
s(q)\text{: } &\text{Quadrilateral } q \text{ is a square.} \\
e(q)\text{: } &\text{Quadrilateral } q \text{ is equilateral.}
\end{array}
\]

From classical geometry, we know that some equilateral quadrilaterals
aren't squares, so $\forall q\ [e(q) \to s(q)] = 0$. Thus,
$\neg \forall q\ [e(q) \to s(q)] = 1$.

Using the negation equivalencies from the previous section, we have
$\exists q\ [\neg(e(q) \to s(q))] = 1$. We can negate the
inner implication with the following steps:

\[
\begin{array}{lll}
 & \boldsymbol{\exists q\ [\neg(e(q) \to s(q))]} & \textbf{Reason} \\
\Longleftrightarrow & \exists q\ [\neg(\neg e(q) \lor s(q))] & \text{Law of Material Implication} \\
\Longleftrightarrow & \exists q\ [\neg \neg e(q) \land \neg s(q)] & \text{DeMorgan's Law} \\
\Longleftrightarrow & \exists q\ [e(q) \land \neg s(q)] & \text{Law of Double Negation}
\end{array}
\]

Thus, we know $\exists q\ [e(q) \land \neg s(q)] = 1$, meaning there
exists some planar quadrilateral that's equilateral, but not a square.
One such example is a rhombus with opposite angle measures of $60°$ and
$120°$.
{{< /example >}}

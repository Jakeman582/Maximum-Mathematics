+++
title = 'Multiple Quantifiers'
type = 'chapter'
weight = 11

[params]
  section = 11
+++

In an earlier section, we examined propositional functions with two and
three variables. For each variable in an open statement, we needed to
substitute some value from the respective universe in order to determine
the statement's truth value.

Here, we look at quantifying statements with two or more variables.

## Bound and Free Variables
---

{{< definition terms="bound variable, free variable" >}}
For some universe $\mathcal{U}$, consider a propositional function
$p(x, y)$ where $x$ and $y$ are both constrained by $\mathcal{U}$, and
the quantified statements

$$\forall x\ [p(x, y)] \qquad \exists x\ [p(x, y)].$$

In both statements, $x$ is ==bound== by a quantifier, while $y$ is not
bound by any quantifier. We say $x$ is a bound variable, while $y$ is a
==free variable==.
{{< /definition >}}

Up to now, we've only dealt with quantified statements with a single
variable — in every one of those examples, that variable was bound by
whatever quantifier was used, and every quantified statement had a
definite truth value.

In our definition above, any variable not bound by a quantifier is
called a free variable. As such, statements like $\forall x\ [p(x, y)]$
and $\exists x\ [p(x, y)]$ don't have a definite truth value. In both
cases, we still need to either bind the variable $y$ with a quantifier,
or substitute a value in for it from $\mathcal{U}$, before the truth
value can be determined. This is important enough to highlight.

{{< star title="Quantified Statements with Free Variables Are Open Statements" >}}
For some universe $\mathcal{U}$, consider a propositional function
$p(x, y)$ where $x$ and $y$ are both constrained by $\mathcal{U}$, and
the quantified statements

\[
\begin{align*}
&\forall x\ [p(x, y)] \\
&\exists x\ [p(x, y)]
\end{align*}
\]

The truth value of both statements is undetermined. As such, they are
open statements, whose truth values depend on what value is substituted
in for the free variable $y$.
{{< /star >}}

{{< example title="A quantified statement with a free variable" >}}
Consider the universe $N$ of all integers, along with the open statement

$$p(m, n)\text{: } m + n = 0.$$

What happens when we quantify the $m$ variable? With the universal
quantifier, we get $\forall m\ [p(m, n)]$, which translates to "For every
integer $m$, we have that $m + n = 0$." Is this true? We'd need to know
what value $n$ holds to be sure — we can't just pick any value of $n$.
The statement would be false when $m = 1$ and $n = 2$. We just can't be
sure, so $\forall m\ [p(m, n)]$ doesn't have a definite truth value.

Now consider the statement $\exists m\ [p(m, n)]$, which translates to
"There exists an integer $m$ such that $m + n = 0$." Again, until a
value for $n$ is known, we can't be sure — though we could figure out
what value $n$ would need to be in order for $m + n = 0$ to hold. For
example, when $m = 5$, we could set $n = -5$. But the value of $n$ is
still unknown, so the statement $\exists m\ [p(m, n)]$ is open, and has
no definite truth value.
{{< /example >}}

## Repeated Quantifiers
---

In order for a quantified statement to have a definite truth value,
there can be no free variables. We can bind every variable with the same
kind of quantifier, which is useful, since there are many mathematical
statements we can make that rely on more than one variable.

{{< example title="Order doesn't matter when the same quantifier repeats" >}}
A basic law of arithmetic is the commutative law — in a sum or product,
the two constituent parts can be swapped without affecting the result.
In other words, for any two real numbers $x$ and $y$,

$$x + y = y + x.$$

Consider the universe $\mathcal{U}$ of all real numbers. We can express
the commutative laws of arithmetic using quantifiers like this:

$$\forall x\ \forall y\ [x + y = y + x] \qquad \forall x\ \forall y\ [x \cdot y = y \cdot x].$$

The order of the quantified variables doesn't matter, so we could also
express the commutative laws of arithmetic like this:

$$\forall y\ \forall x\ [x + y = y + x] \qquad \forall y\ \forall x\ [x \cdot y = y \cdot x].$$
{{< /example >}}

{{< example title="Repeated existential quantifiers" >}}
Consider the universe $N$ consisting of all integers, along with the
statement

$$\text{The integer 100 is the sum of two perfect squares.}$$

The presence of the definite article "the" suggests that the existential
quantifier is implied here. As such, we could express the statement
using quantifiers like this:

$$\exists m\ \exists n\ [100 = m^2 + n^2].$$

Again, the order of quantification doesn't matter in this case, so we
could also write $\exists n\ \exists m\ [100 = m^2 + n^2]$.

One more way to write this is to specify which universe each variable
belongs to using the $\in$ symbol:

$$\exists m \in N\ \exists n \in N\ [100 = m^2 + n^2].$$
{{< /example >}}

Notice that when the same quantifier is used, the order in which we
express the quantification didn't matter — this gives us our first
logical equivalency for repeated quantifiers.

{{< star title="Order Doesn't Matter in Repeated Quantifiers" >}}
Consider a universe $\mathcal{U}$ for some open statement $p(x, y)$ with
variables $x$ and $y$:

\[
\begin{array}{lcl}
\forall x\ \forall y\ [p(x, y)] & \Longleftrightarrow & \forall y\ \forall x\ [p(x, y)] \\
\exists x\ \exists y\ [p(x, y)] & \Longleftrightarrow & \exists y\ \exists x\ [p(x, y)]
\end{array}
\]

This also applies to open statements involving three, four, or more
variables.
{{< /star >}}

There's a shorthand notation commonly used with repeated quantifiers.
For some universe $\mathcal{U}$ and the open statement $p(x, y)$, we can
use the following conventions:

$$\forall x\ \forall y\ [p(x, y)] \Leftrightarrow \forall x, y\ [p(x, y)] \qquad \exists x\ \exists y\ [p(x, y)] \Leftrightarrow \exists x, y\ [p(x, y)].$$

Naturally, this extends to three variables — for the open statement
$q(a, b, c)$, we can write

$$\forall a\ \forall b\ \forall c\ [q(a, b, c)] \Leftrightarrow \forall a, b, c\ [q(a, b, c)] \qquad \exists a\ \exists b\ \exists c\ [q(a, b, c)] \Leftrightarrow \exists a, b, c\ [q(a, b, c)].$$

Of course, this can be extended to as many variables as needed.

{{< example title="Using the shorthand notation" >}}
Consider the universe of all real numbers, which we'll denote $R$. When
dealing with real numbers, another commonly used arithmetic law is the
distribution of multiplication over addition, typically expressed as
"For every real number $x$, $y$, and $z$, $x(y + z) = xy + xz$."

Here, the quantifier being used is the universal quantifier, applied to
every variable, so we can concisely represent this statement with the
proposition

$$\forall x\ \forall y\ \forall z\ [x(y + z) = xy + xz].$$

Using the shorthand notation above, we could also write this as

$$\forall x, y, z\ [x(y + z) = xy + xz].$$
{{< /example >}}

## Mixed Quantifiers
---

Some statements involve both the existential quantifier and the
universal quantifier.

{{< example title="Additive inverses, quantified" >}}
Consider the universe of all real numbers. It's known that every number
has an additive inverse:

$$\text{For every real number } x \text{, there exists some other number } y \text{ where } x + y = 0.$$

Notice that we used the phrases "For every…" and "There exists…," which
suggests both a universal quantifier and an existential quantifier. The
phrase "For every…" comes first, suggesting it's the first quantifier,
with the existential quantifier coming second. As such, we can rewrite
the statement above as

$$\forall x\ \exists y\ [x + y = 0].$$

Since $x$ is universally quantified, we can pick arbitrary values to
test. If $x = 3008$, then $y = -3008$ will work. Similarly, taking
$x = -\pi^2$, we can set $y = \pi^2$. In fact, as soon as a value of $x$
is selected, we can just take $y = -x$, since $x$ being a real number
means $-x$ is too. So no matter what real number we pick for $x$, we can
always find an appropriate value for $y$.
{{< /example >}}

{{< example title="Swapping mixed quantifiers changes the meaning" >}}
Let's reconsider the additive inverse example. Suppose we swapped
quantifiers, like we did when examining repeated quantifiers. Doing so
forms the statement

$$\exists y\ \forall x\ [x + y = 0].$$

This can be translated into English as "There exists some real number
$y$, such that for every real number $x$, we have $x + y = 0$." Here,
the proposition asserts the existence of some such real number — and
supposedly, once it's found, every real number added to it yields a sum
of $0$.

We know $y$ can't be $17$, because $3 + 17 \neq 0$ (here, $y = 17$ and
$x = 3$). Similarly, $y$ can't be $-0.745$, because $20 - 0.745 \neq 0$
(here, $y = -0.745$ and $x = 20$).

As a matter of fact, no such value of $y$ can exist. As soon as we pick
a value for $y$, there are infinitely many ways to pick the value of
$x$ — and since $x$ is universally quantified, the statement asserts that
*every* value of $x$ will work, which so far isn't the case. Out of
those infinitely many sums, only one will be $0$: when $x$ is equal to
$-y$. Since $x$ is universally quantified, we could also pick the real
number $-y + 1$, which yields a sum of $1$, not $0$.

Surprisingly, if this statement were true, every single real number
would need to be equal to $0$ — an obviously ridiculous scenario!
{{< /example >}}

Based on the two previous examples, we know that we can't just swap
mixed quantifiers arbitrarily. Perhaps under very specific circumstances
it could be done, but in general, it isn't something we can do. This is
worth highlighting.

{{< star title="Mixed Quantifiers are Generally Unswappable" >}}
Consider a given universe $\mathcal{U}$, and an open statement $p(x, y)$
defined on that universe. In general, we can't swap mixed quantifiers —
they aren't logically equivalent:

$$\forall x\ \exists y\ [p(x, y)] \not\Longleftrightarrow \exists y\ \forall x\ [p(x, y)].$$
{{< /star >}}

As such, we need to exercise caution regarding the order of quantifiers.

## Negating Multiple Quantifiers
---

One more thing to talk about is how to negate propositions involving
multiple quantifiers.

For a given universe $\mathcal{U}$ and an open statement $p(x)$ defined
on that universe, we saw earlier that

$$\neg \forall x\ [p(x)] \Leftrightarrow \exists x\ [\neg p(x)] \qquad \neg \exists x\ [p(x)] \Leftrightarrow \forall x\ [\neg p(x)].$$

When negating a multiply quantified statement, we just need to keep
punting the negation inside the quantified statement, one layer at a
time, until all that's left is to negate the contained proposition:

\[
\begin{array}{lll}
 & \boldsymbol{\neg \forall x\ \forall y\ [p(x, y)]} & \textbf{Reason} \\
\Longleftrightarrow & \exists x\ [\neg \forall y\ [p(x, y)]] & \neg \forall x\ [p(x)] \Leftrightarrow \exists x\ [\neg p(x)] \\
\Longleftrightarrow & \exists x\ \exists y\ [\neg p(x, y)] & \neg \forall x\ [p(x)] \Leftrightarrow \exists x\ [\neg p(x)]
\end{array}
\]

So, after punting the negation further inside each nested layer, we've
determined that whatever open statement $p(x, y)$ represents,

$$\neg \forall x\ \forall y\ [p(x, y)] \Leftrightarrow \exists x\ \exists y\ [\neg p(x, y)].$$

This same strategy works for the other forms of multiply quantified
statements, so we summarize the important combinations below.

{{< star title="Negating Multiple Quantifiers" >}}
For a given universe $\mathcal{U}$, and an open statement $p(x, y)$
defined on that universe:

\[
\begin{array}{lcl}
\neg \forall x\ \forall y\ [p(x, y)] & \Longleftrightarrow & \exists x\ \exists y\ [\neg p(x, y)] \\
\neg \forall x\ \exists y\ [p(x, y)] & \Longleftrightarrow & \exists x\ \forall y\ [\neg p(x, y)] \\
\neg \exists x\ \forall y\ [p(x, y)] & \Longleftrightarrow & \forall x\ \exists y\ [\neg p(x, y)] \\
\neg \exists x\ \exists y\ [p(x, y)] & \Longleftrightarrow & \forall x\ \forall y\ [\neg p(x, y)]
\end{array}
\]
{{< /star >}}

{{< example title="Negating a mixed, multiply quantified statement" >}}
Suppose we have a universe $\mathcal{U}$, and open statements $a(x, y)$,
$b(x, y)$, and $c(x, y)$ defined on that universe. We want to negate the
statement

$$\exists x\ \forall y\ [a(x, y) \land b(x, y) \longrightarrow c(x, y)].$$

Before we start, we make the following shorthand substitutions to keep
things tidy:

$$a(x, y): a \qquad b(x, y): b \qquad c(x, y): c$$

giving us $\exists x\ \forall y\ [(a \land b) \longrightarrow c]$. Now we
perform the negation:

\[
\begin{array}{lll}
 & \boldsymbol{\neg \exists x\ \forall y\ [(a \land b) \longrightarrow c]} & \textbf{Reason} \\
\Longleftrightarrow & \forall x\ \exists y\ [\neg[(a \land b) \longrightarrow c]] & \neg \exists x\ \forall y\ [p(x, y)] \Leftrightarrow \forall x\ \exists y\ [\neg p(x, y)] \\
\Longleftrightarrow & \forall x\ \exists y\ [\neg[\neg(a \land b) \lor c]] & p \longrightarrow q \Leftrightarrow \neg p \lor q \\
\Longleftrightarrow & \forall x\ \exists y\ [\neg \neg (a \land b) \land \neg c] & \text{DeMorgan's Law} \\
\Longleftrightarrow & \forall x\ \exists y\ [(a \land b) \land \neg c] & \text{Law of Double Negation} \\
\Longleftrightarrow & \forall x\ \exists y\ [a \land b \land \neg c] & \text{Associative Law of } \land
\end{array}
\]

Substituting $a(x, y)$, $b(x, y)$, and $c(x, y)$ back in for $a$, $b$,
and $c$ respectively, we find that the negation of

$$\exists x\ \forall y\ [a(x, y) \land b(x, y) \longrightarrow c(x, y)]$$

is the statement

$$\forall x\ \exists y\ [a(x, y) \land b(x, y) \land \neg c(x, y)].$$
{{< /example >}}

## A Final Word on Propositions in General
---

Throughout this chapter, we've spent a great deal of time working with
logical expressions in the abstract. We've modeled them with truth
tables to see when they're satisfiable, and we've used logical
equivalencies to simplify complicated propositions, as well as to expand
simple propositions into complex ones. We've also examined how to work
with variables, and what effect quantifying those variables has on a
proposition's truth value.

Remember that all of the letters we've used in our logical expressions —
$x$, $y$, $z$, as well as $a$, $b$, $c$, and even $p$, $q$, $r$, $s$, and
$t$ — all represent statements. Those statements could be primitive, as
in

\[
\begin{align*}
&\text{Thomas Jefferson was the second president of the United States.} \\
&\text{2 + 2 = 4.} \\
&\text{Quadrilateral } ABCD \text{ has a right angle.}
\end{align*}
\]

or they could be compound, as in

\[
\begin{align*}
&\text{If the sun is shining, and Mr. Wilson is not fishing at the lake,} \\
&\text{then Dennis will take his R.C. boat out to the lake.}
\end{align*}
\]

The purpose of all of this was to get a grip on mathematical logic.
Translating English sentences representing mathematical statements into
symbolic form gives us the ability to manipulate those statements using
the logic studied in this chapter.

Translating a mathematical statement into symbolic form also forces us
to be precise in our use of language when describing the exact problem
we want to solve. Any misunderstanding invalidates any reasoning we may
be able to employ, because at that point, the intended problem is no
longer being discussed — a different problem, even if only slightly
different, is being reasoned about instead.

With these logical tools at our disposal, we're better able to
accurately use language to precisely describe a problem of interest, and
to then use the laws of logic to analyze it. Mathematical logic is the
foundation of all mathematics yet to be learned, and will be employed
heavily throughout the remainder of this book, and in future books.

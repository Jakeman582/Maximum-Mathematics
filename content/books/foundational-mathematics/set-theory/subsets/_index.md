+++
title = 'Subsets'
type = 'chapter'
weight = 3

[params]
  section = 3
+++

A set can contain a wide variety of objects. They can contain objects
that most people interact with on a daily basis — automotive parts
that can be used to service a 1967 Camaro, tools used to carve statues
out of wood, or art supplies needed to paint a picture. Likewise, they
can contain a wide variety of mathematical objects, like numbers,
shapes, or axioms.

Sometimes, we only care about some of the objects in a set. For
example, we may only be interested in automotive parts needed to
service a car's headlights, or we may only be interested in art
supplies needed for a fresco painting. Regardless, we're able to build
a lot of structure by constructing new sets from old ones — simply by
restricting what elements are included in the new set. Here, we
explore this kind of relationship between sets.

## Starting with a Base Set
---

If we're interested in selecting only some of the elements from a set,
we'll need to know what the original, or underlying, set contains.
This is exactly the same idea behind the *Universe of Discourse*
discussed when we studied open propositions in Chapter 1. There, a
Universe of Discourse (or simply *Universe*) was the *set* of all
values we allow to be substituted in for the variables of a
propositional function.

It's the exact same situation here. We even commonly use the same
script letter $\mathcal{U}$ to denote the base set, though we can
still use any symbol we want.

{{< example title="Why a base set removes ambiguity" >}}
Suppose we were presented with the following set:

$$X = \{x \mid 1 \leq x \leq 10\}.$$

Is $1.5 \in X$?

It's hard to tell without knowing what kinds of numbers we even want
included in this set. Does it include all the real numbers between $1$
and $10$ inclusive? Or does it only include whole numbers from $1$ to
$10$ inclusive?

Let's remedy the situation by stating that set $X$ is only going to
draw elements from the set $\mathcal{U}$ of all integers. Then we know
that

$$X = \{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\}.$$

Now that we have an established universe, we can simply write
$X = \{x \mid 1 \leq x \leq 10\}$ without any ambiguity. We could also
write $X = \{x \in \mathcal{U} \mid 1 \leq x \leq 10\}$, or even
$X = \{x \mid (1 \leq x \leq 10) \text{ and } (x \in \mathcal{U})\}$.
Because we've established a base set, all of these different ways of
describing a set yield the exact same set $X$ of integers between $1$
and $10$ inclusive.

As such, since we now know what kinds of numbers we're including in
$X$, we can definitively say that $1.5 \notin X$.
{{< /example >}}

{{< example title="Changing the base set changes the resulting set" >}}
Reconsider the previous example, where we redefine $\mathcal{U}$ to be

$$\mathcal{U} = \{x \mid x \text{ is an even integer}\}.$$

In this case, since the allowable elements are the even integers, we
have that

$$X = \{x \mid 1 \leq x \leq 10\} = \{2, 4, 6, 8, 10\}.$$

Alternatively, we could define $\mathcal{U}$ to be the set of all
perfect squares:

$$\mathcal{U} = \{x \mid x \text{ is a perfect square}\} = \{1, 4, 9, 16, 25, 36, 49, 64, 81, 100, \dots\}.$$

If $\mathcal{U}$ was the set of all perfect squares, then we'd instead
have

$$X = \{x \mid 1 \leq x \leq 10\} = \{1, 4, 9\}.$$
{{< /example >}}

## Subsets
---

The definition of a subset is closely related to what we've discussed
so far in this section. We start with a universe of discourse, and
then construct a set using only elements from that universe. We could
go even further, constructing a third set by only taking elements from
that second set.

{{< definition terms="subset" >}}
If $A$ and $B$ are sets constructed using only elements of some given
universe $\mathcal{U}$, we say that $A$ is a ==subset== of $B$ if (and
only if) every element of $A$ is also an element of $B$. When $A$ is a
subset of $B$, we write

$$A \subseteq B.$$

Logically, we would write

$$\forall x\ [(x \in A) \Longrightarrow (x \in B)].$$

Alternatively, if $A$ is not a subset of $B$, we write

$$A \not\subseteq B.$$
{{< /definition >}}

Notice that the above definition uses a universally quantified logical
implication. This offers us a chance to review logical implications,
and what they mean in the context of sets and subsets. Since there's a
logical implication involved, the proposition

$$(x \in A) \to (x \in B)$$

is always true; thus, when we have $A \subseteq B$, there are only
three scenarios to worry about:

\[
\begin{array}{c|c|c|l}
x \in A & x \in B & (x \in A) \to (x \in B) & \textbf{Interpretation} \\
\hline
0 & 0 & 1 & \text{The element referred to by } x \text{ is in neither } A \text{ nor } B. \\
0 & 1 & 1 & \text{The element referred to by } x \text{ is not in } A \text{, but is in } B. \\
1 & 1 & 1 & \text{The element referred to by } x \text{ is in both } A \text{ and } B.
\end{array}
\]

Notice that there's no row where $x \in A = 1$ and $x \in B = 0$ —
since we're asserting $A \subseteq B$, that scenario simply can't
happen.

{{< example title="Confirming a subset relationship" >}}
Consider the universe $\mathbb{N}$ of all positive integers
$\{1, 2, 3, 4, 5, 6, 7, 8, 9, \dots\}$. Now consider the following
sets:

\[
\begin{array}{rl}
X = \{x \mid x^2 \leq 100\} & = \{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\} \\
Y = \{y \mid y^2 \leq 37\} & = \{1, 2, 3, 4, 5, 6\}
\end{array}
\]

In order for $Y \subseteq X$, we need to verify that
$\forall n\ [(n \in Y) \Longrightarrow (n \in X)]$.

If $n$ refers to anything that isn't in $Y$, then $n \notin Y$,
meaning $n \in Y = 0$, and hence $(n \in Y) \to (n \in X) = 1$ — so we
don't have to worry about checking elements that aren't in $Y$. Let's
examine each element of $Y$, and see if it's in $X$ as well:

\[
\begin{array}{c|c|c|c}
n & n \in Y & n \in X & (n \in Y) \to (n \in X) \\
\hline
1 & 1 & 1 & 1 \\
2 & 1 & 1 & 1 \\
3 & 1 & 1 & 1 \\
4 & 1 & 1 & 1 \\
5 & 1 & 1 & 1 \\
6 & 1 & 1 & 1
\end{array}
\]

The column representing $(n \in Y) \to (n \in X)$ is all $1$s for each of
the elements of $Y$. Hence it's a tautology, meaning it's a logical
implication, and we can write $(n \in Y) \Longrightarrow (n \in X)$. Thus,
we've shown that $Y$ is a subset of $X$, and we can write
$Y \subseteq X$.

It's also worth noting that we also have $X \subseteq \mathbb{N}$ and
$Y \subseteq \mathbb{N}$.
{{< /example >}}

{{< example title="A set that is not a subset" >}}
Consider the universe $\mathbb{N}$ of all positive integers
$\{1, 2, 3, 4, 5, 6, 7, 8, 9, \dots\}$. Now consider the following
sets:

\[
\begin{array}{rl}
X = \{x \mid x^2 \leq 100\} & = \{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\} \\
Y = \{y \mid y^2 \leq 145\} & = \{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12\}
\end{array}
\]

In order for $Y \subseteq X$, we'd need to verify that
$\forall n\ [(n \in Y) \Longrightarrow (n \in X)]$. However, suppose we
substituted $11$ in for $n$. We see that $11 \in Y$, but
$11 \notin X$, meaning $(11 \in Y) \to (11 \in X) = 0$ — so we don't have
a logical implication, and $Y \not\subseteq X$.

However, we do have $X \subseteq Y$. Remember that a subset is a set
in its own right — it just happens that all of that subset's elements
are also contained within some other set as well.
{{< /example >}}

## Every Set Is a Subset of Itself
---

It's also natural to wonder whether a set counts as a subset of
*itself*. Recall that $A \subseteq B$ requires every element of $A$ to
also be an element of $B$ — in other words, that $(x \in A) \to (x \in B)$
holds for every $x$. When $B$ is $A$ itself, that condition becomes
$(x \in A) \to (x \in A)$, which is always true, since any proposition
implies itself. So every element of $A$ automatically satisfies the
requirement for membership in $A$, which gives us the following
theorem.

{{< theorem title="Every set is a subset of itself" >}}
For any universe set $\mathcal{U}$, and set $A \subseteq \mathcal{U}$,
we have that

$$A \subseteq A.$$
{{< /theorem >}}

{{< proof >}}
Consider some arbitrary element $x$ from $\mathcal{U}$. If we have
$x \in A$, then obviously $x \in A$ (because we literally just
considered that case). Thus, since every element contained in $A$ is
(obviously) contained within $A$, the definition of subset tells us
that $A \subseteq A$, as desired.
{{< /proof >}}

{{< example title="Applying the theorem" >}}
Consider the set $B = \{x, y, z\}$, where $x$, $y$, and $z$ aren't
being used as variables here, but are simply the 24th, 25th, and 26th
letters of the alphabet. By the previous theorem, we have that
$\{x, y, z\} \subseteq \{x, y, z\}$.
{{< /example >}}

## Proper Subsets
---

Of course, when we assert $A \subseteq B$, all we're saying is that
whenever $x \in A$, we also have $x \in B$. However, this definition
doesn't say whether every single element of $B$ must be contained
within $A$ too. We have a special term to describe when $A$ is a
subset of $B$, but $B$ has elements not contained within $A$.

{{< definition terms="proper subset" >}}
Consider two sets $A$ and $B$. $A$ is said to be a ==proper subset==
of $B$ if (and only if) every element contained within $A$ is also in
$B$, but $B$ has at least one element that is not contained within
$A$. We denote this by writing

$$A \subset B.$$

Logically, we would write this as

$$(\forall a \in A\ [a \in B]) \land (\exists b \in B\ [b \notin A]).$$
{{< /definition >}}

{{< example title="Confirming a proper subset relationship" >}}
Consider the following sets:

\[
\begin{array}{rl}
M\text{: } &\{x \mid x \text{ is an odd integer}\} \\
N\text{: } &\{x \mid x \text{ is an integer}\}
\end{array}
\]

Because every odd integer is a specific kind of integer, every element
contained within $M$ is also an element of $N$, so we can write
$M \subseteq N$. However, notice that $0 \in N$, but $0 \notin M$,
meaning $N$ has at least one number not contained within $M$. So $M$
is a proper subset of $N$, and we can also write $M \subset N$.
{{< /example >}}

Notice that by the previous example, for two sets $A$ and $B$, it's
possible for both $A \subseteq B$ and $A \subset B$ to be true.
However, that's not always the case, as demonstrated by the next
example.

{{< example title="A subset that is not a proper subset" >}}
Consider the set $\Psi = \{a, b, c, 1, 2, 3, x, y, z, \{1, 2, 3\}\}$.
By the theorem above, we clearly have $\Psi \subseteq \Psi$. However,
notice that we don't have $\Psi \subset \Psi$: obviously any element
contained within $\Psi$ is going to be contained within $\Psi$ (that's
tautologically true), but there's no element within $\Psi$ that *isn't*
also contained within $\Psi$ (again, tautologically true). Thus, it's
not the case that $\Psi$ is a proper subset of itself — no set can be
a proper subset of itself.

Now consider the set $\Omega = \{b, 1, z, \{1, 2, 3\}\}$. We can
clearly see that every element contained within $\Omega$ is also an
element of $\Psi$, so we can write $\Omega \subseteq \Psi$. Notice
though that $a \in \Psi$, but $a \notin \Omega$, so we also have
$\Omega \subset \Psi$.
{{< /example >}}

Based on the previous two examples, it seems that if we know
$A \subset B$, we also know $A \subseteq B$. Let's formally show this
is the case.

{{< theorem title="A proper subset is also a subset" >}}
If $A \subset B$, then $A \subseteq B$.
{{< /theorem >}}

{{< proof >}}
Since we know $A \subset B$, we have by definition that for any
element $a$ in $A$, $a$ will also be in $B$. Thus, by definition, we
have $A \subseteq B$ as well.
{{< /proof >}}

Notice that if we know $A \subseteq B$, we don't automatically know
$A \subset B$. For example, we have $A \subseteq A$, but
$A \not\subset A$.

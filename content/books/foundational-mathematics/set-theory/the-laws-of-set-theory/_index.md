+++
title = 'The Laws of Set Theory'
type = 'chapter'
weight = 8

[params]
  section = 8
+++

Understanding the laws of set theory is essential because they solve
the problem of determining when two or more sets are equal, through
fundamental equations including associativity, commutativity, and
distribution. These laws provide a structured framework for defining
and manipulating sets, ensuring consistency and precision in
operations such as subset, difference, and symmetric difference.

In other words, by developing laws of set theory, we can essentially
manipulate equations involving sets as if they were algebraic
equations. In addition, the laws of set theory will allow us to
convert complicated expressions involving sets into simpler ones, much
like how we took complicated logical expressions and simplified them
into smaller, logically equivalent expressions.

By studying these laws, one can formulate and prove mathematical
concepts and theorems accurately. Furthermore, the foundations of many
branches of mathematics are developed using the language of sets and
set theory. In addition to the further development of mathematics,
these laws also prove crucial to subjects like computer science and
data science.

## Equal Sets
---

We've briefly described some aspects of set equality when we first
introduced what sets were. We talked about how repetition and order
are irrelevant with respect to what elements are contained within a
set. As such, even if some elements are repeated in various
descriptions, they still represent the same set.

However, as we've also seen, there are a wide variety of methods to
describe a set and what elements are contained within it. Just because
we come up with different descriptions, that doesn't necessarily mean
we're describing different sets — sometimes we may be describing
exactly the same set.

{{< example title="Two different descriptions of the same set" >}}
Consider the set

$$M = \{x \mid x \text{ is an even number between } -3 \text{ and } 10 \text{ inclusive}\}.$$

We already know what elements are in $M$:

$$M = \{-2, 0, 2, 4, 6, 8, 10\}.$$

Now consider the set

$$N = \{4x + 3 \mid x \in \{-1.25, -0.75, -0.25, 0.25, 0.75, 1.25, 1.75\}\}.$$

The description of $N$ is a little more complicated, but we can still
determine what elements are in $N$. The only tricky part is
recognizing that the elements of $N$ are based off elements that are
in the set $\{-1.25, -0.75, -0.25, 0.25, 0.75, 1.25, 1.75\}$, so we
just have to iterate over those elements to figure out what's in $N$.
We'll tabulate all values below:

\[
\begin{array}{l|l|l}
x & 4x & 4x + 3 \\
\hline
-1.25 & -5 & -2 \\
-0.75 & -3 & 0 \\
-0.25 & -1 & 2 \\
0.25 & 1 & 4 \\
0.75 & 3 & 6 \\
1.25 & 5 & 8 \\
1.75 & 7 & 10
\end{array}
\]

Since $N$ consists of the values $4x + 3$, we now know that

$$N = \{-2, 0, 2, 4, 6, 8, 10\}.$$

Notice that $M$ and $N$ have the same number of elements ($7$), and
all elements are exactly the same. Thus, since $M$ and $N$ represent
the exact same set, we could write

$$M = N.$$

It's worth pointing out that since every element in $M$ is also in
$N$, and every element in $N$ is also in $M$, we have that

\[
\begin{array}{rl}
M &\subseteq N \\
N &\subseteq M
\end{array}
\]
{{< /example >}}

However, defining set equality by having the same elements isn't
exactly rigorous. Two sets can share some number of elements while
also having different elements. As such, we don't define set equality
by simply having the same elements — instead, we look to the end of
the previous example for inspiration.

{{< definition terms="equal" >}}
Consider the two sets $A$ and $B$ taken from some universal set
$\mathcal{U}$.

Sets $A$ and $B$ are called ==equal==, and we write $A = B$, when

$$A \subseteq B$$

and

$$B \subseteq A.$$
{{< /definition >}}

This definition is precise because we can determine whether a set is a
subset of another set under scrutiny. As such, because the definition
of set equality requires we show two things to be true, proofs showing
two sets to be equal are usually broken up into two parts.

It's this definition of set equality that makes the next two theorems
somewhat straightforward to prove.

{{< theorem title="A subset relationship gives an intersection" >}}
For any $A, B \subseteq \mathcal{U}$, if $A \subseteq B$, then
$A \cap B = A$.
{{< /theorem >}}

{{< proof >}}
**Step 1: Show that $A \cap B \subseteq A$.**

Let $x$ be an arbitrarily picked element within $A \cap B$ (meaning
$x \in A \cap B$).

By definition, $x \in A$ and $x \in B$, and as such we know that
$x \in A$.

Thus, we have shown that if $x \in A \cap B$, then $x \in A$. This
means that $A \cap B \subseteq A$, completing Step 1.

**Step 2: Show that $A \subseteq A \cap B$.**

Let $x$ be an arbitrarily picked element of $A$. Because we have by
premise that $A \subseteq B$, we also have that $x \in B$.

Thus, since $x \in A$ and $x \in B$, we have that $x \in A \cap B$ by
definition.

We've just shown that when $x \in A$, we also have that
$x \in A \cap B$. We then have by definition that
$A \subseteq A \cap B$, completing Step 2.

**Conclusion.** Because we've shown that $A \subseteq A \cap B$ and
that $A \cap B \subseteq A$, we have by definition that

$$A \cap B = A$$

as desired.
{{< /proof >}}

Thus, by this theorem, whenever we know that $A \subseteq B$, we can
replace $A \cap B$ with just $A$ anywhere we see $A \subseteq B$ in an
equation. It's worth stressing that we can only make such a
replacement when we know $A \subseteq B$ — otherwise, doing so may not
be correct.

There are a few more such equalities we can make use of, which we now
show in the next theorem.

{{< theorem title="Four equivalent ways to say a subset relationship" >}}
For any $A, B \subseteq \mathcal{U}$, we have that

$$(A \subseteq B) \Longleftrightarrow (A \cap B = A) \Longleftrightarrow (A \cup B = B) \Longleftrightarrow (B^C \subseteq A^C).$$
{{< /theorem >}}

{{< proof >}}
We'll break this proof up into four steps.

**Step 1: $(A \subseteq B) \Longrightarrow (A \cap B = A)$.**

This is simply the previous theorem.

**Step 2: $(A \cap B = A) \Longrightarrow (A \cup B = B)$.**

The premise of this logical implication is that $A \cap B = A$, so we
can bring that fact in whenever needed.

*First we show that $A \cup B \subseteq B$.*

Let $x$ be an arbitrarily picked element in $A \cup B$. Thus, by
definition, $x \in A$ or $x \in B$. If $x$ happens to be an element of
$B$, then it's tautologically true that $x \in B$.

If $x \in A$, then the premise tells us that $x \in A \cap B$, meaning
$x \in B$ as well.

Either way, we have that whenever $x \in A \cup B$, we also have that
$x \in B$, meaning $A \cup B \subseteq B$.

*Second, we show that $B \subseteq A \cup B$.*

Let $x$ be an arbitrarily picked element within $B$. Thus, because
$x \in B$, we also have that $x \in A \cup B$.

We've just shown that whenever $x \in B$, we also have that
$x \in A \cup B$. This means that $B \subseteq A \cup B$.

Finally, because we've shown that $A \cup B \subseteq B$ and
$B \subseteq A \cup B$, we have that

$$A \cup B = B$$

as desired.

**Step 3: $(A \cup B = B) \Longrightarrow (B^C \subseteq A^C)$.**

Remember that $A^C$ is the complement of $A$ within $\mathcal{U}$.
Also remember that $A \cup B = B$ is a premise of this logical
implication, so we can use that fact whenever we want (we can't use
$A \cap B = A$ as a premise here, since that isn't included in the
implication we're considering).

We're trying to show that $B^C \subseteq A^C$, so let $x$ be an
arbitrarily picked element of $B^C$.

Because $x \in B^C$, we have by definition that $x \notin B$. Now,
because $A \cup B = B$ and $x \notin B$, we also have that
$x \notin A \cup B$.

Next, because $x \notin A \cup B$, we also know that $x \notin A$.
Therefore, since $x \notin A$, we must have that $x \in A^C$.

We've just shown that whenever $x \in B^C$, we also have that
$x \in A^C$ (assuming $A \cup B = B$ as a premise).

Thus by definition, whenever we know $A \cup B = B$, we have that
$B^C \subseteq A^C$ as desired.

**Step 4: $(B^C \subseteq A^C) \Longrightarrow (A \subseteq B)$.**

We have $B^C \subseteq A^C$ as a premise, so we'll invoke that fact
when needed.

Let $x$ be an arbitrarily picked element of $A$. Since $x \in A$, we
have by definition that $x \notin A^C$.

Now, because $B^C \subseteq A^C$ and $x \notin A^C$, we have (by Modus
Tollens) that $x \notin B^C$.

Now, because $x \notin B^C$, we have by definition that $x \in B$.

Thus, we've shown that, assuming $B^C \subseteq A^C$ as a premise,
whenever $x \in A$, we must also have that $x \in B$.

Therefore, assuming $B^C \subseteq A^C$ as a premise, we have that
$A \subseteq B$ as desired.

**Conclusion.** Because we've shown that

\[
\begin{array}{l}
(A \subseteq B) \Longrightarrow (A \cap B = A) \\[0.75em]
(A \cap B = A) \Longrightarrow (A \cup B = B) \\[0.75em]
(A \cup B = B) \Longrightarrow (B^C \subseteq A^C) \\[0.75em]
(B^C \subseteq A^C) \Longrightarrow (A \subseteq B)
\end{array}
\]

we have that they're all logically equivalent, meaning we have that

$$(A \subseteq B) \Longleftrightarrow (A \cap B = A) \Longleftrightarrow (A \cup B = B) \Longleftrightarrow (B^C \subseteq A^C)$$

as desired.
{{< /proof >}}

Because of this theorem, whenever we know one of

$$A \subseteq B \qquad A \cap B = A \qquad A \cup B = B \qquad B^C \subseteq A^C$$

is true, we automatically know that the other three are true as well.

## Disjoint Sets
---

The total opposite of two sets $A$ and $B$ being equal is when $A$ and
$B$ have absolutely no elements in common. Of course, if two sets
share no element in common, then their intersection is a set with no
elements in it — the empty set.

{{< definition terms="disjoint" >}}
Consider the two sets $A$ and $B$ taken from some universal set
$\mathcal{U}$.

$A$ and $B$ are called ==disjoint== whenever

$$A \cap B = \emptyset.$$
{{< /definition >}}

Many of the concepts discussed so far may seem disparate. However,
they're more connected than may initially appear.

{{< theorem title="Disjoint sets and the symmetric difference" >}}
Let $A, B \subseteq \mathcal{U}$.

$$(A \cap B = \emptyset) \Longleftrightarrow (A \cup B = A \triangle B)$$
{{< /theorem >}}

{{< proof >}}
Because we have a logical biconditional, we break this proof into two
steps. First, we assume $A \cap B = \emptyset$ as a premise and show
that $A \cup B = A \triangle B$. Next, we assume
$A \cup B = A \triangle B$ as a premise and show that
$A \cap B = \emptyset$.

**Step 1: $(A \cap B = \emptyset) \Longrightarrow (A \cup B = A \triangle B)$.**

*First, we try to show that $A \cup B \subseteq A \triangle B$.*

Let $x$ be an arbitrarily picked element within $A \cup B$. Thus, we
have by definition that $x \in A$ or $x \in B$, but because
$A \cap B = \emptyset$, $x$ can't be in both $A$ and $B$.

Thus we either have that $x \in A$ and $x \notin B$, meaning
$x \in A \triangle B$, or we have that $x \notin A$ and $x \in B$,
meaning we still have that $x \in A \triangle B$.

Either way, we have that $x \in A \triangle B$. Hence, we've just
shown that (assuming $A \cap B = \emptyset$) whenever
$x \in A \cup B$, we also have that $x \in A \triangle B$ as well, and
so we have that

$$A \cup B \subseteq A \triangle B.$$

*Second, we try to show that $A \triangle B \subseteq A \cup B$.*

Now, let $x$ be an arbitrarily picked element in $A \triangle B$.
Thus, by definition, either $x \in A$ and $x \notin B$, meaning
$x \in A \cup B$, or $x \notin A$ and $x \in B$, meaning
$x \in A \cup B$.

Either way, we know that whenever $x \in A \triangle B$, we also know
that $x \in A \cup B$ as well.

Thus, by definition we have that

$$A \triangle B \subseteq A \cup B.$$

Finally, because we know that $A \cup B \subseteq A \triangle B$ and
$A \triangle B \subseteq A \cup B$, we have by definition that

$$A \cup B = A \triangle B.$$

This shows that $(A \cap B = \emptyset) \Longrightarrow (A \cup B = A \triangle B)$,
completing Step 1.

**Step 2: $(A \cap B = \emptyset) \Longleftarrow (A \cup B = A \triangle B)$.**

Here, we're assuming $A \cup B = A \triangle B$ as a premise, and are
trying to show that $A \cap B = \emptyset$.

Because we know that $A \cup B = A \triangle B$, we have by the
definition of set equality that $A \cup B \subseteq A \triangle B$ and
$A \triangle B \subseteq A \cup B$.

Thus, for any element $x \in A \cup B$, we also know that
$x \in A \triangle B$. However, since $x \in A \triangle B$, we know
that either

$$x \in A \text{ and } x \notin B \qquad \text{or} \qquad x \notin A \text{ and } x \in B.$$

Either way, no element $x \in A \cup B$ can be in both $A$ and $B$.

Thus, because no element $x$ exists such that $x \in A \cap B$, we
must have that $A \cap B$ is empty, meaning $A \cap B = \emptyset$.

This shows that $(A \cup B = A \triangle B) \Longrightarrow (A \cap B = \emptyset)$,
completing Step 2.

**Conclusion.** Because we've shown that
$(A \cap B = \emptyset) \Longrightarrow (A \cup B = A \triangle B)$ and
$(A \cup B = A \triangle B) \Longrightarrow (A \cap B = \emptyset)$, we
must have that

$$(A \cap B = \emptyset) \Longleftrightarrow (A \cup B = A \triangle B)$$

as desired.
{{< /proof >}}

This theorem connects the concepts of equal sets, disjoint sets,
unions, and symmetric differences.

## Membership Tables
---

Remember that $x \in A$ is a statement about $x$ being a member of set
$A$. Because it's a statement, it has a truth value of either $0$ or
$1$.

One powerful tool we had at our disposal for analyzing logical
expressions was a truth table. We can adapt truth tables to analyze
set relationships as well. In this case, **membership tables** offer a
tabular way of representing element arguments.

\[
\begin{array}{l|l|l|l}
x \in A & x \in B & x \in A \cup B & x \in A \cap B \\
\hline
0 & 0 & 0 & 0 \\
0 & 1 & 1 & 0 \\
1 & 0 & 1 & 0 \\
1 & 1 & 1 & 1
\end{array}
\]

Instead of using some generic symbol for a generic object whose
membership in some set we want to analyze, we could simply list
whatever sets we're analyzing. As such, we could rewrite the above
table like so:

\[
\begin{array}{l|l|l|l}
A & B & A \cup B & A \cap B \\
\hline
0 & 0 & 0 & 0 \\
0 & 1 & 1 & 0 \\
1 & 0 & 1 & 0 \\
1 & 1 & 1 & 1
\end{array}
\]

All of the set operations have their corresponding tables, which we
can include inside one large table:

\[
\begin{array}{l|l|l|l|l|l|l}
A & B & A^C & A \cup B & A \cap B & A - B & A \triangle B \\
\hline
0 & 0 & 1 & 0 & 0 & 0 & 0 \\
0 & 1 & 1 & 1 & 0 & 0 & 1 \\
1 & 0 & 0 & 1 & 0 & 1 & 1 \\
1 & 1 & 0 & 1 & 1 & 0 & 0
\end{array}
\]

Based on the values above, we see that there are obvious analogues
with logical operators:

\[
\begin{array}{rl}
A^C &\text{ pairs with } \neg a \\
A \cup B &\text{ pairs with } a \lor b \\
A \cap B &\text{ pairs with } a \land b \\
A - B &\text{ pairs with } \neg(a \to b) \\
A \triangle B &\text{ pairs with } a \veebar b
\end{array}
\]

Notice that the set difference resembles the logical complement of an
implication.

In addition to the set operations, we can determine subset
relationships. Let's take a look at one more table to see an example:

\[
\begin{array}{l|l|l|l|l|l}
x \in A & x \in B & x \in A \cup B & x \in A \cap B & (x \in A \cap B) \to (x \in A) & (x \in A) \to (x \in A \cup B) \\
\hline
0 & 0 & 0 & 0 & 1 & 1 \\
0 & 1 & 1 & 0 & 1 & 1 \\
1 & 0 & 1 & 0 & 1 & 1 \\
1 & 1 & 1 & 1 & 1 & 1
\end{array}
\]

Notice that the columns
$(x \in A \cap B) \to (x \in A)$ and $(x \in A) \to (x \in A \cup B)$ have all
$1$s. As such, we can write

$$(x \in A \cap B) \Longrightarrow (x \in A) \qquad \text{and} \qquad (x \in A) \Longrightarrow (x \in A \cup B)$$

which is exactly the definition of subset. As such, we can determine
that a set $A$ is a subset of some other set $B$ by comparing their
respective columns. If $A$ has $1$s in every row where $B$ also has a
$1$, then we know that $A \subseteq B$.

Let's prove a simple observation we may have had in our study of set
relationships and operations.

{{< theorem title="Intersection and union sandwich a set" >}}
Let $A, B \subseteq \mathcal{U}$.

$$(A \cap B) \subseteq A \subseteq (A \cup B)$$
{{< /theorem >}}

{{< proof >}}
Let's examine a membership table:

\[
\begin{array}{l|l|l|l}
A & B & A \cup B & A \cap B \\
\hline
0 & 0 & 0 & 0 \\
0 & 1 & 1 & 0 \\
1 & 0 & 1 & 0 \\
1 & 1 & 1 & 1
\end{array}
\]

Now, we can compare specific columns we want, but we'll do so in two
separate membership tables:

\[
\begin{array}{l|l}
A \cap B & A \\
\hline
0 & 0 \\
0 & 0 \\
0 & 1 \\
1 & 1
\end{array}
\qquad
\begin{array}{l|l}
A & A \cup B \\
\hline
0 & 0 \\
0 & 1 \\
1 & 1 \\
1 & 1
\end{array}
\]

In the table on the left, every row of $A \cap B$ that has a $1$ also
has a $1$ in the $A$ column. As such, we know that
$(A \cap B) \subseteq A$.

Additionally, from the table on the right, every row in the $A$
column that has a $1$ also has a $1$ in the $A \cup B$ column. As
such, we know that $A \subseteq (A \cup B)$.

Because we know that $(A \cap B) \subseteq A$ and
$A \subseteq (A \cup B)$, we can combine them into the single
expression

$$(A \cap B) \subseteq A \subseteq (A \cup B)$$

as desired.
{{< /proof >}}

Membership tables can be a convenient way to represent an element
argument in tabular form. However, membership tables won't totally
replace element arguments, as sometimes the element argument is
simpler to make for more esoteric situations where tables can be
cumbersome to use.

## Some Laws of Set Theory
---

We've already examined a number of simple laws (referred to as
theorems) above, and have demonstrated their truth by way of element
arguments and membership tables. What's demonstrated above only
scratches the surface of the multitude of equal-set relationships we
can exploit. Below, we present a large table offering even more such
laws.

As you look over this table, it would be wise to compare it with the
table presented in Chapter 1, Section 5. You should see many
analogues.

For any sets $A$, $B$, and $C$ taken from some universal set
$\mathcal{U}$, we have the following equivalencies:

|  |  |
|---|---|
| Law of Double Complement | $(A^C)^C = A$ |
| DeMorgan's Laws | $\begin{array}{c} (A \cup B)^C = A^C \cap B^C \\ (A \cap B)^C = A^C \cup B^C \end{array}$ |
| Commutative Laws | $\begin{array}{c} A \cup B = B \cup A \\ A \cap B = B \cap A \end{array}$ |
| Associative Laws | $\begin{array}{c} A \cup (B \cup C) = (A \cup B) \cup C \\ A \cap (B \cap C) = (A \cap B) \cap C \end{array}$ |
| Distributive Laws | $\begin{array}{c} A \cup (B \cap C) = (A \cup B) \cap (A \cup C) \\ A \cap (B \cup C) = (A \cap B) \cup (A \cap C) \end{array}$ |
| Idempotent Laws | $\begin{array}{c} A \cup A = A \\ A \cap A = A \end{array}$ |
| Identity Laws | $\begin{array}{c} A \cup \emptyset = A \\ A \cap \mathcal{U} = A \end{array}$ |
| Inverse Laws | $\begin{array}{c} A \cup A^C = \mathcal{U} \\ A \cap A^C = \emptyset \end{array}$ |
| Domination Laws | $\begin{array}{c} A \cup \mathcal{U} = \mathcal{U} \\ A \cap \emptyset = \emptyset \end{array}$ |
| Absorption Laws | $\begin{array}{c} A \cup (A \cap B) = A \\ A \cap (A \cup B) = A \end{array}$ |

Certainly, many more such laws and equivalencies exist, but the table
above represents some of the more ubiquitous laws that are often used.

These laws present us an opportunity to directly compare three
different proof techniques. First, we use a membership table.

{{< theorem title="Law of Double Complement" >}}
For any $A \subseteq \mathcal{U}$,

$$(A^C)^C = A$$
{{< /theorem >}}

{{< proof >}}
**General Strategy:** We'll use a membership table to compare the
columns for $A$ and $(A^C)^C$.

\[
\begin{array}{l|l|l}
A & A^C & (A^C)^C \\
\hline
0 & 1 & 0 \\
1 & 0 & 1
\end{array}
\]

Since the columns for $A$ and $(A^C)^C$ are exactly the same, they're
equal, and so we have

$$A = (A^C)^C$$

as desired.
{{< /proof >}}

Now, compare such a simple strategy with a standard element argument
used in the next proof.

{{< theorem title="DeMorgan's Laws" >}}
For any $A, B \subseteq \mathcal{U}$,

\[
\begin{array}{rl}
(A \cup B)^C &= A^C \cap B^C \\
(A \cap B)^C &= A^C \cup B^C
\end{array}
\]
{{< /theorem >}}

{{< proof >}}
**General Strategy:** We'll split this proof up into two steps, where
each step is dedicated to a different part of DeMorgan's Laws. Both
steps will make use of standard element arguments, as well as the
definition of set equality.

**Step 1: $(A \cup B)^C = A^C \cap B^C$.**

*First, we show that $(A \cup B)^C \subseteq A^C \cap B^C$.*

Suppose that element $x \in \mathcal{U}$ was also in $(A \cup B)^C$,
meaning $x \in (A \cup B)^C$.

Since $x \in (A \cup B)^C$, we know that $x \notin ((A \cup B)^C)^C$,
and by the Law of Double Complement, we also know that
$x \notin A \cup B$.

Now we simultaneously know that $x \notin A$ (otherwise $x$ would be
in $A \cup B$, which we just established isn't the case) and
$x \notin B$ (again, because then $x$ would be in $A \cup B$).

Thus, since $x \notin A$ and $x \notin B$, we know that $x \in A^C$
and $x \in B^C$, meaning $x \in A^C \cap B^C$, which is what we're
trying to show.

Thus, whenever we have that $x \in (A \cup B)^C$, we know that
$x \in A^C \cap B^C$, meaning

$$(A \cup B)^C \subseteq A^C \cap B^C.$$

*Second, we show that $A^C \cap B^C \subseteq (A \cup B)^C$.*

Now, suppose we knew that $x \in A^C \cap B^C$. Thus we simultaneously
know that $x \in A^C$ and $x \in B^C$.

This means we have that $x \notin A$ and $x \notin B$. Thus, since $x$
is in neither $A$ nor $B$, $x$ can't possibly be in $A \cup B$,
meaning $x \notin A \cup B$. This means that $x \in (A \cup B)^C$.

Thus, whenever we know that $x \in A^C \cap B^C$, we also know that
$x \in (A \cup B)^C$, which means we have that

$$A^C \cap B^C \subseteq (A \cup B)^C.$$

Finally, because we've shown that $(A \cup B)^C \subseteq A^C \cap B^C$
and $A^C \cap B^C \subseteq (A \cup B)^C$, we have by definition that

$$(A \cup B)^C = A^C \cap B^C$$

as desired.

**Step 2: $(A \cap B)^C = A^C \cup B^C$.**

Using nearly the exact same process as was used in Step 1, we come to
the conclusion that

$$(A \cap B)^C = A^C \cup B^C.$$

**Conclusion.** By now, we've shown that both
$(A \cup B)^C = A^C \cap B^C$ and $(A \cap B)^C = A^C \cup B^C$, and as
such have completely established DeMorgan's Laws.
{{< /proof >}}

The last of these laws we'll prove in this section will be the
Distributive Laws. Instead of making two separate element arguments to
establish that
$A \cup (B \cap C) \subseteq (A \cup B) \cap (A \cup C)$ and
$(A \cup B) \cap (A \cup C) \subseteq A \cup (B \cap C)$, we'll use
logical equivalencies to show that $A \cup (B \cap C)$ and
$(A \cup B) \cap (A \cup C)$ are subsets of each other simultaneously.

{{< theorem title="Distributive Laws" >}}
For any $A, B, C \subseteq \mathcal{U}$,

\[
\begin{array}{rl}
A \cup (B \cap C) &= (A \cup B) \cap (A \cup C) \\
A \cap (B \cup C) &= (A \cap B) \cup (A \cap C)
\end{array}
\]
{{< /theorem >}}

{{< proof >}}
**General Strategy:** We'll use logical equivalencies to show that any
element of $A \cup (B \cap C)$ is also an element of
$(A \cup B) \cap (A \cup C)$. Since we use logical equivalencies, this
also applies the other way simultaneously.

\[
\begin{array}{lll}
 & \boldsymbol{x \in A \cup (B \cap C)} & \textbf{Reason} \\
\Longleftrightarrow & (x \in A) \lor (x \in B \cap C) & \text{Definition of Set Union} \\
\Longleftrightarrow & (x \in A) \lor [(x \in B) \land (x \in C)] & \text{Definition of Set Intersection} \\
\Longleftrightarrow & [(x \in A) \lor (x \in B)] \land [(x \in A) \lor (x \in C)] & \text{Distribution of } \lor \text{ over } \land \\
\Longleftrightarrow & (x \in A \cup B) \land (x \in A \cup C) & \text{Definition of Set Union} \\
\Longleftrightarrow & x \in (A \cup B) \cap (A \cup C) & \text{Definition of Set Intersection}
\end{array}
\]

We've just established that

$$(x \in A \cup (B \cap C)) \Longleftrightarrow (x \in (A \cup B) \cap (A \cup C)).$$

Thus, whenever $x \in A \cup (B \cap C)$, we also simultaneously know
that $x \in (A \cup B) \cap (A \cup C)$. As such, we know that

$$A \cup (B \cap C) \subseteq (A \cup B) \cap (A \cup C) \qquad \text{and} \qquad (A \cup B) \cap (A \cup C) \subseteq A \cup (B \cap C)$$

are simultaneously true, and so we have that

$$A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$$

as desired. The same logic also shows that
$A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$ as well.
{{< /proof >}}

Of course, the rest of the Laws of Set Theory can be proven in many
different ways. Because it's a good exercise to provide a proof for
all the above laws, proofs for the remaining laws are asked for in
this chapter's practice questions.

## Using the Laws of Set Theory
---

Just as we can use the Laws of Logic to simplify complicated logical
expressions, we can also use the Laws of Set Theory to simplify
complicated expressions involving sets.

{{< example title="Simplifying an expression with the Laws of Set Theory" >}}
Suppose we were dealing with the expression

$$X \cap (Y - X)$$

where $X, Y \subseteq \mathcal{U}$.

We can simplify the above expression in the following way:

\[
\begin{array}{lll}
 & \boldsymbol{X \cap (Y - X)} & \textbf{Reason} \\
= & X \cap (Y \cap X^C) & \text{Definition of Set Difference} \\
= & X \cap (X^C \cap Y) & \text{Commutative Law} \\
= & (X \cap X^C) \cap Y & \text{Associative Law} \\
= & \emptyset \cap Y & \text{Inverse Law} \\
= & \emptyset & \text{Domination Law}
\end{array}
\]

Thus, we've just established that for any $X, Y \subseteq \mathcal{U}$,

$$X \cap (Y - X) = \emptyset.$$
{{< /example >}}

We made use of an additional law of Set Theory above, where we can
express the set difference operation using only intersection and
complement:

$$Y - X = Y \cap X^C.$$

We'll now justify that equality:

\[
\begin{array}{lll}
 & \boldsymbol{Y - X} & \textbf{Reason} \\
= & \{p \mid (p \in Y) \land (p \notin X)\} & \text{Definition of Set Difference} \\
= & \{p \mid (p \in Y) \land (p \in X^C)\} & \text{Definition of Set Complement} \\
= & Y \cap X^C & \text{Definition of Set Intersection}
\end{array}
\]

For any two sets $A$ and $B$ taken from some universal set
$\mathcal{U}$, we have that

$$A - B = A \cap B^C.$$

As a matter of fact, we can also express the symmetric difference
operation using only union, intersection, and complement, which we
justify below:

\[
\begin{array}{lll}
 & \boldsymbol{Y \triangle X} & \textbf{Reason} \\
= & \{p \mid (p \in Y) \veebar (p \in X)\} & \text{Definition of Symmetric Difference} \\
= & \{p \mid ((p \in Y) \land (p \notin X)) \lor ((p \notin Y) \land (p \in X))\} & \text{Definition of Logical Exclusive-or} \\
= & \{p \mid ((p \in Y) \land (p \in X^C)) \lor ((p \in Y^C) \land (p \in X))\} & \text{Definition of Set Complement} \\
= & \{p \mid (p \in Y \cap X^C) \lor (p \in Y^C \cap X)\} & \text{Definition of Set Intersection} \\
= & (Y \cap X^C) \cup (Y^C \cap X) & \text{Definition of Set Union}
\end{array}
\]

For any two sets $A$ and $B$ taken from some universal set
$\mathcal{U}$, we have that

$$A \triangle B = (A \cap B^C) \cup (B^C \cap A).$$

This just goes to show how important the union, intersection, and
complement operations are when it comes to sets, because no matter how
we want to combine any combination of sets, we can always do so using
just those three operations.

{{< example title="Rewriting an expression with only Union, Intersection, and Complement" >}}
Can we rewrite the expression

$$(X - Y)^C$$

using only union, intersection, and complement? Let's try and see.

\[
\begin{array}{lll}
 & \boldsymbol{(X - Y)^C} & \textbf{Reason} \\
= & (X \cap Y^C)^C & \text{Definition of Set Difference} \\
= & X^C \cup (Y^C)^C & \text{DeMorgan's Law} \\
= & X^C \cup Y & \text{Law of Double Complement}
\end{array}
\]

So $(X - Y)^C$ is equivalent to $X^C \cup Y$.
{{< /example >}}

{{< example title="A longer simplification" >}}
We can simplify the expression

$$(((X \cup Y) \cap Z)^C \cup Y)^C$$

using the following steps:

\[
\begin{array}{lll}
 & \boldsymbol{(((X \cup Y) \cap Z)^C \cup Y)^C} & \textbf{Reason} \\
= & (((X \cup Y) \cap Z)^C)^C \cap (Y^C)^C & \text{DeMorgan's Law} \\
= & ((X \cup Y) \cap Z) \cap Y & \text{Law of Double Complement} \\
= & (Z \cap (X \cup Y)) \cap Y & \text{Commutative Law} \\
= & Z \cap ((X \cup Y) \cap Y) & \text{Associative Law} \\
= & Z \cap ((X \cap Y) \cup (Y \cap Y)) & \text{Distributive Law} \\
= & Z \cap ((X \cap Y) \cup Y) & \text{Idempotent Law} \\
= & Z \cap (Y \cup (X \cap Y)) & \text{Commutative Law} \\
= & Z \cap Y & \text{Absorption Law}
\end{array}
\]
{{< /example >}}

## Generalized DeMorgan's Laws
---

We've seen DeMorgan's Laws applied to two sets at a time. Let's see
what happens when we have three sets at a time:

\[
\begin{array}{lll}
 & \boldsymbol{(A \cup B \cup C)^C} & \textbf{Reason} \\
= & ((A \cup B) \cup C)^C & \text{Associative Law} \\
= & (A \cup B)^C \cap C^C & \text{DeMorgan's Laws} \\
= & A^C \cap B^C \cap C^C & \text{DeMorgan's Laws}
\end{array}
\]

It stands to reason that repeated applications of DeMorgan's Laws
would work for intersection as well.

Furthermore, no matter how many sets we have, it seems as if we can
just repeatedly apply DeMorgan's Laws and the Associative Law. Based
on this observation, we make the following observations, where $I$ is
an index set over which the multiple union or intersection is taken:

\[
\begin{array}{rl}
\left(\bigcup_{i \in I} A_i\right)^C &= \bigcap_{i \in I} A_i^C \\[0.75em]
\left(\bigcap_{i \in I} A_i\right)^C &= \bigcup_{i \in I} A_i^C
\end{array}
\]

Of course, mere intuition doesn't prove anything to be true. Instead,
we must rely on rigorous tools, such as element arguments and logical
equivalencies, to establish truth without any doubt.

{{< theorem title="Generalized DeMorgan's Laws" >}}
For a universal set $\mathcal{U}$ and index set $I$, the following
equalities hold:

\[
\begin{array}{rl}
\left(\bigcup_{i \in I} A_i\right)^C &= \bigcap_{i \in I} A_i^C \\[0.75em]
\left(\bigcap_{i \in I} A_i\right)^C &= \bigcup_{i \in I} A_i^C
\end{array}
\]
{{< /theorem >}}

{{< proof >}}
**General Strategy:** We'll make use of various definitions of Set
Theory, including Complement. We also make use of the logical rules
that apply when negating quantified statements, as discussed in
Chapter 1, Section 10.

\[
\begin{array}{lll}
 & \boldsymbol{x \in \left(\bigcup_{i \in I} A_i\right)^C} & \textbf{Reason} \\
\Longleftrightarrow & x \notin \bigcup_{i \in I} A_i & \text{Definition of Set Complement} \\
\Longleftrightarrow & \neg \exists i \in I\ [x \in A_i] & \text{Definition of Multiple Union} \\
\Longleftrightarrow & \forall i \in I\ [x \notin A_i] & \text{Negating a Quantified Statement} \\
\Longleftrightarrow & \forall i \in I\ [x \in A_i^C] & \text{Definition of Set Complement} \\
\Longleftrightarrow & x \in \bigcap_{i \in I} A_i^C & \text{Definition of Multiple Intersection}
\end{array}
\]

We've just shown why the first equivalence is true. By similar logic,
the second is also shown to be true. This establishes both
equivalencies as desired.
{{< /proof >}}

The generalized versions of DeMorgan's Laws will prove extremely
useful in our further study of math.

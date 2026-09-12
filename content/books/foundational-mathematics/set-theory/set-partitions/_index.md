+++
title = 'Set Partitions'
type = 'chapter'
weight = 10

[params]
  section = 10
+++

When working with a set of related objects, we may want to split that
set up into smaller, more manageable sets.

For example, we may want to split up the integers based on parity:
even integers, and odd integers. When dealing with the real numbers,
we may want to split them up into three separate sets: the positive
real numbers, the negative real numbers, and the number $0$. One more
example may be the positive rational numbers, where we split them up
based on how big they are — we may have all of the positive rational
numbers less than $1$ in one set, and all of the positive rational
numbers greater than or equal to $1$ in the other set.

No matter how we split up a set, we'll want to make sure that all
elements of the original set are accounted for in one of the smaller
subsets we form.

## Partitioning a Set
---

In the introduction to this section, we mentioned three examples of
how we may split a large set into smaller subsets, making sure every
element within the original set is in one of the subsets. A
*partition* of a set creates these subsets while making sure that
every element is accounted for; however, the word partition also
invokes the idea of separation — no two subsets should share any
elements. The following definition of partition offers something more
precise.

{{< definition terms="partition" >}}
Consider some set $A \subseteq \mathcal{U}$ along with some index set
$I$.

For each $i \in I$, let $A_i \subseteq A$ such that $A_i \neq
\emptyset$. Then the set

$$\{A_i \mid i \in I\}$$

is called a ==partition== of $A$ if (and only if) the following two
conditions are satisfied:

\[
\begin{array}{rl}
\text{(1)} &\bigcup_{i \in I} A_i = A \\[0.75em]
\text{(2)} &\forall i, j \in I\ [(i \neq j) \to (A_i \cap A_j = \emptyset)]
\end{array}
\]
{{< /definition >}}

Note that none of the sets in the partition can be empty. The whole
point of forming a partition is to take elements from the original set
and put them into a subset.

{{< example title="Verifying a partition" >}}
Consider the following set of numbers:

$$A = \{0, 1, -1, 2, -2, 3, -3, 4, -4\}.$$

If we want to partition this set, we need to form non-empty subsets
that are all disjoint, and such that all elements in $A$ are in one of
the subsets.

Here's one way to partition $A$:

\[
\begin{array}{rl}
A_1 &= \{0, 1\} \\
A_2 &= \{-1, 2, -2\} \\
A_3 &= \{3, -3, 4, -4\}
\end{array}
\]

Notice that we didn't start with the index set $I = \{1, 2, 3\}$.
Instead, we formed the subsets first, and then indexed them. Of
course, we should check to see if the conditions specified in the
definition are met:

\[
\begin{array}{lll}
\boldsymbol{A_1 \cup A_2 \cup A_3} & = & \{0, 1\} \cup \{-1, 2, -2\} \cup \{3, -3, 4, -4\} \\
= & A &
\end{array}
\]

This means that every element from $A$ was accounted for. Now we check
to see if all the subsets are disjoint:

\[
\begin{array}{rl}
A_1 \cap A_2 &= \{0, 1\} \cap \{-1, 2, -2\} = \emptyset \\
A_1 \cap A_3 &= \{0, 1\} \cap \{3, -3, 4, -4\} = \emptyset \\
A_2 \cap A_3 &= \{-1, 2, -2\} \cap \{3, -3, 4, -4\} = \emptyset
\end{array}
\]

Both conditions have been met, so this is a legitimate partition of
$A$.
{{< /example >}}

{{< example title="Several other ways to partition the same set" >}}
There are other ways to partition the set

$$A = \{0, 1, -1, 2, -2, 3, -3, 4, -4\}.$$

One such way to partition the set is with the following:

\[
\begin{array}{rl}
X_1 &= \{0, 4\} \\
X_2 &= \{-1\} \\
X_3 &= \{1, 2\} \\
X_4 &= \{-2, -3, -4\} \\
X_5 &= \{3\}
\end{array}
\]

Notice that we didn't use the letter $A$ for the names of these
subsets. The important thing is the content of the subsets themselves,
not the name given to them. As long as the two conditions are met, the
collection of sets forms a partition. We could also put every element
of $A$ into its own subset, like so:

\[
\begin{array}{rl}
Y_1 &= \{0\} \\
Y_2 &= \{1\} \\
Y_3 &= \{-1\} \\
Y_4 &= \{2\} \\
Y_5 &= \{-2\} \\
Y_6 &= \{3\} \\
Y_7 &= \{-3\} \\
Y_8 &= \{4\} \\
Y_9 &= \{-4\}
\end{array}
\]

Yet another partition we could form is just by taking the entire set
itself:

$$Z = \{0, 1, -1, 2, -2, 3, -3, 4, -4\}.$$

Since there are no other sets in this partition, it's trivially true
that the union of all the sets forms $A$. Furthermore, since there are
no other sets in the partition, it's trivially true that all sets in
the partition are disjoint.
{{< /example >}}

## Examples of Partitions
---

{{< example title="Partitioning the integers by parity" >}}
As mentioned in the introduction, one thing we can do is split up the
integers into two subsets: one containing the even integers, and a
second subset containing the odd integers.

\[
\begin{array}{rl}
A &= \{0, 2, -2, 4, -4, 6, -6, \dots\} \\
B &= \{1, -1, 3, -3, 5, -5, 7, -7, \dots\}
\end{array}
\]

Here, we didn't use the same letter for the subset names, nor did we
use indices. Again, the names of the subsets aren't important. What's
important is knowing that all subsets are mutually disjoint, and that
all elements from the original set are accounted for.
{{< /example >}}

{{< example title="Partitioning the real numbers" >}}
One way to partition the real numbers $\mathbb{R}$ is into three
subsets: the subset of all positive real numbers greater than $0$, the
subset of all negative real numbers less than $0$, and finally the
subset containing just the number $0$.

\[
\begin{array}{rl}
X &= \{x \in \mathbb{R} \mid x < 0\} \\
Y &= \{0\} \\
Z &= \{x \in \mathbb{R} \mid x > 0\}
\end{array}
\]

Some numbers that are in $X$ include $-\pi$, $-12.3372$, and
$-\sqrt{2}$.

Some numbers in $Z$ include $1.2345$, $12$, and $\pi \cdot \pi$.
{{< /example >}}

{{< example title="Partitioning the positive rational numbers" >}}
As one more example, we could partition the positive rational numbers
into two separate subsets.

\[
\begin{array}{rl}
A &= \left\{\frac{a}{b} \ \middle|\ (a \in \{0, 1, 2, 3, \dots\}) \land (b \in \{1, 2, 3, \dots\}) \land \left(\frac{a}{b} < 1\right)\right\} \\
B &= \left\{\frac{a}{b} \ \middle|\ (a \in \{0, 1, 2, 3, \dots\}) \land (b \in \{1, 2, 3, \dots\}) \land \left(\frac{a}{b} \geq 1\right)\right\}
\end{array}
\]
{{< /example >}}

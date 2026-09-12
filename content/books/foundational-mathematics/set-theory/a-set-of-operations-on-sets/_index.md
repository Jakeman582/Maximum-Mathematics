+++
title = 'A Set of Operations on Sets'
type = 'chapter'
weight = 6

[params]
  section = 6
+++

We've discussed how to construct new sets by simply taking some of the
elements from one set and putting them into a new set. While subsets
are vitally important not only in Set Theory but throughout all of
mathematics, subsets are formed by only considering one set at a time.

We can construct a wide variety of sets by considering two or more
sets at a time. In this section, we learn what kinds of sets we can
construct by considering more than one set at a time.

## Complement
---

Before we talk about more than one set at a time, let's talk about one
more operation that only relies on one set. Technically, it does
require two sets, because this particular operation requires knowing
what universe is being considered — every element in the universe that
isn't in $A$ ends up in $A$'s complement.

{{< definition terms="complement" >}}
Consider a set $A$ consisting of elements taken from some universal
set, denoted $\mathcal{U}$.

The ==complement== of $A$, often denoted $A^C$ or $\overline{A}$, is
the set of all elements in $\mathcal{U}$ that are not in $A$. In other
words, we have that

$$A^C = \overline{A} = \{x \in \mathcal{U} \mid x \notin A\}.$$
{{< /definition >}}

The idea of set complement is really simple: we take all elements
within $\mathcal{U}$ that are not in $A$, and put all of those
elements in a new set we usually call either $A^C$ or $\overline{A}$,
though occasionally other names are used.

{{< example title="Finding a complement" >}}
Consider a universal set $\mathcal{U}$ consisting of all the whole
numbers from $0$ to $10$ inclusive, meaning

$$\mathcal{U} = \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10\}.$$

Now consider the set $S$ of all perfect squares contained within
$\mathcal{U}$, meaning we have

$$S = \{0, 1, 4, 9\}.$$

We then get that

$$S^C = \{2, 3, 5, 6, 7, 8, 10\}.$$
{{< /example >}}

Of course, the essential property we care about when it comes to sets
is whether a specific element is a member of that set or not. How do
we tell that an element $x$ is in $A^C$ or not? Based on the
definition of complement, we see that the following logical
equivalency is used to test if $x$ is in $A$'s complement:

$$(x \in A^C) \Longleftrightarrow [(x \in \mathcal{U}) \land (x \notin A)]$$

{{< example title="Testing membership in a complement" >}}
Reconsider the sets mentioned in the previous example:

\[
\begin{array}{rl}
\mathcal{U} &= \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10\} \\
S &= \{0, 1, 4, 9\}
\end{array}
\]

Is $5$ in $S$ or in $S^C$? Of course $5 \in \mathcal{U}$, so it will
either be in $S$ or $S^C$. $S$ was defined to be the set of all
elements from $\mathcal{U}$ that are perfect squares. Since
$5 \in \mathcal{U}$ and $5$ is not a perfect square, we know that

$$5 \in S^C.$$

Now consider the number $9$. Because $9 \in \mathcal{U}$ and $9$ is a
perfect square ($9 = 3^2$), we have that

$$9 \notin S^C.$$

What about a number like $1.5$? Remember that $\mathcal{U}$ only
consists of whole numbers between $0$ and $10$. Since $1.5$ is not a
whole number, we have that $1.5 \notin \mathcal{U}$, and as such we
have that

\[
\begin{array}{rl}
1.5 \notin S & \\
1.5 \notin S^C &
\end{array}
\]

Similarly, because $-12 \notin \mathcal{U}$, we also have that

\[
\begin{array}{rl}
-12 \notin S & \\
-12 \notin S^C &
\end{array}
\]
{{< /example >}}

## Union
---

Now that we've talked about what's outside a set, we can start to
consider what happens when we combine two sets into one.

The first thing we can do is take all elements from two different
sets, and simply mash them all up into one set.

{{< definition terms="union" >}}
Consider two sets $A$ and $B$ composed of elements from some universal
set $\mathcal{U}$.

The ==union== of sets $A$ and $B$, denoted $A \cup B$, is the set

$$A \cup B = \{x \in \mathcal{U} \mid (x \in A) \lor (x \in B)\}.$$
{{< /definition >}}

As long as an element is in $A$ or $B$, or even both $A$ and $B$, it
will be included in the union of $A$ and $B$.

{{< example title="Computing a union" >}}
Let's consider some universal set, which we'll refer to as
$\mathcal{N}$, consisting of the whole numbers from $0$ to $100$
inclusive, meaning

$$\mathcal{N} = \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, \dots, 98, 99, 100\}.$$

Now consider the following sets:

\[
\begin{array}{rl}
S &= \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100\} \\
C &= \{0, 1, 8, 27, 64\}
\end{array}
\]

For clarity, the set $S$ is the set of all perfect squares contained
in $\mathcal{N}$, and $C$ is the set of all perfect cubes contained
within $\mathcal{N}$.

The union of sets $S$ and $C$ is simply the set containing all the
elements from $S$ or $C$, or even both. As such, we get that

$$S \cup C = \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 0, 1, 8, 27, 64\}.$$

Even though in some sense the above set is correct, remember that when
dealing with a set, order and repetition are irrelevant. As such, we
can simplify how the set is written:

\[
\begin{array}{llll}
\boldsymbol{S \cup C} & = & \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 0, 1, 8, 27, 64\} & \\
& = & \{0, 0, 1, 1, 4, 8, 9, 16, 25, 27, 36, 49, 64, 64, 81, 100\} & \text{Ordering the elements} \\
& = & \{0, 1, 4, 8, 9, 16, 25, 27, 36, 49, 64, 81, 100\} & \text{Eliminating duplicates}
\end{array}
\]

In simplifying how we wrote the set referred to by $S \cup C$, we
started by ordering all the numbers (because order is irrelevant),
which makes it easy to see any duplicate entries. After seeing where
the duplicates were, we were able to eliminate them (because
repetition is irrelevant).
{{< /example >}}

One situation not yet considered is when one set is entirely contained
within another. Because a union consists of elements contained in
either set, this means that the union will actually just be whichever
set contains the other one — since every element of the smaller set is
already an element of the larger one, unioning them adds nothing new.

{{< example title="A union where one set contains the other" >}}
Consider the sets

\[
\begin{array}{rl}
\mathcal{N} &= \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, \dots, 98, 99, 100\} \\
S &= \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100\} \\
Q &= \{0, 1, 16, 81\}
\end{array}
\]

where $\mathcal{N}$ is the universal set under consideration. Here,
$S$ represents perfect squares within $\mathcal{N}$, and $Q$ is the
set of all perfect fourth powers contained in $\mathcal{N}$. Because
every element in $Q$ is also in $S$, there's no difference between

$$S \cup Q = \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100\}$$

and $S$.
{{< /example >}}

## Intersection
---

Another kind of set we can compose from two other sets is to take
elements that are in both sets. Here, we're not taking elements that
are present in either set; instead, we demand that the elements are
present in both sets.

{{< definition terms="intersection" >}}
Consider two sets $A$ and $B$ composed of elements from some universal
set $\mathcal{U}$.

The ==intersection== of sets $A$ and $B$, denoted $A \cap B$, is the
set

$$A \cap B = \{x \in \mathcal{U} \mid (x \in A) \land (x \in B)\}.$$
{{< /definition >}}

Just like with the union of two sets, we'd like to determine if an
element $x$ is contained within the intersection of two sets. There's
a logical equivalency we can use to determine if element $x$ is
contained within $A \cap B$:

$$(x \in A \cap B) \Longleftrightarrow ((x \in A) \land (x \in B)).$$

Before continuing on, it's worth pointing out the similarity between
the union and intersection symbols and the logical *or* and *and*
operators, respectively:

\[
\begin{array}{rl}
\cup \text{ pairs with } &\lor \\
\cap \text{ pairs with } &\land
\end{array}
\]

{{< example title="Computing an intersection" >}}
Going back to the example above, we have the following sets:

\[
\begin{array}{rl}
\mathcal{N} &= \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, \dots, 98, 99, 100\} \\
S &= \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100\} \\
C &= \{0, 1, 8, 27, 64\}
\end{array}
\]

To figure out what elements are in $S \cap C$, we simply look for
elements that are in both $S$ and $C$:

$$S \cap C = \{0, 1, 64\}.$$
{{< /example >}}

When two sets in question don't overlap at all, there's nothing
in the intersection. Of course, this means that the set $A \cap B$ has
nothing in it, or in other words,

$$A \cap B = \{\ \} = \emptyset.$$

This means that the intersection of two sets with nothing in common is
simply the empty set.

{{< example title="An intersection that is empty" >}}
Reconsider the sets

\[
\begin{array}{rl}
\mathcal{N} &= \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, \dots, 98, 99, 100\} \\
X &= \{1, 9, 25, 49, 81\} \\
Y &= \{0, 8, 64\}
\end{array}
\]

where $X$ is the set of odd perfect squares in $\mathcal{N}$, and $Y$
is the set of even perfect cubes in $\mathcal{N}$. Since $X$ and $Y$
share no elements in common, we have that

$$X \cap Y = \emptyset.$$
{{< /example >}}

When one of $A$ or $B$ is a subset of the other, the intersection will
end up just being whichever set was the subset.

{{< example title="An intersection where one set contains the other" >}}
Consider the sets

\[
\begin{array}{rl}
\mathcal{N} &= \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, \dots, 98, 99, 100\} \\
S &= \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100\} \\
Q &= \{0, 1, 16, 81\}
\end{array}
\]

We see that

$$S \cap Q = \{0, 1, 16, 81\} = Q.$$
{{< /example >}}

## Difference
---

It's possible that we may want to exclude certain elements from the
universe within any sets we construct. Of course, any given set can
contain any element from the universe, whether or not we want it
included. One thing we can do to remedy such a situation is to collect
all of the elements we want excluded in a special set, which we'll
refer to as $B$ for now (an "exclusion set"). Then, for some given set
we'll call $A$, we can make a new set by removing all elements from
$A$ that are also in $B$. This gives us a new set containing all
elements from $A$ that we don't want excluded.

{{< definition terms="difference" >}}
Consider two sets $A$ and $B$ containing elements from some universal
set $\mathcal{U}$.

The ==difference== from $B$ to $A$, which we'll denote $A - B$, is the
set of all elements in $A$ that are not in $B$. In other words,

$$A - B = \{x \in \mathcal{U} \mid (x \in A) \land (x \notin B)\}.$$
{{< /definition >}}

$A - B$ consists of whatever's left of $A$ once every element $A$
shares with $B$ — that is, every element of $A \cap B$ — has been
removed.

Once again, there's a logical equivalency we can use to determine if a
given object is contained in the set $A - B$:

$$(x \in A - B) \Longleftrightarrow ((x \in A) \land (x \notin B)).$$

{{< example title="Computing a difference" >}}
Reconsider the sets

\[
\begin{array}{rl}
\mathcal{N} &= \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, \dots, 98, 99, 100\} \\
S &= \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100\} \\
C &= \{0, 1, 8, 27, 64\}
\end{array}
\]

where $\mathcal{N}$ is the universal set, from which sets $S$ and $C$
share elements.

In order to determine which elements are in $S - C$, we start with
$S$, and take away any elements that are also in $C$. What we could do
is look at the intersection of $S$ and $C$:

$$S \cap C = \{0, 1, 64\}.$$

Now, all we have to do is copy $S$, but remove all those elements that
are in $S \cap C$:

$$S - C = \{4, 9, 16, 25, 36, 49, 81, 100\}.$$

We can do the same thing for $C - S$. We simply start with $C$, and
take away elements that are also in $S$ (remember that all the common
elements are in $S \cap C$):

$$C - S = \{8, 27\}.$$
{{< /example >}}

Care should be taken when one of the sets is a subset of the other
(in other words, when one of the sets is entirely contained within the
other). If $B$ is a subset of $A$, then $A - B$ consists of exactly
those elements of $A$ that aren't also in $B$. But if $A$ is entirely
contained within $B$, we'd have to remove every element of $A$,
leaving us with the empty set $\emptyset$.

{{< example title="A difference resulting in the empty set" >}}
Consider the sets

\[
\begin{array}{rl}
\mathcal{N} &= \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, \dots, 98, 99, 100\} \\
S &= \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100\} \\
E &= \{0, 4, 16, 36, 64, 100\}
\end{array}
\]

where $\mathcal{N}$ is the universal set being used.

By definition, we have that

$$S - E = \{1, 9, 25, 49, 81\}$$

since we're trying to remove all of the even perfect squares from $S$.

However, notice that since every element in $E$ is also an element in
$S$, when we determine $E - S$, we must remove every element in $E$.
Basically, we start with every element in $E$, and since we're
removing every element in $E$, we're left with nothing in $E - S$,
which is just the empty set:

$$E - S = \emptyset.$$
{{< /example >}}

Based on the previous example, it seems that if $A \subseteq B$, then
$A - B = \emptyset$. Is that true for every single set? In a later
section, we'll start to use element-argument-style proofs to determine
if that's indeed the case, but for now, our intuition on the matter
seems clear.

## Symmetric Difference
---

With set difference, we only consider elements that are in $A$ but not
in $B$. With a symmetric difference, we instead want elements that are
either in $A$ and not in $B$, or in $B$ and not in $A$.

{{< definition terms="symmetric difference" >}}
Consider two sets $A$ and $B$ containing elements from some universal
set $\mathcal{U}$.

The ==symmetric difference== between $A$ and $B$, denoted
$A \triangle B$, is the set

$$A \triangle B = \{x \in \mathcal{U} \mid ((x \in A) \land (x \notin B)) \lor ((x \notin A) \land (x \in B))\}.$$
{{< /definition >}}

The symmetric difference consists of everything covered by the union
of $A$ and $B$, except whatever's also covered by their intersection —
in other words,

$$A \triangle B = (A \cup B) - (A \cap B).$$

Of course, we can examine given objects to determine membership in
such a set:

$$(x \in A \triangle B) \Longleftrightarrow [((x \in A) \land (x \notin B)) \lor ((x \notin A) \land (x \in B))].$$

{{< example title="Testing membership in a symmetric difference" >}}
Reconsider the sets

\[
\begin{array}{rl}
\mathcal{N} &= \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, \dots, 98, 99, 100\} \\
S &= \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100\} \\
C &= \{0, 1, 8, 27, 64\}
\end{array}
\]

Is $8 \in S \triangle C$? Let's check the necessary conditions:

\[
\begin{array}{rl}
8 \in S = 0 & 8 \notin S = 1 \\
8 \in C = 1 & 8 \notin C = 0 \\
(8 \in S) \land (8 \notin C) = 0 \land 0 &= 0 \\
(8 \notin S) \land (8 \in C) = 1 \land 1 &= 1
\end{array}
\]

\[
((8 \in S) \land (8 \notin C)) \lor ((8 \notin S) \land (8 \in C)) = 0 \lor 1 = 1
\]

Because this comes out to $1$, we have that $8 \in S \triangle C$ as
desired.

We can ask the same thing of $64$. Let's run through the calculations
again, this time using $x = 64$:

\[
\begin{array}{rl}
64 \in S = 1 & 64 \notin S = 0 \\
64 \in C = 1 & 64 \notin C = 0 \\
(64 \in S) \land (64 \notin C) = 1 \land 0 &= 0 \\
(64 \notin S) \land (64 \in C) = 0 \land 1 &= 0
\end{array}
\]

\[
((64 \in S) \land (64 \notin C)) \lor ((64 \notin S) \land (64 \in C)) = 0 \lor 0 = 0.
\]

Because this comes out to $0$, we have that $64 \notin S \triangle C$.

Examining all elements in $\mathcal{N}$, we see that

$$S \triangle C = \{4, 8, 9, 16, 25, 27, 36, 49, 81, 100\}.$$
{{< /example >}}

When one set is a subset of the other, the symmetric difference
essentially carves the smaller set out of the larger one — it's called
a symmetric difference because it's essentially a difference between
the larger set and the subset.

{{< example title="A symmetric difference is commutative" >}}
Consider the sets

\[
\begin{array}{rl}
\mathcal{N} &= \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, \dots, 98, 99, 100\} \\
S &= \{0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100\} \\
E &= \{0, 4, 16, 36, 64, 100\}
\end{array}
\]

where $\mathcal{N}$ is the universal set in question.

We see that

$$S \triangle E = \{1, 9, 25, 49, 81\}.$$

Since we only want elements that are in $S$ and not $E$, or elements
that are in $E$ and not $S$, we also have that

$$E \triangle S = \{1, 9, 25, 49, 81\}$$

as well.
{{< /example >}}

We saw in the previous example that $S \triangle E$ and
$E \triangle S$ ended up being the exact same set. Is that always the
case? In a later section, we'll use an element argument to
demonstrate that this observation does indeed hold in general.

## Multiple Unions and Intersections
---

We can combine as many sets into a new set as we want. However, before
we start combining multiple sets into one, we should recognize that
dealing with multiple sets can be cumbersome. First of all, imagine
having to deal with multiple sets with a wide variety of names that
were hard to track. We can mitigate this issue by coming up with a
naming scheme that makes each set we're dealing with easy to track.

{{< definition terms="index set, index" >}}
Consider some universal set $\mathcal{U}$.

Let $I$ be a non-empty set of objects that are not necessarily taken
from $\mathcal{U}$, and for each $i \in I$, let

$$A_i \subseteq \mathcal{U}.$$

The set $I$ is called an ==index set==, and every $i \in I$ is called
an ==index==.
{{< /definition >}}

Before looking at an example, let's stress the fact that an index set
is basically used to enumerate and track sets, and so doesn't
necessarily need to be taken from some universal set (though it could
be taken from its own particular universal set).

{{< example title="Naming several sets with an index set" >}}
Consider the universe $\mathbb{Z}$ of all whole numbers, including $0$
and all negative whole numbers:

$$\mathbb{Z} = \{0, 1, -1, 2, -2, 3, -3, 4, -4, \dots\}.$$

We could deal with a number of sets called $A$, $B$, $C$, $D$, and $E$
where

\[
\begin{array}{rl}
A &= \{2, 4, 6, 8, 10\} \\
B &= \{-1, 0, 1, 2, 3, 4, 5\} \\
C &= \{1, 2, 7, 8\} \\
D &= \{1, 3, 4\} \\
E &= \{-5, -12, -13\}
\end{array}
\]

We could even have more exotic names, like $\Lambda$, $M$, $\Phi$,
$\Psi$, and $\clubsuit$, but this would be unnecessarily tedious
(though there may be times where such names would be useful).

Instead, what we could do is recognize that since we're dealing with
$5$ sets, we could come up with an index set containing $5$ elements,
like so:

$$I = \{1, 2, 3, 4, 5\}.$$

Then, instead of using $5$ different set names, we can simply use one
symbol, marked with the indices from the index set:

\[
\begin{array}{rl}
A_1 &= \{2, 4, 6, 8, 10\} \\
A_2 &= \{-1, 0, 1, 2, 3, 4, 5\} \\
A_3 &= \{1, 2, 7, 8\} \\
A_4 &= \{1, 3, 4\} \\
A_5 &= \{-5, -12, -13\}
\end{array}
\]

Notice that in this case, we have that
$A_1, A_2, A_3, A_4, A_5 \subseteq \mathbb{Z}$, but we also have that
$I \subseteq \mathbb{Z}$, even though we don't need that to be the
case.
{{< /example >}}

{{< example title="An index set that is not a subset of the universe" >}}
Reconsider the set $\mathbb{Z} = \{0, 1, -1, 2, -2, 3, -3, 4, -4, \dots\}$.
Now consider the index set

$$I = \{a, b, c, d, e\}.$$

Then we could have the following sets:

\[
\begin{array}{rl}
A_a &= \{2, 4, 6, 8, 10\} \\
A_b &= \{-1, 0, 1, 2, 3, 4, 5\} \\
A_c &= \{1, 2, 7, 8\} \\
A_d &= \{1, 3, 4\} \\
A_e &= \{-5, -12, -13\}
\end{array}
\]

where $A_a, A_b, A_c, A_d, A_e \subseteq \mathbb{Z}$, but this time,
$I \not\subseteq \mathbb{Z}$.
{{< /example >}}

{{< example title="An unusual index set" >}}
Once again, reconsider the set
$\mathbb{Z} = \{0, 1, -1, 2, -2, 3, -3, 4, -4, \dots\}$. We can make
the index set anything we want, such as

$$I = \{1, a, x, \boxminus, \star\}.$$

Then we have

\[
\begin{array}{rl}
A_1 &= \{2, 4, 6, 8, 10\} \\
A_a &= \{-1, 0, 1, 2, 3, 4, 5\} \\
A_x &= \{1, 2, 7, 8\} \\
A_\boxminus &= \{1, 3, 4\} \\
A_\star &= \{-5, -12, -13\}
\end{array}
\]

where $A_1, A_a, A_x, A_\boxminus, A_\star \subseteq \mathbb{Z}$. This
time, even though we have $I \not\subseteq \mathbb{Z}$, there's at
least one element in $I$ that's also in $\mathbb{Z}$.
{{< /example >}}

It's worth noting that this kind of index set is impractical, and so
won't be used going forward unless there's some niche application
where it would be useful.

With an index set to help us, working with multiple sets is easy.

{{< definition terms="multiple union" >}}
Consider a universal set $\mathcal{U}$, along with an index set $I$
where for each $i \in I$, we have that $A_i \subseteq \mathcal{U}$.

The ==multiple union== of all $A_i$ is denoted

$$\bigcup_{i \in I} A_i.$$

If the index set is defined using the whole numbers
$I = \{1, 2, 3, \dots, n\}$, then we can write this multiple union as

$$\bigcup_{i=1}^{n} A_i.$$
{{< /definition >}}

As always, if we want to check to see if a given object is in this
set, all we have to do is check to see if that object is in at least
one of the sets making up the multiple union:

$$(x \in \bigcup_{i \in I} A_i) \Longleftrightarrow (\exists i \in I\ [x \in A_i]).$$

Of course, if the index set uses whole numbers starting from $1$ and
ending at $n$, we can instead write this logical equivalency as

$$(x \in \bigcup_{i=1}^{n} A_i) \Longleftrightarrow (\exists i \in \{1, \dots, n\}\ [x \in A_i]).$$

{{< example title="Computing a multiple union" >}}
Once again, reconsider the set
$\mathbb{Z} = \{0, 1, -1, 2, -2, 3, -3, 4, -4, \dots\}$, with the
following index set:

$$I = \{1, 2, 3, 4\},$$

along with the following sets:

\[
\begin{array}{rl}
A_1 &= \{2, 4, 6, 8, 10\} \\
A_2 &= \{-1, 0, 1, 2, 3, 4, 5\} \\
A_3 &= \{1, 2, 4, 7, 8\} \\
A_4 &= \{1, 3, 4\}
\end{array}
\]

Is $8$ in the multiple union of $A_1$, $A_2$, $A_3$, and $A_4$? We can
check to see if $8$ is in at least one of them:

$$(8 \in A_1) \lor (8 \in A_2) \lor (8 \in A_3) \lor (8 \in A_4) = 1 \lor 0 \lor 1 \lor 0 = 1$$

As such, we see that $8$ is indeed in the multiple union of $A_1$,
$A_2$, $A_3$, and $A_4$.

However, when it comes to a number like $13$, we see that

$$(13 \in A_1) \lor (13 \in A_2) \lor (13 \in A_3) \lor (13 \in A_4) = 0 \lor 0 \lor 0 \lor 0 = 0$$

and so $13$ is not in the multiple union of $A_1$, $A_2$, $A_3$, and
$A_4$.

We can just go ahead and determine the entire multiple union:

\[
\begin{array}{lll}
\boldsymbol{A_1 \cup A_2 \cup A_3 \cup A_4} & = & \{2, 4, 6, 8, 10\} \cup \{-1, 0, 1, 2, 3, 4, 5\} \cup \{1, 2, 4, 7, 8\} \cup \{1, 3, 4\} \\
= & \{2, 4, 6, 8, 10, -1, 0, 1, 2, 3, 4, 5, 1, 2, 4, 7, 8, 1, 3, 4\} & \text{Combining all elements} \\
= & \{-1, 0, 1, 1, 1, 2, 2, 2, 3, 3, 4, 4, 4, 4, 5, 6, 7, 8, 8, 10\} & \text{Ordering the elements} \\
= & \{-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 10\} & \text{Eliminating duplicates}
\end{array}
\]

Another way we can write the set representing the multiple union is

$$\{x \in \mathcal{U} \mid \exists i \in I\ [x \in A_i]\}.$$
{{< /example >}}

Naturally, there's an intersection counterpart to the multiple union.

{{< definition terms="multiple intersection" >}}
Consider a universal set $\mathcal{U}$, along with an index set $I$
where for each $i \in I$, we have that $A_i \subseteq \mathcal{U}$.

The ==multiple intersection== of all $A_i$ is denoted

$$\bigcap_{i \in I} A_i.$$

If the index set is defined using the whole numbers
$I = \{1, 2, 3, \dots, n\}$, then we can write this multiple
intersection as

$$\bigcap_{i=1}^{n} A_i.$$
{{< /definition >}}

Checking if a given object is in the multiple intersection of a
collection of sets works nearly the same as checking if it's in the
multiple union, but we need to make sure the object is in *all* sets,
which we can check with multiple *and* operations:

$$(x \in \bigcap_{i \in I} A_i) \Longleftrightarrow (\forall i \in I\ [x \in A_i]).$$

Of course, if the index set uses whole numbers starting from $1$ and
ending at $n$, we can instead write this logical equivalency as

$$(x \in \bigcap_{i=1}^{n} A_i) \Longleftrightarrow (\forall i \in \{1, \dots, n\}\ [x \in A_i]).$$

{{< example title="Computing a multiple intersection" >}}
Once again, reconsider the set
$\mathbb{Z} = \{0, 1, -1, 2, -2, 3, -3, 4, -4, \dots\}$, with the
following index set:

$$I = \{1, 2, 3, 4\},$$

along with the following sets:

\[
\begin{array}{rl}
A_1 &= \{2, 4, 6, 8, 10\} \\
A_2 &= \{-1, 0, 1, 2, 3, 4, 5\} \\
A_3 &= \{1, 2, 4, 7, 8\} \\
A_4 &= \{1, 3, 4\}
\end{array}
\]

Is $4$ in the multiple intersection of $A_1$, $A_2$, $A_3$, and $A_4$?
We can check to see if $4$ is in all of them:

$$(4 \in A_1) \land (4 \in A_2) \land (4 \in A_3) \land (4 \in A_4) = 1 \land 1 \land 1 \land 1 = 1$$

As such, we see that $4$ is indeed in the multiple intersection of
$A_1$, $A_2$, $A_3$, and $A_4$.

However, when it comes to a number like $8$, we see that

$$(8 \in A_1) \land (8 \in A_2) \land (8 \in A_3) \land (8 \in A_4) = 1 \land 0 \land 1 \land 0 = 0$$

and so $8$ is not in the multiple intersection of $A_1$, $A_2$, $A_3$,
and $A_4$.

We can just go ahead and determine the entire multiple intersection:

\[
\begin{array}{llll}
\boldsymbol{A_1 \cap A_2 \cap A_3 \cap A_4} & = & \{2, 4, 6, 8, 10\} \cap \{-1, 0, 1, 2, 3, 4, 5\} \cap \{1, 2, 4, 7, 8\} \cap \{1, 3, 4\} & \\
& = & \{2, 4\} \cap \{1, 2, 4, 7, 8\} \cap \{1, 3, 4\} & \text{Intersecting } A_1 \text{ and } A_2 \\
& = & \{2, 4\} \cap \{1, 3, 4\} & \text{Intersecting the result with } A_3 \\
& = & \{4\} & \text{Intersecting the result with } A_4
\end{array}
\]

Another way of writing the set representing the multiple intersection
is

$$\{x \in \mathcal{U} \mid \forall i \in I\ [x \in A_i]\}.$$
{{< /example >}}

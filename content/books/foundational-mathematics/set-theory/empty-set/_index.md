+++
title = 'The Empty Set'
type = 'chapter'
weight = 4

[params]
  section = 4
+++

Just because we *can* put just about anything in a set doesn't mean we
*need* to have something in a set. There's a special and unique kind
of set that has no elements in it at all!

{{< definition terms="empty set, null set" >}}
The ==empty set== is the unique set containing no elements at all. The
empty set is sometimes referred to as the ==null set==, and is often
symbolized by $\emptyset$.
{{< /definition >}}

The empty set is a very special set, and occurs throughout all of set
theory, but it does have some interesting quirks that are a bit
strange at first, though they become more natural as we work more and
more with this kind of set.

First, note that because it's a set containing nothing, we can write

$$\emptyset = \{\ \}.$$

There's absolutely nothing written in between the curly braces, so we
have, for example, that $\emptyset \neq \{0\}$ — above, we wrote a
single number between the braces, and since $\{0\}$ is a set
containing one item, it's not equal to the empty set.

The second thing to note is that a set can have the empty set as one
of *its* elements:

$$S = \{\emptyset\}.$$

Because $S$ is a set containing one element (that element itself being
a set), we have $|S| = 1$. Thus, since $S$ contains at least one
element, it's not the same thing as the empty set, even though it's
the set *containing* the empty set: $S \neq \emptyset$. Comparing $S$
to $\emptyset$, since $\emptyset$ contains no elements, we have
$|\emptyset| = 0$. If we substitute $\{\emptyset\}$ in for $S$, we see
that $\{\emptyset\} \neq \emptyset$.

## The Empty Set Is Always a Subset
---

Recall the definition of subset, which states that $A \subseteq B$
when every element in $A$ is also an element of $B$. In other words,
$(n \in A) \to (n \in B)$ is always true. We use that definition, as well
as the definition of the empty set, in our next theorem:

{{< theorem title="The empty set is a subset of any set" >}}
For any universe $\mathcal{U}$, let $A$ be any set such that
$A \subseteq \mathcal{U}$.

$$\emptyset \subseteq A$$
{{< /theorem >}}

{{< proof >}}
Let $x$ be any arbitrary element from $\mathcal{U}$. Because
$\emptyset$ contains no elements, it's impossible for $x \in
\emptyset$, so it's always true that $x \in \emptyset = 0$.

Notice that since $x \in \emptyset$ is always equal to $0$, we have
that $(x \in \emptyset) \to (x \in A) = 0 \to (x \in A) = 1$. It doesn't
matter whether $x$ is an element of $A$ or not, because the hypothesis
of the implication $x \in \emptyset$ is always false, meaning the
overall implication always evaluates to true. Thus,
$(x \in \emptyset) \Longrightarrow (x \in A)$, and so
$\emptyset \subseteq A$, as desired.
{{< /proof >}}

Notice that in this theorem, we didn't place any special requirements
on set $A$ — it just had to be an arbitrary set constructed from some
universe $\mathcal{U}$. Thus, by the Rule of Universal Generalization,
since $A$ was arbitrary, and we have $\emptyset \subseteq A$, the
empty set must be a subset of every possible conceivable set —
including the universe $\mathcal{U}$ itself!

{{< example title="Applying the theorem" >}}
By the previous theorem, for the set $A = \{1, 2, 3\}$, we have that

$$\{\ \} \subseteq A.$$
{{< /example >}}

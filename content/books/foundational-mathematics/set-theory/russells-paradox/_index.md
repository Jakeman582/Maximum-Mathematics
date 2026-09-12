+++
title = "Russell's Paradox and a Formal Resolution"
type = 'chapter'
weight = 12

[params]
  section = 12
+++

Sets are a powerful abstraction that allows us to collect a wide
variety of objects into one structure. Typically, all objects within a
set share some common characteristic other than mere inclusion in the
set. They may be points on the plane, equilateral triangles, even
numbers, or even fruits.

As powerful as sets are, we haven't given a formal definition of what
a set is. We've been relying on an intuitive definition, and though it
works well enough for our purposes, sooner or later the cracks start
to show. Sometime around 1901, a mathematician named Bertrand Russell
formulated his now-infamous paradox that seemed to dismantle the
entire theory of sets. The scary thing about the paradox is that a lot
of mathematical research and important results rested on the
foundations of Set Theory. If Set Theory is wrong, are all results
depending on sets wrong as well?

In this section, we'll eke out what this paradox is, and hint at a
solution that solves the problem.

## Sets That Are Members of Other Sets
---

Over the course of this chapter, we've defined sets that mostly have
numbers, though we've constructed other more intricate sets. Sometimes
we've constructed sets that contain other sets.

{{< example title="A set containing another set" >}}
Let's consider two different sets:

\[
\begin{array}{rl}
A &= \{1, 2, 3\} \\
B &= \{1, 2, 3, \{1, 2, 3\}\}
\end{array}
\]

Here, we can see that $B$ contains the set $\{1, 2, 3\}$ as an
element, which is something we've seen before, but we're going to
rewrite set $B$ to make it more obvious that it contains a different
set:

$$B = \{1, 2, 3, A\}.$$
{{< /example >}}

We've got a handle on this situation, but let's ask a more interesting
question:

## Can a Set Contain Itself?
---

What would it look like for a set to contain itself? Let's see if we
can make such a set.

{{< example title="Trying to build a set that contains itself" >}}
Let's consider the set

$$\boxtimes = \{1\}.$$

Does $\boxtimes$ contain the set $\{1\}$ as an element? Of course not!
Right now, $\boxtimes$ only contains a single element, which is a
number.

Let's redefine $\boxtimes$ to contain the set $\{1\}$ as well:

$$\boxtimes = \{1, \{1\}\}.$$

Does $\boxtimes$ contain itself now? Not quite, because now
$\boxtimes$ contains two elements, one of which is a number, and the
other one being a set. Instead the set $\{1, \{1\}, \{1, \{1\}\}\}$
contains $1$, $\{1\}$, and $\boxtimes$, but this set isn't the same
thing as $\{1, \{1\}\}$, which is what we've defined $\boxtimes$ to
be.

Let's try again, this time including the set $\{1, \{1\}\}$:

$$\boxtimes = \{1, \{1\}, \{1, \{1\}\}\}.$$

Of course, we run into the same problem. The sets

$$\{1, \{1\}, \{1, \{1\}\}\} \qquad \text{and} \qquad \{1, \{1\}, \{1, \{1\}\}, \{1, \{1\}, \{1, \{1\}\}\}\}$$

aren't the same. We see that the set on the right could be written as
$\{1, \{1\}, \{1, \{1\}\}, \boxtimes\}$.

It seems that no matter how many iterations we perform, we never quite
get a set that contains itself. The only thing we may be able to do is
to think about what would happen if we continue this process
indefinitely:

$$\boxtimes = \{1, \{1\}, \{1, \{1\}\}, \{1, \{1\}, \{1, \{1\}\}\}, \dots\}.$$

Does this version of $\boxtimes$ contain itself as a member? This is a
harder question to ask, because we're now dealing with an infinite
set.
{{< /example >}}

Determining if a set is contained in another set when both sets
contain infinitely many elements takes some care, so we'll sidestep
that issue by considering the following set:

$$\boxtimes = \{S \mid (S \text{ is a set}) \land (S \notin S)\}.$$

What kind of set is $\boxtimes$? It's a set whose elements are sets.
But these are special sets. In the previous example, we were concerned
with what a set that contains itself would look like. Here, we don't
scrutinize whether a given set contains itself. Instead we're just
assuming that we've somehow curated every set, and are only including
sets that don't contain themselves.

Now consider the following question: is $\boxtimes$ contained within
$\boxtimes$? Remember that for propositions such as
$\boxtimes \in \boxtimes$, there are only two possibilities: either
$\boxtimes \in \boxtimes = 0$ or $\boxtimes \in \boxtimes = 1$. Let's
consider both possibilities.

**Case 1: $\boxtimes \in \boxtimes = 0$.**

Here, we're considering the possibility where $\boxtimes$ doesn't
contain itself. Well, since $\boxtimes \notin \boxtimes$, we know that

\[
\begin{array}{lll}
 & \boldsymbol{\boxtimes \notin \boxtimes} & \textbf{Reason} \\
\Longrightarrow & \neg((\boxtimes \text{ is a set}) \land (\boxtimes \notin \boxtimes)) & \text{Definition of } \boxtimes \\
\Longrightarrow & \neg(\boxtimes \text{ is a set}) \lor \neg(\boxtimes \notin \boxtimes) & \text{DeMorgan's Laws} \\
\Longrightarrow & (\boxtimes \text{ is not a set}) \lor (\boxtimes \in \boxtimes) & \text{Law of Double Negation}
\end{array}
\]

However, notice what the logical implications are if
$\boxtimes \notin \boxtimes$: either $\boxtimes$ is not a set (it is,
so this would be a contradiction) or $\boxtimes \in \boxtimes$ (which
contradicts the supposition that $\boxtimes \notin \boxtimes$). Either
way, the proposition $\boxtimes \notin \boxtimes$ yields
contradictions. As such, we may suspect that
$\boxtimes \in \boxtimes = 1$. Let's check.

**Case 2: $\boxtimes \in \boxtimes = 1$.**

Suppose we somehow knew that $\boxtimes \in \boxtimes$.

\[
\begin{array}{lll}
 & \boldsymbol{\boxtimes \in \boxtimes} & \textbf{Reason} \\
\Longrightarrow & (\boxtimes \text{ is a set}) \land (\boxtimes \notin \boxtimes) & \text{Definition of } \boxtimes \\
\Longrightarrow & \boxtimes \notin \boxtimes & \text{Conjunctive Simplification}
\end{array}
\]

So, by assuming $\boxtimes \in \boxtimes$, the logical implication is
that $\boxtimes \notin \boxtimes$? This is a clear contradiction.

At this point, both cases yield contradictions. This could be a
problem, but solutions do exist.

## Resolving the Paradox
---

How come we haven't had this problem dealing with any of the
previously defined sets in this chapter? It has to do with the fact
that we were constructing sets with particular objects. Even numbers
are easy to grasp, quadrilaterals are easy to grasp, but abstract set
requirements aren't so easy to grasp. We even had trouble trying to
come up with a set that contained itself in the second example above.

While not a resolution to the paradox, defining sets using
easy-to-grasp elements does at least avoid the issue.

Perhaps the most commonly used formal system of Set Theory is **ZFC
Set Theory**. ZFC is short for Zermelo–Fraenkel–Choice, where Zermelo
and Fraenkel are the two mathematicians who formulated this type of
Set Theory, and the word choice refers to the Axiom of Choice, which
is something that will be examined later in this book.

ZFC Set Theory came around in the early 20th century, and is free of
paradoxes like Russell's Paradox. ZFC Set Theory is an intricate
system, and requires some more advanced mathematics to understand.
While it isn't discussed in this book, further reading on ZFC Set
Theory and on the history of Russell's Paradox is easy to find, for
anyone curious enough to look into how it inspired the search for more
axiomatic systems of Set Theory.

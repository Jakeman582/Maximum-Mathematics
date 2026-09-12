+++
title = 'Proof Technique: Element Arguments'
type = 'chapter'
weight = 5

[params]
  section = 5
+++

In the previous two sections, we provided proofs for two theorems
(Theorem 3.4.1 and Theorem 3.3.1). Both proofs required that we select an
arbitrary element from some set $A$, and show that because that
arbitrarily chosen element satisfies some property, all elements of
set $A$ satisfy that property. This is simply a rehash of the concept
of Universal Specification and Universal Generalization as discussed
in Chapter 2.

In this section, we adapt the methods of Universal Specification and
Universal Generalization to a new, powerful proof technique we can use
for sets.

## The Underlying Argument
---

Here, we show off the basic structure of the argument that underlies
an **element argument**.

Let's suppose $p(x)$ and $q(x)$ are open statements defined on some
set $A$ (here the set $A$ is acting like our universe set
$\mathcal{U}$).

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \forall x \in A\ [p(x)] & \text{Premise} \\
(2) & c \in A & c \text{ is an arbitrarily chosen element from } A \\
(3) & p(c) & \text{Universal Specification on (1) and (2)} \\
(4) & p(c) \to q(c) & \text{Axiom, Definition, Premise, or Theorem} \\
(5) & q(c) & \text{Modus Ponens on (3) and (4)} \\
(6) & \therefore \forall x \in A\ [q(x)] & \text{Universal Generalization on (2) and (5)}
\end{array}
\]

Even though every element argument follows this basic structure, pay
close attention to step (4). Notice that the reason given was either
an axiom, definition, premise, or theorem. This is the part of the
argument that changes with each and every property we're trying to
show is true for every element of some given set $A$. Depending on
what we're trying to show, we'll need to bring in multiple axioms,
definitions, premises, or theorems in order to reach the desired
conclusion.

Typically, step (4) will be expanded into multiple steps, depending on
how many axioms, definitions, and theorems are needed to get from
proposition $p(c)$ to $q(c)$.

## Some Straightforward Theorems
---

Here is one basic theorem whose proof relies on a fairly typical
element argument.

{{< theorem title="Transitivity of the subset relation" >}}
If $A \subseteq B$ and $B \subseteq C$, then $A \subseteq C$.
{{< /theorem >}}

{{< proof >}}
Let $x$ be an arbitrarily chosen element from $A$.

Because $x \in A$, and because $A \subseteq B$, we know that
$x \in B$ as well.

Furthermore, because $x \in B$ and $B \subseteq C$, we must have that
$x \in C$.

Thus, we've determined that for an arbitrarily chosen element $x$ from
$A$, $x$ must also be an element of $C$, and so we must have that
$A \subseteq C$ as desired.
{{< /proof >}}

Let's rewrite this proof using the structure presented above.

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \forall x \in A\ [x \in B] & \text{Premise } A \subseteq B \\
(2) & x \in A & x \text{ is an arbitrarily picked element from } A \\
(3) & x \in B & \text{Universal Specification on (1) and (2)} \\
(4) & \forall x \in B\ [x \in C] & \text{Premise } B \subseteq C \\
(5) & x \in C & \text{Modus Ponens on (3) and (4)} \\
(6) & \therefore \forall x \in A\ [x \in C] & \text{Universal Generalization on (2) and (5)}
\end{array}
\]

This particular proof was a one-to-one translation of the basic
structure of an element argument. Let's look at a theorem that takes a
little more work to prove.

{{< theorem title="Transitivity of the proper-subset relation" >}}
If $A \subset B$ and $B \subset C$, then $A \subset C$.
{{< /theorem >}}

{{< proof >}}
**General Strategy:** Looking at the definition of proper subset,
there are essentially two things we need to do. First, we show that
every element of $A$ is also an element of $C$, meaning
$A \subseteq C$. Next, we show that there is an element in $C$ that is
not in $A$. Thus, the definition of proper subset will be satisfied.

**Step 1: Show that $A \subseteq C$.**

Let $x \in A$ be an arbitrarily picked element of $A$. Because
$A \subset B$, Theorem 3.3.2 also tells us that $A \subseteq B$. As
such, we also have that $x \in B$.

Furthermore, because $B \subset C$, Theorem 3.3.2 tells us that
$B \subseteq C$ as well. As such, since $x \in B$ and $B \subseteq C$,
we also have that $x \in C$.

Thus, since any arbitrarily picked element of $A$ is also an element
of $C$, we know that $A \subseteq C$.

**Step 2: Show that there is an element in $C$ that is not in $A$.**

Because we know that $B \subset C$, there exists an element $y$ that
is in $C$ that is not in $B$; in other words,

$$\exists y \in C\ [y \notin B].$$

Furthermore, since we know that $A \subseteq B$ and $y \notin B$, we
also know that $y \notin A$ as well.

**Conclusion.** At this point, we have shown that $A \subseteq C$, and
that $\exists y \in C\ [y \notin A]$. Thus by definition, we have that

$$A \subset C$$

as desired.
{{< /proof >}}

This proof required that we give a name to an element we knew existed
— namely, an element that was contained within $C$, but was not
contained within $B$, and as such not contained in $A$ either. There's
a special name we give to this situation, which we describe below.

## Existential Specification and Existential Generalization
---

When we discussed quantifiers, we talked about two different kinds:
those of the universal variety, and those of the existential variety.
The Universal Quantifier has its own specification and generalization
schemes, and the Existential Quantifier naturally has its own
counterparts.

The concept of **Existential Specification** comes into play when we
know some element exists, and in order to manipulate that element, we
simply give it a name. In other words, if we know that

$$\exists x \in \mathcal{U}\ [p(x)] = 1,$$

then we can simply use a symbol to refer to that particular element
where $p(x)$ is a true statement. The exact symbol chosen doesn't
matter: it could be the letter $c$, a Greek letter like $\beta$, or
some geometrical symbol like $\square$ — just as long as we're
consistent with what symbol is used. For example, knowing that
$\exists x \in \mathcal{U}\ [p(x)]$ is true, we could use the letter
$c$ to denote the particular element within $\mathcal{U}$ such that

$$p(c) = 1.$$

The concept of **Existential Generalization** is essentially the
reverse of Existential Specification. If we know that the particular
element $c \in \mathcal{U}$ makes the open statement $p(x)$ true,
meaning $p(c) = 1$, then we know that some element exists that makes
$p(x)$ a true statement (because we identified such an element),
meaning we know that

$$\exists x \in \mathcal{U}\ [p(x)] = 1.$$

We implicitly used Existential Specification and Existential
Generalization in the proof for Theorem 3.5.2. Since we're discussing
a general proof strategy, let's write out a formal argument in
tabular format, as we've previously done for Theorem 3.5.2:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & A \subset B & \text{Premise} \\
(2) & A \subseteq B & \text{Theorem 3.3.2 on (1)} \\
(3) & B \subset C & \text{Premise} \\
(4) & B \subseteq C & \text{Theorem 3.3.2 on (3)} \\
(5) & A \subseteq C & \text{Theorem 3.5.1 on (2) and (4)} \\
(6) & (\forall b \in B\ [b \in C]) \land (\exists c \in C\ [c \notin B]) & \text{Definition of } B \subset C \text{ on (3)} \\
(7) & \exists c \in C\ [c \notin B] & \text{Conjunctive Simplification on (6)} \\
(8) & (y \in C) \land (y \notin B) & \text{Existential Specification on (7)} \\
(9) & y \notin B & \text{Conjunctive Simplification on (8)} \\
(10) & y \notin A & \text{Modus Tollens on (2) and (9)} \\
(11) & \exists c \in C\ [c \notin A] & \text{Existential Generalization on (10)} \\
(12) & (A \subseteq C) \land (\exists c \in C\ [c \notin A]) & \text{Conjunction on (5) and (11)} \\
(13) & (\forall a \in A\ [a \in C]) \land (\exists c \in C\ [c \notin A]) & \text{Definition of } A \subseteq C \text{ on (12)} \\
(14) & \therefore A \subset C & \text{Definition of } A \subset C \text{ on (13)}
\end{array}
\]

As can be seen, even though we can formally lay out every step of our
proof in a tabular format, the paragraph format presented above is
perhaps more readable and less cumbersome to write.

## Two Additional Theorems
---

We've already examined the theorems

\[
\begin{array}{l}
[(A \subset B) \land (B \subset C)] \Longrightarrow (A \subset C)
\end{array}
\]

and

\[
\begin{array}{l}
[(A \subseteq B) \land (B \subseteq C)] \Longrightarrow (A \subseteq C).
\end{array}
\]

We could naturally examine situations involving both regular subsets
and proper subsets.

{{< theorem title="Combining subset and proper-subset transitivity, part one" >}}
If $A \subseteq B$ and $B \subset C$, then $A \subset C$.
{{< /theorem >}}

{{< proof >}}
Because $B \subset C$, invoking Theorem 3.3.2 yields the fact that
$B \subseteq C$. Thus, because we know that $A \subseteq B$ and
$B \subseteq C$, Theorem 3.5.1 tells us that $A \subseteq C$.

Now, because $B \subset C$, we know there exists some $c \in C$ such
that $c \notin B$. But because we also know that $A \subseteq B$, we
also know that $c \notin A$ as well.

Thus, because we know that $A \subseteq C$ and there is an element
$c \in C$ such that $c \notin A$, we know that $A \subset C$ by
definition as desired.
{{< /proof >}}

{{< theorem title="Combining subset and proper-subset transitivity, part two" >}}
If $A \subset B$ and $B \subseteq C$, then $A \subset C$.
{{< /theorem >}}

{{< proof >}}
Just as in the proof for Theorem 3.5.3, we know that $A \subseteq C$.

Because $A \subset B$, we know there is some element $b \in B$ such
that $b \notin A$. But because $B \subseteq C$, we know that $b \in C$
as well.

Thus, because we know that $A \subseteq C$ and there is an element
$b \in C$ such that $b \notin A$, we know that $A \subset C$ by
definition as desired.
{{< /proof >}}

Element arguments represent a powerful proof technique because they
give us a way to account for what elements are in what sets, which
will be an important skill in the upcoming sections when we start to
talk about how we can combine and operate on sets.

Remember that when we talk about a set, what we care about is whether
some given object is a member of that set or not, so by picking an
arbitrary element, we can use the subset relationships discussed so
far to determine if that element is a member of any other set.

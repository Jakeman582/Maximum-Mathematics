+++
title = 'Logically Equivalent Arguments'
type = 'chapter'
weight = 8
draft = true

[params]
  section = 8
+++

Fundamentally, an argument is nothing more than a logical implication —
a hypothesis (a conjunction of multiple premises) and a conclusion.

We've already seen that it's possible to construct logically equivalent
propositions using the laws of logic. Since an argument is fundamentally
a proposition based on an implication, it should be possible to
construct a different argument that's logically equivalent to a given
one. In some cases, this new, equivalent argument may be easier to
verify than the original — which is exactly why it's worth investing
time in constructing logically equivalent arguments in the first place.

## Proof by Contradiction
---

The general structure of an argument is

\[
\begin{array}{l}
p_1 \\
p_2 \\
\vdots \\
p_n \\
\hline
\therefore c
\end{array}
\]

meaning we're only considering cases where each premise $p_1$ through
$p_n$ is true.

If we take the propositional form of this argument with just one
premise, we get $p_1 \to c$. We'd need $c = 1$ for this
implication to be true — but this is logically equivalent to $\neg p_1
\lor c$. We can extend this a bit further:

\[
\begin{array}{lll}
 & \boldsymbol{p_1 \to c} & \textbf{Reason} \\
\Longleftrightarrow & \neg p_1 \lor c & (p \to q) \Longleftrightarrow (\neg p \lor q) \\
\Longleftrightarrow & \neg (p_1 \land \neg c) & \text{DeMorgan's Law}
\end{array}
\]

So, if $p_1 \to c$ is a valid argument, then $\neg (p_1
\land \neg c)$ is a true proposition. This means it would be impossible
to have both $p_1 = 1$ and $c = 0$ — that is, both $p_1 = 1$ and $\neg c
= 1$ — since that would be a contradiction. In other words, we get the
argument $(p_1 \land \neg c) \to F_0$.

This is where this proof strategy gets its name: for a valid argument,
assuming the negation of the desired conclusion produces a
contradiction. Since the negation of the conclusion must therefore be
false, the conclusion itself must be true.

A truth table confirms that $(p_1 \to c)$ and $[(p_1 \land
\neg c) \to F_0]$ are logically equivalent — meaning the
arguments themselves are equivalent, since arguments are just
implications. So, establishing that one of these is valid means the
other is valid too.

{{< example title="Proving Frank grows sunflowers" >}}
Frank is a farmer who loves being outdoors and working on his gardens.
He grows two kinds of plants: sunflowers and wheat, though he can't
plant both in his garden at once, as the two kinds of plants may
interfere with each other's growth. Furthermore, if he grows wheat,
he'll be able to make his own bread.

Consider the propositions

\[
\begin{array}{rl}
s\text{: } &\text{Frank plants sunflowers in his garden.} \\
w\text{: } &\text{Frank plants wheat in his garden.} \\
b\text{: } &\text{Frank bakes bread using the wheat he grew in his garden.}
\end{array}
\]

We can express this situation as the argument

\[
\begin{array}{l}
\neg s \leftrightarrow w \\
w \to b \\
\neg b \\
\hline
\therefore s
\end{array}
\]

In order to establish this argument's validity, we could instead
consider whether the equivalent argument

\[
\begin{array}{l}
\neg s \leftrightarrow w \\
w \to b \\
\neg b \\
\neg s \\
\hline
\therefore F_0
\end{array}
\]

is valid. To do so, we use the rules of inference and the laws of
logic:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \neg s \leftrightarrow w & \text{Premise} \\
(2) & (\neg s \to w) \land (w \to \neg s) & (a \leftrightarrow b) \Longleftrightarrow [(a \to b) \land (b \to a)] \\
(3) & \neg s \to w & \text{Conjunctive Simplification on (2)} \\
(4) & w \to b & \text{Premise} \\
(5) & \neg s \to b & \text{Law of the Syllogism on (3) and (4)} \\
(6) & \neg s & \text{Premise} \\
(7) & b & \text{Modus Ponens on (5) and (6)} \\
(8) & \neg b & \text{Premise} \\
(9) & b \land \neg b & \text{Rule of Conjunction on (7) and (8)} \\
(10) & \therefore F_0 & (b \land \neg b) \Longleftrightarrow F_0
\end{array}
\]

So, using the rules of inference, we've determined this equivalent
argument is valid — meaning the original argument is valid too.

Therefore, if we know

\[
\begin{align*}
&\text{Frank plants wheat if and only if he does not plant sunflowers.} \\
&\text{If Frank plants wheat, then Frank will make bread using wheat} \\
&\text{he grew in his garden.} \\
&\text{Frank does not make bread using wheat he grew in his garden.}
\end{align*}
\]

are all true propositions, then we know Frank planted sunflowers in his
garden.
{{< /example >}}

## Chains of Implications
---

Suppose we knew the argument

\[
\begin{array}{l}
p \\
\hline
\therefore q \to r
\end{array}
\]

was valid. Since $p = 1$, we know $q \to r = 1$. But now
suppose we also knew $q = 1$: since $q \to r = 1$ and $q =
1$, we'd have $r = 1$ as well. Notice that since $p = 1$ and $q = 1$, we
have $p \land q = 1$. Writing this out as a proposition, we get $p
\to (q \to r)$ — and since having both $p$ and
$q$ necessarily gives us $r$, this becomes the argument $(p \land q)
\to r$.

This suggests that the argument $p \to (q \to
r)$ is logically equivalent to the argument $(p \land q) \to
r$. A truth table confirms this suspicion: the biconditional $[p \to (q
\to r)] \leftrightarrow [(p \land q) \to r]$ is a tautology, meaning we
have a logical equivalency between the two arguments. Just as before,
establishing the validity of one automatically establishes the validity
of the other.

{{< example title="Chaining several implications into one argument" >}}
Frank has been thinking about using the wheat he grows to open a bakery
where he sells fresh bread. Of course he'll need a building to serve as
his store, and he'll need to make sure his tractor is working so he can
actually farm his crops. Consider the propositions

\[
\begin{array}{rl}
t\text{: } &\text{Frank fixes his tractor.} \\
s\text{: } &\text{Frank grows sunflowers in his garden.} \\
w\text{: } &\text{Frank grows wheat in his garden.} \\
b\text{: } &\text{Frank bakes bread using the wheat he grew in his garden.} \\
m\text{: } &\text{Frank saves enough money to buy a building for his bake shop.} \\
\star\text{: } &\text{Frank opens a bake shop where he sells his bread.}
\end{array}
\]

and the argument

\[
\begin{array}{l}
t \to (s \lor w) \\
t \\
(b \land m) \to \star \\
m \\
w \to b \\
\hline
\therefore \neg s \to \star
\end{array}
\]

We can determine whether this argument is valid by determining the
validity of the following equivalent argument:

\[
\begin{array}{l}
t \to (s \lor w) \\
t \\
(b \land m) \to \star \\
m \\
w \to b \\
\neg s \\
\hline
\therefore \star
\end{array}
\]

Let's see if we can validate it:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & t & \text{Premise} \\
(2) & t \to (s \lor w) & \text{Premise} \\
(3) & s \lor w & \text{Modus Ponens on (1) and (2)} \\
(4) & \neg s & \text{Premise} \\
(5) & w & \text{Rule of Disjunctive Syllogism on (3) and (4)} \\
(6) & w \to b & \text{Premise} \\
(7) & b & \text{Modus Ponens on (5) and (6)} \\
(8) & m & \text{Premise} \\
(9) & b \land m & \text{Rule of Conjunction on (7) and (8)} \\
(10) & (b \land m) \to \star & \text{Premise} \\
(11) & \therefore \star & \text{Modus Ponens on (9) and (10)}
\end{array}
\]

So we reached the desired conclusion — meaning both of the arguments
above are valid.
{{< /example >}}

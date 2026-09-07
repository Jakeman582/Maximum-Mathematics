+++
title = 'Rules of Inference'
type = 'chapter'
weight = 6

[params]
  section = 6
+++

We've already seen that, with ever-larger numbers of component
propositions, a truth table requires more and more rows to complete —
and that logical equivalencies let us simplify compound propositions
without needing a truth table at all.

We can bypass truth tables when determining whether an argument is
valid too. Instead of logical equivalencies, though, we use logical
implications. In this section, we collect a list of commonly occurring
logical implications, and see how to use them strategically. We'll
still verify each one with a truth table — the point here is just to
build up a list of implications we can use later.

## Two Straightforward Implications
---

We introduce the first logical implication with an example.

{{< example title="Deducing a conclusion from a true implication" >}}
Suppose a mechanic is servicing a car with a rough idle, and knows from
experience that replacing a worn timing belt often fixes the issue.
Consider the propositions

\[
\begin{array}{rl}
p\text{: } &\text{The mechanic replaces the car's timing belt.} \\
q\text{: } &\text{The car's engine runs smoothly.}
\end{array}
\]

We know that *if* the mechanic replaces the timing belt, *then* the
engine runs smoothly — that is, $p \to q = 1$. This alone doesn't
tell us whether the engine runs smoothly, because if $p = 0$, the
implication is still true regardless of whether $q = 0$ or $q = 1$.

However, suppose we also know that $p = 1$ — the mechanic did replace
the timing belt. Now we do know that the engine runs smoothly, because
both $p = 1$ and $p \to q = 1$. The only way for both of these
propositions to be true is for $q = 1$.
{{< /example >}}

We can verify this more formally with a truth table (representing $p$
as premise $p_1$, the proposition $p \to q$ as premise
$p_2$, and the conclusion $q$ using the letter $c$): the column for $[p
\land (p \to q)] \to q$ is entirely $1$s, so

$$[p \land (p \to q)] \Longrightarrow q.$$

In other words, whenever we know $p$ is true, and $p \to q$
is true, then $q$ is true as well. As such, the argument $[p \land (p
\to q)] \to q$ is valid. It's common to write
this kind of argument out in tabular form: we list all the premises in a
single column, add a horizontal line, and write the conclusion below it,
with a $\therefore$ symbol (read "therefore," or "thus") to its left:

\[
\begin{array}{l}
p \\
p \to q \\
\hline
\therefore q
\end{array}
\]

Also note that because $\land$ is commutative, we could just as well
present this argument with its premises in the other order:

\[
\begin{array}{l}
p \to q \\
p \\
\hline
\therefore q
\end{array}
\]

This kind of argument is commonly referred to as **Modus Ponens**.

There's another kind of valid argument closely related to Modus Ponens.
Again, we demonstrate it with an example first.

{{< example title="Deducing a negation from a true implication" >}}
Returning to the mechanic and the timing belt, we know $p \to q
= 1$. This means there are only three possible combinations of truth
values for $p$ and $q$: $p = 0, q = 0$; $p = 0, q = 1$; and $p = 1, q =
1$.

If $q = 1$, we don't know whether $p = 0$ or $p = 1$. But if we happened
to know that $q = 0$, we'd definitely know that $p = 0$. In other words,
it seems as if we have

$$[(p \to q) \land \neg q] \to \neg p.$$

In the context of this example, this means that if we knew "If the
mechanic replaces the timing belt, then the engine runs smoothly" and
"The engine does not run smoothly" were both true, we'd also know "The
mechanic did not replace the timing belt" was true.
{{< /example >}}

A truth table confirms that $[(p \to q) \land \neg q]
\to \neg p$ is indeed a tautology, so

$$[(p \to q) \land \neg q] \Longrightarrow \neg p.$$

The argument

\[
\begin{array}{l}
\neg q \\
p \to q \\
\hline
\therefore \neg p
\end{array}
\]

is valid, as is the same argument with its premises swapped. This
argument is commonly referred to as **Modus Tollens**. Both Modus
Ponens and Modus Tollens have $p \to q$ as a premise — in
some sense, Modus Tollens is the "contrapositive" of Modus Ponens.

## Chains of Logical Implications
---

The argument

\[
\begin{array}{l}
p \to q \\
q \to r \\
\hline
\therefore p \to r
\end{array}
\]

is valid — we already confirmed this in the previous section, where we
showed $[(x \to y) \land (y \to z)] \to (x \to z)$ is a tautology. This
argument is commonly referred to as the **Law of the Syllogism**.

Because $\land$ is commutative, the premises of any argument can be
swapped and the argument remains valid — a fact we won't keep
explicitly mentioning, though it will be used implicitly throughout our
work.

Naturally, we can chain more and more propositions together at the end
of each premise's implication. Here's an example involving five
propositions:

\[
\begin{array}{l}
j \to a \\
a \to c \\
c \to o \\
o \to b \\
\hline
\therefore j \to b
\end{array}
\]

## An Easy Logical Implication
---

Not all of the arguments at our disposal are profound — some may seem
quite obvious. For instance, suppose we know proposition $p$ is true,
and proposition $q$ is true. Since they're both true, we also know their
conjunction $p \land q$ is true. The argument

\[
\begin{array}{l}
p \\
q \\
\hline
\therefore p \land q
\end{array}
\]

is valid, and is called the **Rule of Conjunction**. Why care about an
argument this simple? Because as we develop more sophisticated
arguments, propositions $p$ and $q$ may come up — either as premises, or
as results derived from other premises. When this happens, $p$ and $q$
can be combined into a conjunction, and that conjunction can be used to
further develop the argument, as we'll see used strategically in the
next section.

## A Logical Implication to Eliminate Choices
---

{{< example title="Eliminating a possibility with a disjunction" >}}
Suppose a car won't start, and a mechanic determines that the problem
must be either a dead battery or a faulty starter. Define

\[
\begin{array}{rl}
M\text{: } &\text{The car's battery is dead.} \\
L\text{: } &\text{The car's starter is faulty.}
\end{array}
\]

Since the mechanic is confident it's one or the other, $M
\lor L = 1$. Right now, we don't know which it is — but suppose the
mechanic also tests the starter and finds it works fine, meaning $\neg L
= 1$. Since $M \lor L = 1$ and $L = 0$, we'd have to have $M = 1$,
meaning the battery is dead. We can represent this as the argument
$[(M \lor L) \land \neg L] \to M$.
{{< /example >}}

As this example demonstrates, if we know at least one of two
propositions $p$ and $q$ is true, but that one of them (say $q$) is
false, then the other must be true — otherwise the disjunction would
have been false. The argument

\[
\begin{array}{l}
p \lor q \\
\neg q \\
\hline
\therefore p
\end{array}
\]

is valid, and is called the **Rule of Disjunctive Syllogism**. A truth
table readily confirms this.

## A Logical Implication Based on Contradictions
---

Suppose we're given some proposition $p$, and want to determine whether
$p = 0$ or $p = 1$. One thing we could try is to assume $p = 0$ (meaning
$\neg p = 1$). If assuming $p = 0$ yields a contradiction $F_0$, then
surely $p \neq 0$, since true statements should never yield
contradictions — hence we must have $p = 1$. The argument

\[
\begin{array}{l}
\neg p \to F_0 \\
\hline
\therefore p
\end{array}
\]

is valid, and is called the **Rule of Contradiction**. Since there's
only one premise, $\neg p \to F_0$ (a proposition that's just
$\neg p \to 0$, replacing the general contradiction $F_0$ with its truth
value), there's no conjunction operator present. A truth table
confirms the argument $(\neg p \to F_0) \to p$
is valid.

## A Big List of the Rules of Inference
---

We've presented five different kinds of arguments so far. These
arguments are commonly referred to as **rules of inference**, because
they let us infer, or deduce, a conclusion given a list of premises.
There are many more such rules; we present a sample of them below.

|  |  |  |
|---|---|---|
| Modus Ponens (Rule of Detachment) | $\begin{array}{l} p \\ p \to q \\ \hline \therefore q \end{array}$ | $[p \land (p \to q)] \Longrightarrow q$ |
| Modus Tollens | $\begin{array}{l} p \to q \\ \neg q \\ \hline \therefore \neg p \end{array}$ | $[(p \to q) \land \neg q] \Longrightarrow \neg p$ |
| Law of the Syllogism | $\begin{array}{l} p \to q \\ q \to r \\ \hline \therefore p \to r \end{array}$ | $[(p \to q) \land (q \to r)] \Longrightarrow (p \to r)$ |
| Rule of Conjunction | $\begin{array}{l} p \\ q \\ \hline \therefore p \land q \end{array}$ | $(p \land q) \Longrightarrow (p \land q)$ |
| Rule of Disjunctive Syllogism | $\begin{array}{l} p \lor q \\ \neg q \\ \hline \therefore p \end{array}$ | $[(p \lor q) \land \neg q] \Longrightarrow p$ |
| Rule of Contradiction | $\begin{array}{l} \neg p \to F_0 \\ \hline \therefore p \end{array}$ | $(\neg p \to F_0) \Longrightarrow p$ |
| Rule of Conjunctive Simplification | $\begin{array}{l} p \land q \\ \hline \therefore p \end{array}$ | $(p \land q) \Longrightarrow p$ |
| Rule of Disjunctive Amplification | $\begin{array}{l} p \\ \hline \therefore p \lor q \end{array}$ | $p \Longrightarrow (p \lor q)$ |
| Rule of Conditional Proof | $\begin{array}{l} p \land q \\ p \to (q \to r) \\ \hline \therefore r \end{array}$ | $[(p \land q) \land (p \to (q \to r))] \Longrightarrow r$ |
| Rule of Proof by Cases | $\begin{array}{l} p \to r \\ q \to r \\ \hline \therefore (p \lor q) \to r \end{array}$ | $[(p \to r) \land (q \to r)] \Longrightarrow [(p \lor q) \to r]$ |
| Rule of the Constructive Dilemma | $\begin{array}{l} p \to q \\ r \to s \\ p \lor r \\ \hline \therefore q \lor s \end{array}$ | $[(p \to q) \land (r \to s) \land (p \lor r)] \Longrightarrow (q \lor s)$ |
| Rule of the Destructive Dilemma | $\begin{array}{l} p \to q \\ r \to s \\ \neg q \lor \neg s \\ \hline \therefore \neg p \lor \neg r \end{array}$ | $[(p \to q) \land (r \to s) \land (\neg q \lor \neg s)] \Longrightarrow (\neg p \lor \neg r)$ |

## Rules of Inference $\neq$ Logical Equivalencies
---

Before seeing how these rules of inference can be used, it's worth
taking a step back to see what we've accomplished — but perhaps more
importantly, what we have *not* accomplished.

Notice that each rule of inference above is a logical implication —
demonstrated by the fact that we used the single arrow $\Longrightarrow$,
rather than the double arrow $\Longleftrightarrow$. While some of the
arguments above may happen to contain logical equivalencies (such as
the Rule of Conjunction), most of these are *not* logical
equivalencies.

For instance, examining the Law of the Syllogism, we have

$$[(p \to q) \land (q \to r)] \Longrightarrow (p \to r).$$

However, note that when $p = r = 0$ and $q = 1$, we have $(p
\to q) = 1$, $(q \to r) = 0$, and $(p
\to r) = 1$, but $(p \to q) \land (q
\to r) = 1 \land 0 = 0$. Hence,

$$[(p \to q) \land (q \to r)] \not\Longleftrightarrow (p \to r).$$

As such, we have *not* shown that the expression $(p \to q)
\land (q \to r)$ can be replaced with the simpler expression
$p \to r$. This is a subtle difference, but an important
one.

We'll see in the next section that both logical equivalencies and
logical implications can be used to develop arguments — but logical
implications won't be helpful when trying to simplify complicated
logical expressions.

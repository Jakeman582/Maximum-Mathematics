+++
title = 'Using the Rules of Inference'
type = 'chapter'
weight = 7

[params]
  section = 7
+++

In the previous section, we collected a large sample of commonly
occurring logical implications. We briefly touched on why we'd want
such a list — to determine whether a given argument is valid. In
addition to determining validity, we can also use the rules of
inference to make valid deductions from a given list of premises.

In this section, we work through several examples of both use cases.

## Determining an Argument's Validity
---

Suppose we're presented with some argument: a list of premises, and a
desired conclusion. We can determine if the argument is valid by
appealing to the rules of inference.

{{< example title="Validating an argument in prose" >}}
Because you love live rock music, you decide to purchase
front-row tickets for an upcoming rock concert. The tickets are expensive,
so you'll need to save up money working a summer job to purchase them.
The problem is that everybody wants front-row seats, so they may be
sold out by the time you have enough money.

Consider the propositions

\[
\begin{array}{rl}
a\text{: } &\text{You save up enough money to purchase front-row seats.} \\
b\text{: } &\text{There are no more front-row seats available.} \\
c\text{: } &\text{You sit front row at the rock concert.}
\end{array}
\]

and the argument

\[
\begin{array}{l}
\neg b \\
\neg b \to a \\
a \to c \\
\hline
\therefore c
\end{array}
\]

To determine whether this argument is valid, notice that because we
have both $\neg b$ and $\neg b \to a$, we must have $a$ by
Modus Ponens. Now, because we have both $a$ and $a \to c$,
we also have $c$ by Modus Ponens.

We just reached the desired conclusion $c$ by appealing to Modus Ponens
twice, meaning the argument is valid. So, if there are front-row seats
available, you'll be able to save up enough money to sit front row at
the rock concert. Awesome!
{{< /example >}}

It seems a bit cumbersome to write out our logic in paragraphs like
this. Just like we did when showing two compound propositions were
logically equivalent, we can write out a sequence of steps in tabular
form.

{{< example title="Validating the same argument in tabular form" >}}
Luckily for us, another rock concert is happening, which means we
need to start saving even more money, hoping front-row seats are still
available. Reconsider the argument from the previous example. We can
write out the sequence of steps we took there in tabular form:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \neg b & \text{Premise} \\
(2) & \neg b \to a & \text{Premise} \\
(3) & a & \text{Modus Ponens on Steps (1) and (2)} \\
(4) & a \to c & \text{Premise} \\
(5) & \therefore c & \text{Modus Ponens on Steps (3) and (4)}
\end{array}
\]

Just like before, we reached conclusion $c$ using the rules of
inference. We'll use this tabular form of validating an argument from
here on out.
{{< /example >}}

There are many rules of inference, so we may be able to validate a given
argument in multiple different ways.

{{< example title="Validating the same argument a different way" >}}
Let's reconsider the argument once more. Instead of using Modus Ponens
twice, we could look at the big list of inference rules from the
previous section again. One rule that stands out is the Law of the
Syllogism, since we have two implications as premises:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \neg b \to a & \text{Premise} \\
(2) & a \to c & \text{Premise} \\
(3) & \neg b \to c & \text{Law of the Syllogism on Steps (1) and (2)} \\
(4) & \neg b & \text{Premise} \\
(5) & \therefore c & \text{Modus Ponens on Steps (3) and (4)}
\end{array}
\]

Of course, we arrive yet again at the desired conclusion $c$.
{{< /example >}}

Going forward, when we write out these tabular arguments, we'll omit
the word "Steps," and just write out which numbered step is being used
in a rule of inference — this will save us a bit of writing. It's also
worth pointing out that since some propositions are given as premises,
they require no justification beyond noting they're premises of the
argument.

Some arguments require multiple rules of inference to determine
validity.

{{< example title="An argument needing several rules of inference" >}}
Consider the following argument, with propositions $s$, $t$, $x$, $y$,
and $z$:

\[
\begin{array}{l}
x \\
x \to y \\
s \lor t \\
t \to \neg y \\
\hline
\therefore s \lor z
\end{array}
\]

We could take the following steps to validate this argument:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & x & \text{Premise} \\
(2) & x \to y & \text{Premise} \\
(3) & y & \text{Modus Ponens on (1) and (2)} \\
(4) & t \to \neg y & \text{Premise} \\
(5) & y \to \neg t & \text{Contrapositive of (4): } (t \to \neg y) \Longleftrightarrow (y \to \neg t) \\
(6) & \neg t & \text{Modus Ponens on (3) and (5)} \\
(7) & s \lor t & \text{Premise} \\
(8) & s & \text{Rule of Disjunctive Syllogism on (6) and (7)} \\
(9) & \therefore s \lor z & \text{Rule of Disjunctive Amplification on (8)}
\end{array}
\]

So, we arrive at the desired conclusion $s \lor z$, using a wide
variety of rules of inference.
{{< /example >}}

In the previous example, step (5) made use of a logical equivalency
between contrapositives. As we work through an argument, we can
introduce logically equivalent propositions whenever we want — so we
should make use of this as much as possible.

{{< example title="A longer chain of deductions" >}}
For arbitrary propositions $a$, $b$, $c$, $d$, $e$, and $f$, consider the
argument

\[
\begin{array}{l}
a \to e \\
e \to (b \land c) \\
\neg c \lor (f \lor \neg d) \\
d \land a \\
\hline
\therefore f
\end{array}
\]

This one may require a lot of work, so let's get started:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & a \to e & \text{Premise} \\
(2) & e \to (b \land c) & \text{Premise} \\
(3) & a \to (b \land c) & \text{Law of the Syllogism on (1) and (2)} \\
(4) & d \land a & \text{Premise} \\
(5) & a & \text{Conjunctive Simplification on (4)} \\
(6) & b \land c & \text{Modus Ponens on (3) and (5)} \\
(7) & c & \text{Conjunctive Simplification on (6)} \\
(8) & \neg c \lor (f \lor \neg d) & \text{Premise} \\
(9) & f \lor \neg d & \text{Disjunctive Syllogism on (7) and (8)} \\
(10) & d & \text{Conjunctive Simplification on (4)} \\
(11) & \therefore f & \text{Disjunctive Syllogism on (9) and (10)}
\end{array}
\]
{{< /example >}}

## Making Valid Inferences
---

When determining whether an argument is valid, we're given a list of
premises and a conclusion, and we write out our justifications in
tabular form, with the conclusion as the table's last entry. Theoretically, we could do the same thing even without being given a
conclusion — we just wouldn't have a "goal" to reach. We could apply
whatever rule of inference seems appropriate to the given premises, and
to any previous conclusions reached from them.

{{< example title="Making an inference with no conclusion given" >}}
Consider the propositions

\[
\begin{array}{rl}
c\text{: } &\text{I am clever.} \\
\ell\text{: } &\text{I am lucky.} \\
w\text{: } &\text{I win the lottery.}
\end{array}
\]

and the premises $c \lor \ell$, $\neg \ell$, and $\ell \to w$. We're not given a conclusion, but can we make any inference from
these premises?

One conclusion we could easily reach is to use the Rule of Disjunctive
Syllogism on the first two premises, giving us conclusion $c$. As such,
we know the argument $[(c \lor \ell) \land \neg \ell \land (\ell
\to w)] \to c$ is valid.
{{< /example >}}

Note that once you use a rule of inference on a given list of premises,
you're making a valid argument — every intermediate step in the
previous section's longer example produced a valid argument, since each
was constructed by means of a rule of inference.

{{< example title="Extracting multiple conclusions from one set of premises" >}}
Consider the premises

\[
\begin{array}{l}
\text{If the band can't perform their concert, or their t-shirts aren't} \\
\text{available for purchase at the concert, then the after-party will be} \\
\text{cancelled, and you will not purchase front-row seats. If the} \\
\text{after-party is cancelled, then ticket sales will have to be issued} \\
\text{refunds. No refunds were issued.}
\end{array}
\]

We pick out the propositions

\[
\begin{array}{rl}
a\text{: } &\text{The band can perform their concert.} \\
t\text{: } &\text{The band's t-shirts are available for purchase.} \\
p\text{: } &\text{The after-party was cancelled.} \\
y\text{: } &\text{You do not buy front-row seats.} \\
r\text{: } &\text{Ticket sales are issued refunds.}
\end{array}
\]

giving us the premises $(\neg a \lor \neg t) \to (p \land
y)$, $p \to r$, and $\neg r$. Let's see what deductions we
can make:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & p \to r & \text{Premise} \\
(2) & \neg r & \text{Premise} \\
(3) & \neg p & \text{Modus Tollens on (1) and (2)} \\
(4) & \neg p \lor \neg y & \text{Disjunctive Amplification on (3)} \\
(5) & \neg (p \land y) & \text{DeMorgan's Law on (4)} \\
(6) & (\neg a \lor \neg t) \to (p \land y) & \text{Premise} \\
(7) & \neg (\neg a \lor \neg t) & \text{Modus Tollens on (5) and (6)} \\
(8) & \neg \neg a \land \neg \neg t & \text{DeMorgan's Law on (7)} \\
(9) & a \land t & \text{Law of Double Negation on (8)} \\
(10) & a & \text{Conjunctive Simplification on (9)} \\
(11) & t & \text{Conjunctive Simplification on (9)}
\end{array}
\]

Notice that one of our conclusions was $a$, in step (10). As such, we
know that $[((\neg a \lor \neg t) \to (p \land y)) \land (p \to r) \land
\neg r] \to a$ is a valid argument — with the given
premises, we could deduce that the band performed their concert!

We didn't stop at that one conclusion, though. Step (11) left us with
conclusion $t$, meaning we could also deduce that the band's t-shirts
were available for purchase. Yet another inference we made was $\neg
p$, in step (3), meaning the after-party was not cancelled!

Any of the intermediate propositions that weren't premises are valid
inferences from the given premises.
{{< /example >}}

One more strategy we could use is a truth table, to see what
combinations of truth values for the propositions yield true premises.

{{< example title="Finding valid inferences from a truth table" >}}
Consider the propositions

\[
\begin{array}{rl}
s\text{: } &\text{Johnny had to go to summer school.} \\
j\text{: } &\text{Johnny could work a summer job.} \\
a\text{: } &\text{Johnny could purchase front-row seats at the rock concert.}
\end{array}
\]

and the premises $s$, $s \to \neg j$, and $\neg j
\to \neg a$. Constructing a truth table and checking which
rows make all three premises true reveals only one combination: $s = 1$,
$j = 0$, $a = 0$.

So, we need some combination of these three propositions that yields
$1$ under that assignment. One such example is $\neg j$, meaning $[s
\land (s \to \neg j) \land (\neg j \to \neg a)] \to \neg j$
is a valid argument. We also have $\neg a = 1$, so $[s \land (s \to \neg
j) \land (\neg j \to \neg a)] \to \neg a$ is valid too.

Since $j = 0$ and $\neg a = 1$, we have $j \land \neg a = 0$, meaning
$\neg (j \land \neg a) = 1$, and so $\neg j \lor a = 1$ as well. As
such, the argument $[s \land (s \to \neg j) \land (\neg j \to \neg a)]
\to (\neg j \lor a)$ is also valid.
{{< /example >}}

It's good practice to try and come up with a sequence of inference
rules to reach these kinds of conclusions without going through a truth
table.

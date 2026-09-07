+++
title = 'Invalid Arguments'
type = 'chapter'
weight = 9

[params]
  section = 9
+++

All of us have, at one point, been presented with an argument that
doesn't seem quite right. Just because someone can string together a
group of premises and assert some conclusion doesn't mean that
conclusion actually follows from the premises.

Remember that an argument is valid if the argument's implication is a
logical implication — meaning that no matter what truth values the
argument's propositions have, the overall implication always evaluates
to $1$. This means that if we can come up with even one truth value
assignment reducing to the form $1 \to 0$, the argument
isn't valid. In other words, for any argument $(p_1 \land p_2 \land
\dots \land p_n) \to c$ with $c = 0$ (and all premises
true), the argument is invalid.

Here, we'll examine some of the most common fallacies made when
constructing an argument, and how to detect when a given argument is
invalid.

## Argument by the Converse
---

Consider the argument

\[
\begin{array}{l}
p \to q \\
q \\
\hline
\therefore p
\end{array}
\]

with premises $p_1 : p \to q$, $p_2 : q$, and conclusion $c
: p$. Remember that for an argument, we assume $(p_1 \land p_2) = 1$,
meaning we need both $p_1 = 1$ and $p_2 = 1$.

Since $p_2$ is just $q$, we assume $q = 1$. Now we need $p_1 = 1$,
meaning $p \to q = 1$. Since $q = 1$, this holds whether $p
= 0$ or $p = 1$. But if $p = 0$, our conclusion $c = p$ has truth value
$0$. Since we can simultaneously make $(p_1 \land p_2) = 1$ and $c = 0$,
this argument is invalid.

This is sometimes referred to as an argument by the **converse**.

Before showing another invalid argument, it's worth comparing this
invalid argument to the closely related, but actually valid, Modus
Ponens argument:

\[
\begin{array}{ll}
\begin{array}{l}
p \to q \\
p \\
\hline
\therefore q
\end{array}
&
\begin{array}{l}
p \to q \\
q \\
\hline
\therefore p
\end{array}
\\
\text{Modus Ponens} & \text{Argument by the Converse}
\end{array}
\]

In Modus Ponens, $p$ is a premise, while $q$ is the conclusion. In the
argument by the converse, $q$ is a premise, while $p$ is the
conclusion. Even though these arguments look similar, it's important
not to get them mixed up.

{{< example title="A speeding ticket doesn't prove speeding" >}}
Johnny can be a bit of a reckless driver — he tends to ignore speed
limits, and often doesn't ensure all of his lights are functioning
properly. As such, he's prone to getting pulled over by the police a
lot more than anyone else. Consider the propositions

\[
\begin{array}{rl}
s\text{: } &\text{Johnny is speeding.} \\
r\text{: } &\text{Johnny runs a red light.} \\
t\text{: } &\text{Johnny gets pulled over and is issued a ticket.}
\end{array}
\]

and the argument $[(s \to t) \land t] \to s$. Even though
this argument asserts that Johnny was speeding, do we actually know
that? All we know is that Johnny got a ticket — a premise of the
argument. He could have gotten it for running a red light, or for some
other reason entirely, like malfunctioning tail lights or an expired
registration. Knowing that Johnny got pulled over isn't enough to
determine whether he was speeding.
{{< /example >}}

{{< example title="A new customer doesn't prove which advertisement worked" >}}
Charlotte is an aspiring entrepreneur working very hard to promote her
robot engineering company. Consider the propositions

\[
\begin{array}{rl}
m\text{: } &\text{Charlotte advertises in magazines.} \\
s\text{: } &\text{Charlotte advertises on social media.} \\
b\text{: } &\text{Charlotte advertises on billboards.} \\
c\text{: } &\text{Charlotte's business gains a new customer.}
\end{array}
\]

and the argument $[(s \to c) \land c] \to s$. Just as
before, knowing $c$ is true doesn't mean $s$ must be true as well — if
$s = 0$, the implication $s \to c$ is trivially true even when $c = 1$.
Maybe her business gained a new customer because of a magazine ad, or a
billboard.
{{< /example >}}

## Argument by the Inverse
---

Consider the argument

\[
\begin{array}{l}
p \to q \\
\neg p \\
\hline
\therefore \neg q
\end{array}
\]

with premises $p_1 : p \to q$, $p_2 : \neg p$, and
conclusion $c : \neg q$. Rather than working out truth values by hand,
we can use a truth table: there's a row where both premises are true —
$p = 0$, $q = 1$ — but the conclusion $c$ is false. Hence, the
implication $[(p \to q) \land \neg p] \to \neg q$ isn't a
tautology, meaning it isn't a logical implication:

$$[(p \to q) \land \neg p] \not\Longrightarrow \neg q.$$

So, this is sometimes referred to as an argument by the **inverse**.
Again, it's worth comparing this invalid argument to a valid one it
resembles:

\[
\begin{array}{ll}
\begin{array}{l}
p \to q \\
\neg q \\
\hline
\therefore \neg p
\end{array}
&
\begin{array}{l}
p \to q \\
\neg p \\
\hline
\therefore \neg q
\end{array}
\\
\text{Modus Tollens} & \text{Argument by the Inverse}
\end{array}
\]

Pay attention to the second premise in each: Modus Tollens uses $\neg
q$, while the argument by the inverse uses $\neg p$.

While Modus Ponens and Modus Tollens can safely be used to determine an
argument's validity, an argument by the converse or the inverse
produces a fallacy in reasoning. Even if a given argument happens to be
valid, any justification for it that relies on one of these two invalid
forms will be incorrect.

{{< example title="Not being late doesn't prove Johnny wasn't fired" >}}
Last time, Johnny was in the midst of getting pulled over and issued a
ticket — maybe for speeding, maybe for running a red light. Regardless,
Johnny may now be running late for work. Consider the propositions

\[
\begin{array}{rl}
\ell\text{: } &\text{Johnny is late to work.} \\
r\text{: } &\text{Johnny is rude to his company's clients.} \\
f\text{: } &\text{Johnny is fired from his job.}
\end{array}
\]

Suppose Johnny makes the argument $[(\ell \to f) \land \neg \ell]
\to \neg f$, trying to argue that because he wasn't late to
work, he wasn't fired. But even if it's true that Johnny wasn't late
(perhaps he started speeding after getting pulled over to try to make up
for lost time), he may still have been fired for being rude to clients.
So, we can't conclude Johnny wasn't fired.
{{< /example >}}

{{< example title="Lacking one feature doesn't prove the robot lost" >}}
We couldn't conclude how Charlotte's business gained a new customer
earlier — regardless of how it happened, this customer wants to
purchase a robot to fight in the Mech-Fighter Tournament. Every customer
can choose a robot with one of three features. Consider the propositions

\[
\begin{array}{rl}
\ell\text{: } &\text{The robot can shoot laser beams from its eyes.} \\
j\text{: } &\text{The robot is equipped with a jet pack.} \\
f\text{: } &\text{The robot has flamethrowers built into its arms.} \\
w\text{: } &\text{The robot wins the Mech-Fighter Tournament.}
\end{array}
\]

and the argument $[(f \to w) \land \neg f] \to \neg w$.
Can we conclude the robot didn't win? We can't — all we know is that it
didn't have flamethrowers. It may have still won by shooting laser
beams, or by flying around the arena.
{{< /example >}}

## A Strategy for Invalidating an Argument
---

{{< example title="Invalidating an argument with a truth table" >}}
For propositions $p$, $q$, $r$, consider the argument

\[
\begin{array}{l}
p \to \neg q \\
r \\
\hline
\therefore p \lor \neg r
\end{array}
\]

Is this a valid argument? None of the rules of inference discussed so
far seem like they'd help us reach the conclusion $p \lor \neg r$, so
perhaps this isn't valid.

To be sure, we construct a truth table, and check which rows make all
premises equal to $1$. There are three such rows — but only one of them
has a conclusion equal to $1$; the other two have the conclusion equal
to $0$. So this argument is not valid.

One way to show this is to set $p = 0$, $q = 0$, $r = 1$:

\[
\begin{align*}
p_1 &= p \to \neg q = (0) \to \neg(0) = 0 \to 1 = 1 \\
p_2 &= r = 1 \\
c &= p \lor \neg r = (0) \lor \neg(1) = 0 \lor 0 = 0.
\end{align*}
\]

These truth value assignments make both premises true and the
conclusion false. (The other highlighted row also provides an
assignment that makes the implication false.) Hence, the implication
isn't a logical implication, so the argument isn't valid.
{{< /example >}}

In the previous example, none of the rules of inference we knew about
looked like they'd help us reach the desired conclusion, so we suspected
the argument wasn't valid. Constructing a truth table let us see truth
value assignments that lead to a false implication.

{{< definition terms="counter example" >}}
Consider a general argument $(p_1 \land p_2 \land \dots \land p_n)
\to c$, where the premises and conclusion involve
combinations of propositions $s_1, s_2, \dots, s_m$.

A truth value assignment for each of $s_1, s_2, \dots, s_m$ that makes
$(p_1 \land p_2 \land \dots \land p_n) = 1$ and $c = 0$ is called a
==counter example== to the argument.
{{< /definition >}}

We invalidate an argument by providing a counter example to it. Note
that providing an assignment that makes the argument's implication true
does *not* prove the argument valid — to show an argument is valid, we
have to make sure that *every* truth value assignment making all
premises true also makes the conclusion true. This isn't the case for
invalidating an argument — one counter example is all that's needed.

However, depending on the number of underlying propositions involved,
we may want to avoid constructing a full truth table. We can still work
out truth value assignments directly, just by ensuring all premises
evaluate to $1$ when the conclusion evaluates to $0$.

{{< example title="Finding a counter example without a truth table" >}}
For propositions $a$, $b$, $c$, $d$, $e$, consider the argument

\[
\begin{array}{l}
e \\
e \lor d \\
d \to (b \to c) \\
a \to b \\
\hline
\therefore \neg c \to \neg a
\end{array}
\]

Is this argument valid? We could try to invalidate it by assigning
truth values to $a$, $b$, $c$, $d$, $e$ that make the premises true and
the conclusion false.

Let's start with the conclusion, $\neg c \to \neg a$. We
need $\neg c \to \neg a = 0$, meaning $\neg c = 1$ and
$\neg a = 0$ — that is, $c = 0$ and $a = 1$.

$$a = 1 \quad b = ? \quad c = 0 \quad d = ? \quad e = ?$$

Now let's look at the premises, starting with $a \to b$.
Since it's a premise, we need $a \to b = 1$, and since $a =
1$, we also need $b = 1$.

$$a = 1 \quad b = 1 \quad c = 0 \quad d = ? \quad e = ?$$

Looking at the third premise, we need $d \to (b
\to c) = 1$. We know $b = 1$ and $c = 0$, so $b
\to c = 0$. This means we need $d = 0$ in order to make the
entire implication true:

$$d \to (b \to c) = 0 \to (1 \to 0) = 0 \to 0 = 1.$$

$$a = 1 \quad b = 1 \quad c = 0 \quad d = 0 \quad e = ?$$

So now we just need $e$. Since $e$ is a premise by itself, we need $e =
1$:

$$a = 1 \quad b = 1 \quad c = 0 \quad d = 0 \quad e = 1.$$

We still need to check that all premises evaluate to $1$. The only one
we haven't checked yet is $e \lor d$: $e \lor d = (1) \lor (0) = 1$. So
this premise holds too. This means we've found a combination of truth
value assignments that makes all premises true and the conclusion
false:

$$a = 1 \quad b = 1 \quad c = 0 \quad d = 0 \quad e = 1.$$

This is a counter example to the given argument, thus invalidating it.
{{< /example >}}

Notice what we did in the previous example: we started off by choosing
values for the propositions that would make the conclusion false, then
used those values to try to choose values for the other propositions
that make the premises all true.

Sometimes, we may have choices for the truth values we assign to
propositions — if that's the case, there's nothing wrong with
experimenting to see whether all premises can be made true while the
conclusion stays false.

If we're unable to make all premises true while holding the conclusion
false, the argument may actually be valid — after all, if no counter
example exists, the argument has to be valid. At that point, it may be
worth trying to use the rules of inference to validate the argument.
Similarly, if assuming values that make the conclusion false yields a
contradiction, the argument might be provable by way of a proof by
contradiction.

As discussed in the previous section, the validity of an argument
implies the validity of any equivalent argument. By that same token, an
argument being invalid also means any logically equivalent argument is
invalid — so invalidating an equivalent argument is another way to
invalidate a given argument.

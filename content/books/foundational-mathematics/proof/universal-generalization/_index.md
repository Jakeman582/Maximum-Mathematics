+++
title = 'Universal Generalization'
type = 'chapter'
weight = 11

[params]
  section = 11
+++

In the previous section, we talked about a rule of inference that lets
us go from broadly true statements to specifically true statements —
if something is true for every member of a universe, we can pick out
any element from that universe and be assured it still has whatever
property we're interested in.

Up to now, none of the arguments we've examined have had a universally
quantified statement as a conclusion — meaning none of our conclusions
could have been generalized. Most results in mathematics are stated in
general terms, not specific ones. The Pythagorean Theorem applies to
every right triangle, not just isosceles ones, or ones with integer
side lengths. The Quadratic Formula doesn't apply only to $x^2 + 2x + 1
= 0$, or only to $x^2 - 6x + 9 = 0$ — it works even when the leading
coefficient isn't $1$, or when all the coefficients are irrational, or
when the corresponding parabola doesn't even intersect the $x$-axis.

Here, we'll see what it takes to have a universally quantified statement
as the conclusion of an argument. With this, we'll finally be able to
start noticing patterns and formulating results — in other words, to
start engaging in mathematics!

## A Motivating Example
---

{{< example title="Defeating an army of monsters" >}}
You are a hero setting out to save your kingdom from a large cohort of
beastly monsters, of which there are four types: large lion-shaped
creatures with sharp fangs; small robots that shoot laser beams; large
floating eyeball monsters; and ghosts that can phase through walls. To
save your kingdom, you need to fell all of the beasts. How should you
do this?

You could try luring the beasts into a trap with meaty food — the
lion-shaped creatures are certainly tempted by food. But will it work
for *all* of them? Maybe the ghosts can eat meat, though we're not
certain. Maybe some robots can convert organic food into fuel, but
maybe not all of them. The floating eyeball monsters may be entirely
uninterested in food. So luring with food may work for some monsters,
but not all.

What about mirrors reflecting sunlight? Highly effective against the
eyeball monsters, since they're just giant floating eyes — and the
sunlight will probably spook most, if not all, of the ghosts. But it's
not clear this works on the lion-shaped monsters, who may shield their
eyes, and the robots are probably unaffected by sunlight entirely. So
this deals with some of the monsters, but not all of them either.

Is there a way to deal with *all* of the monsters at once? You'd have to
exploit a weakness present in every single one. Something worth noting:
any monster is made up of matter — atoms joined together by chemical
bonds. Waving the wand given to you by the wizard elder will
instantaneously destroy all of the chemical bonds holding a beast's
matter together, disintegrating it! Since all monsters are made of
matter, this solution works for all of them.

It's worth pointing out that if the kingdom were invaded only by
lion-shaped monsters, luring them with meat would be sufficient. If
invaded only by eyeball monsters and ghosts, mirrors and sunlight would
suffice on their own. And if invaded only by lion-shaped and eyeball
monsters, we could use both traps and sunlight together.
{{< /example >}}

Let's dissect this example. What we're essentially trying to do is
determine a weakness for each monster — exploiting it lets us fell that
monster and save the kingdom. Mathematically, we're trying to show

$$\forall x\ [d(x)] = 1$$

where the universe of discourse is all monsters invading the kingdom,
$x$ represents a monster in that universe, and $d(x)$ is the open
statement "monster $x$ was successfully defeated."

We used $M$ to denote the universe — we know there are four types of
monsters, but not the total number. We picked an *arbitrary* monster
(the phrase "any monster" is our clue that the choice is arbitrary) and
identified a trait it had: it was made of matter. Since we picked an
arbitrary monster, we couldn't rely on it having a hungry stomach (an
eyeball monster or robot might not have one), nor could we rely on it
having exposed eyes sensitive to light (a lion-shaped monster or robot
might not). It was important to pick a trait *all* the monsters share,
since we're trying to defeat all of them, not just some kind.

This is the power of universal generalization: if we *pick an arbitrary
element* from the universe, and only use traits *common to every single
element*, then whatever we do with that arbitrarily chosen element
*applies to all elements*. Since we only relied on properties shared by
everyone, the same procedure can be replicated for every element of the
universe.

## Exhaustive Checking
---

Notice that nowhere in the monster example did we discuss going around
and checking each and every specific monster for a weakness. One reason
is that the exact number of monsters was never disclosed — there could
have been $10$, in which case checking each one wouldn't be burdensome.
There could have been $100$, which would be tedious but manageable. If
there were $10{,}000{,}000$, checking each one individually would take
an extremely long time. If there were infinitely many, checking each
one would be flatly impossible.

This is why we tried to find a weakness shared by all the monsters — no
matter how many there are, they should all have something in common
that can be exploited. To hammer the point, imagine working with all of
the whole numbers instead of monsters — there are infinitely many, so
we can't simply check each one against some condition. We need to rely
on properties shared by *all* whole numbers, not just some of them.

## The Rule of Universal Generalization
---

The ultimate goal of this section is to establish the truth of
statements of the form $\forall x\ [p(x)]$ — that is, to show $p(c)$ is
true for every $c$ within the prescribed universe of discourse
$\mathcal{U}$. But as described above, we may not always be able to
simply examine each element $c$ within $\mathcal{U}$: if it contains
many elements, checking each one can be incredibly burdensome, and if
it contains infinitely many, it's literally impossible. This is why we
need some property that every element of $\mathcal{U}$ has.

In the monster example, we picked an arbitrary element and only relied
on properties every single member of the universe had as well — so what
we did with that arbitrarily picked element applies to all elements.
Whatever we discover to be true about it must also be true of every
element in the universe.

{{< star title="The Rule of Universal Generalization" >}}
If $p(x)$ is an open statement that takes on a truth value of $1$ when
$x$ is replaced by an arbitrarily chosen element $c$ within universe
$\mathcal{U}$, then $p(x)$ is true for every element within
$\mathcal{U}$.

This rule extends to open statements with two variables: if $p(x, y)$
becomes true when $x$ is replaced by an arbitrarily chosen element $c_x$
from universe $\mathcal{U}_x$, and $y$ is replaced by an arbitrarily
chosen element $c_y$ from universe $\mathcal{U}_y$, then $p(x, y)$ is
true for every element within $\mathcal{U}_x$ and $\mathcal{U}_y$ (of
course, $x$ and $y$ could come from the same universe of discourse).

This rule can be extended further still, to as many variables as
needed.
{{< /star >}}

The following examples use the concepts of even and odd integers. Most
readers are familiar enough with what these are already, so we'll
refrain from giving a formal definition just yet (one will follow in the
next section) — the lack of one here shouldn't be a hindrance.

{{< example title="Checking a few cases isn't enough" >}}
Consider the statement "If $n$ is an integer, then $3n^2 + n + 14$ is
even" — or, more mathematically, $n \text{ is an integer} \to
3n^2 + n + 14 \text{ is an even integer}$.

Suppose we want to determine whether this is a logical implication. We
could start by checking a few numbers:

\[
\begin{array}{lll}
 & \boldsymbol{3n^2 + n + 14} & \\
n = 1: & 3(1)^2 + (1) + 14 = 18 & \text{even, good} \\
n = 2: & 3(2)^2 + (2) + 14 = 28 & \text{even, good} \\
n = 3: & 3(3)^2 + (3) + 14 = 44 & \text{even, good}
\end{array}
\]

But there are infinitely many integers, so this process isn't feasible
— we'll never know whether the statement is a logical implication just
by checking numbers one at a time. We need a way to deal with infinitely
many cases all at once.
{{< /example >}}

{{< example title="Splitting into even and odd still isn't enough" >}}
Reconsider the statement "If $n$ is an integer, then $3n^2 + n + 14$ is
even." Something we could do is split the integers into distinct
groups — say, based on whether they're even or odd. If $n$ is even, it's
the double of some other integer $k$, meaning $n = 2k$. Substituting
this in:

\[
\begin{array}{lll}
 & \boldsymbol{3n^2 + n + 14} & \textbf{Reason} \\
= & 3(2k)^2 + (2k) + 14 & \text{Substitute } n = 2k \\
= & 3(4k^2) + 2k + 14 & \text{Evaluate the power.} \\
= & 12k^2 + 2k + 14 & \text{Multiply.} \\
= & 2(6k^2) + 2(k) + 2(7) & \text{Factor a 2 from each term.} \\
= & 2(6k^2 + k + 7) & \text{Factor the 2 out entirely.}
\end{array}
\]

So $3n^2 + n + 14$ can be written as double $6k^2 + k + 7$, meaning it's
even — and this one case covers every possible *even* integer we could
plug in. All that's left is checking what happens when $n$ is odd.

Even though we could do this, we still wouldn't really be using the
Rule of Universal Generalization, since not all integers are even, and
not all are odd. We'd like a property that *all* integers share, not
just some of them.
{{< /example >}}

{{< example title="A property that all integers share" >}}
Once again, consider "If $n$ is an integer, then $3n^2 + n + 14$ is
even." We want to make use of a property all integers share.

Something we can do with any integer, no matter what kind, is split up
sums into smaller parts. For example, $3n^2 = n^2 + n^2 + n^2$, which we
could also split as $3n^2 = 2n^2 + n^2$:

\[
\begin{array}{lll}
 & \boldsymbol{3n^2 + n + 14} & \textbf{Reason} \\
= & 2n^2 + n^2 + n + 14 & \text{Split } 3n^2 \text{ into } 2n^2 + n^2. \\
= & 2n^2 + n(n + 1) + 14 & \text{Factor a common } n \text{ from } n^2 + n. \\
= & 2n^2 + 14 + n(n + 1) & \text{Commutative Law of addition.} \\
= & 2(n^2 + 7) + n(n + 1) & \text{Factor a common 2 from } 2n^2 \text{ and } 14.
\end{array}
\]

Everything we've done here can be replicated no matter what kind of
integer $n$ is, meaning we can replicate these steps for *all*
integers.

Notice $2(n^2 + 7)$ is just double whatever $n^2 + 7$ happens to be, so
it's even. Furthermore, $n(n+1)$ is the product of an even integer and
an odd integer — since $n$ and $n+1$ are $1$ apart, one must be even and
the other odd, and the product of an even integer and an odd integer is
always even. So $n(n+1)$ is even too.

Since we're adding two even integers together, the sum must be even:

\[
\begin{array}{lll}
 & \boldsymbol{3n^2 + n + 14} & \textbf{Reason} \\
= & [2(n^2 + 7)] + [n(n + 1)] & \text{From above.} \\
= & [\text{even integer}] + [\text{even integer}] & \text{Both terms are even.} \\
= & \text{even integer} & \text{The sum of two even integers is even.}
\end{array}
\]

So, by the Rule of Universal Generalization, $3n^2 + n + 14$ must be
even no matter what integer $n$ happens to be:

$$n \text{ is an integer} \Longrightarrow 3n^2 + n + 14 \text{ is an even integer}.$$
{{< /example >}}

So far, our use of the Rule of Universal Generalization has been
intuitive — we haven't explicitly shown how to use it within an
argument.

## Using the Rule of Universal Generalization in Arguments
---

Once again, let's take a step back. In the monster example, we thought
of a trait shared by all monsters (a universal quantifier), and
concluded that all monsters would be defeated (another universal
quantifier). In the even-integer example, we made use of multiple
properties shared by all integers, building a chain that led to a final
conclusion — much like the Law of the Syllogism. In both cases, we had
premises that were universally quantified.

Let's start simple, with two premises:

\[
\begin{array}{l}
\forall x\ [p(x) \to q(x)] \\
\forall x\ [q(x) \to r(x)] \\
\hline
\therefore \forall x\ [p(x) \to r(x)]
\end{array}
\]

Is this argument valid?

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \forall x\ [p(x) \to q(x)] & \text{Premise} \\
(2) & c \in \mathcal{U} & \text{We can always pick an arbitrary element from a non-empty universe} \\
(3) & p(c) \to q(c) & \text{Rule of Universal Specification on (1) and (2)} \\
(4) & \forall x\ [q(x) \to r(x)] & \text{Premise} \\
(5) & q(c) \to r(c) & \text{Rule of Universal Specification on (2) and (4)} \\
(6) & p(c) \to r(c) & \text{Law of the Syllogism on (3) and (5)} \\
(7) & \therefore \forall x\ [p(x) \to r(x)] & \text{Rule of Universal Generalization on (2) and (6)}
\end{array}
\]

This argument — which we might call the **Universally Generalized Law
of the Syllogism** — is valid. Pay particular attention to step (2):
here, we clearly specify that $c$ is an arbitrary element of
$\mathcal{U}$, meaning whatever is true of $c$ is true for every
element of $\mathcal{U}$. This is what allows us to use the Rule of
Universal Generalization at the end.

If we had instead assumed $n$ was specifically an odd integer in the
earlier examples, we could *not* have used the Rule of Universal
Generalization, since what's true of all odd integers isn't necessarily
true of all even integers — an assumption like that isn't *arbitrary*.
The rule only applies when an element is *arbitrarily* chosen.

Just like the Law of the Syllogism, many implications can be chained
together.

{{< example title="Solving a linear equation, as an argument" >}}
Consider the universe $\mathcal{U}$ of all real numbers. In any algebra
class, we're shown methods to solve linear equations of the form $ax + b
= c$, where $a$, $b$, $c$ are given numbers. What's implicit in that
conversation is the Rule of Universal Generalization.

Take the linear equation $69x + 144 = 420$. We know that *if* $69x + 144
= 420$, *then* we can factor out a $3$ from both sides to get $23x + 48
= 140$. We know that *if* $23x + 48 = 140$, *then* subtracting $48$ from
both sides gives $23x = 92$. Finally, we know that *if* $23x = 92$,
*then* dividing both sides by $23$ gives $x = 4$.

We can write this out as an argument. Consider the propositions

\[
\begin{array}{rl}
a(x)\text{: } &69x + 144 = 420 \\
b(x)\text{: } &23x + 48 = 140 \\
c(x)\text{: } &23x = 92 \\
d(x)\text{: } &x = 4
\end{array}
\]

giving us the argument

\[
\begin{array}{l}
\forall x\ [a(x) \to b(x)] \\
\forall x\ [b(x) \to c(x)] \\
\forall x\ [c(x) \to d(x)] \\
\hline
\therefore \forall x\ [a(x) \to d(x)]
\end{array}
\]

which is to say

\[
\begin{array}{l}
69x + 144 = 420 \to 23x + 48 = 140 \\
23x + 48 = 140 \to 23x = 92 \\
23x = 92 \to x = 4 \\
\hline
\therefore 69x + 144 = 420 \to x = 4
\end{array}
\]

So, we've determined that *if* $69x + 144 = 420$, *then* $x = 4$.

It may seem strange to think of this implication as universally
quantified, since there's exactly one number ($4$) satisfying the
equation. But remember, this is part of an implication — we can insert
any number into $69x + 144 = 420$, but for most numbers, $a(x)$ will
just be false: $a(0) = 0$, $a(1) = 0$, $a(2) = 0$, $a(3) = 0$, $a(4) =
1$, $a(5) = 0$, and so on. This is why we say *if*: when $a(x) = 0$, the
implication is trivially true; when $a(x) = 1$, it's true, but not
trivially. Thus, the implication is always true.
{{< /example >}}

Many of the rules of inference can be adapted into universally
generalized versions with some care — these will prove vital not just
in the rest of this chapter, but throughout all of mathematics. One
strategy for universally generalizing a rule of inference is to use the
Rule of Universal Specification to get an arbitrary element from the
universe, then apply the Rule of Universal Generalization on that
arbitrary element.

## Assumed Premises
---

Let's re-examine the argument for the Universally Generalized Law of
the Syllogism:

\[
\begin{array}{l}
\forall x\ [p(x) \to q(x)] \\
\forall x\ [q(x) \to r(x)] \\
\hline
\therefore \forall x\ [p(x) \to r(x)]
\end{array}
\]

The conclusion involves an implication of the form $p(x) \to
r(x)$. What happens if we pick an element $c$ from $\mathcal{U}$ where
$p(c)$ is false? Then $p(c) \to r(c)$ becomes trivially
true — but this defeats the entire purpose of the argument. We only
want to deduce true statements from true statements. If any premise
were false, the whole argument would reduce to a trivially true
implication, and the point of proposing it becomes moot.

{{< example title="Why the hypothesis of the conclusion can be assumed" >}}
Suppose you presented the following argument to your friend:

\[
\begin{array}{l}
\text{If a quadrilateral is a rectangle, then it's a parallelogram.} \\
\text{If a quadrilateral is a parallelogram, then it has two pairs of parallel sides.} \\
\hline
\therefore \text{If a quadrilateral is a rectangle, then it has two pairs of parallel sides.}
\end{array}
\]

Your friend might respond, "Yeah, but what if the quadrilateral isn't a
rectangle?" Well, so what? The argument is only concerned with
quadrilaterals that *are* rectangles, so it has nothing to say about
ones that aren't. Since the argument makes no conclusion about
non-rectangles, your friend's rebuttal is pointless — an entirely
different argument would be needed to deal with those.
{{< /example >}}

This is why, if the conclusion of a proposed argument contains an
implication, the hypothesis of that conclusion can be assumed true, and
used as a premise of the argument. These are often referred to as
**assumed premises**. When the conclusion is a universally quantified
implication, we can assume the truth of the hypothesis on an arbitrarily
picked element, as in the example below.

{{< example title="Using an assumed premise" >}}
Consider universe $\mathcal{U}$ with open statements $a(x)$, $b(x)$,
$c(x)$, $d(x)$. Is the argument

\[
\begin{array}{l}
\forall x\ [a(x) \to c(x)] \\
\forall x\ [(\neg a(x) \land b(x)) \to d(x)] \\
\hline
\therefore \forall x\ [(\neg c(x) \land b(x)) \to d(x)]
\end{array}
\]

valid?

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \forall x\ [a(x) \to c(x)] & \text{Premise} \\
(2) & p \in \mathcal{U} & \text{We can always pick an arbitrary element from a non-empty universe} \\
(3) & a(p) \to c(p) & \text{Universal Specification on (1) and (2)} \\
(4) & \neg c(p) \land b(p) & \text{Assumed Premise} \\
(5) & \neg c(p) & \text{Conjunctive Simplification on (4)} \\
(6) & \neg a(p) & \text{Modus Tollens on (3) and (5)} \\
(7) & b(p) & \text{Conjunctive Simplification on (4)} \\
(8) & \neg a(p) \land b(p) & \text{Rule of Conjunction on (6) and (7)} \\
(9) & \forall x\ [(\neg a(x) \land b(x)) \to d(x)] & \text{Premise} \\
(10) & (\neg a(p) \land b(p)) \to d(p) & \text{Universal Specification on (2) and (9)} \\
(11) & d(p) & \text{Modus Ponens on (8) and (10)} \\
(12) & (\neg c(p) \land b(p)) \land d(p) & \text{Rule of Conjunction on (4) and (11)} \\
(13) & (\neg c(p) \land b(p)) \to d(p) & (x \land y) \Longrightarrow (x \to y) \\
(14) & \therefore \forall x\ [(\neg c(x) \land b(x)) \to d(x)] & \text{Universal Generalization on (2) and (13)}
\end{array}
\]
{{< /example >}}

It's worth mentioning that step (13) used the logical implication $(x
\land y) \Longrightarrow (x \to y)$. This can be verified with a
truth table, but notice that it's a valid argument by itself, so we can
use it as a reason in other arguments — remember, all the rules of
inference are just specific valid arguments.

With this final rule, we're now ready to start delving into the heart
of mathematics!

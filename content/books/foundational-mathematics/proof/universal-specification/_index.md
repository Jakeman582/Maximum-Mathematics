+++
title = 'Universal Specification'
type = 'chapter'
weight = 10
draft = true

[params]
  section = 10
+++

Throughout our discussion of arguments so far, we haven't made use of
any quantified statements — though we devoted several sections to
quantifiers in the previous chapter, so we certainly got some mileage
out of them there. Here, we start to discuss how quantified statements
can be used in arguments.

The reason we want to do this is that many of the results we're going
to come across are stated in the language of quantifiers. For example,
consider the Pythagorean Theorem:

$$\text{If any triangle is a right triangle with legs of lengths } a \text{ and } b \text{, and hypotenuse of length } c \text{, then } a^2 + b^2 = c^2.$$

Notice that implicit in this statement is the universal quantifier "if
any." We could write the Pythagorean Theorem using our current
mathematical symbology as follows:

\[
\begin{array}{rl}
\mathcal{U}\text{: } &\text{All planar triangles.} \\
p(t)\text{: } &t \text{ is a right triangle with leg lengths } a \text{ and } b, \text{ hypotenuse } c. \\
q(t)\text{: } &a^2 + b^2 = c^2.
\end{array}
\]

$$\forall t\ [p(t) \to q(t)]$$

The Pythagorean Theorem works for every single conceivable right
triangle in the plane — not just some specific kind, but *every single
one*. That's the power of the theorem: it lets us compute a side length
of any right triangle when the other two are known. Since scientists,
engineers, architects, and mathematicians all need to calculate lengths
of triangles constantly, this theorem has come in handy very often. It
would be near-useless if it only applied to one triangle, like a
$3$-$4$-$5$ triangle — it wouldn't be nearly as widely known or
applicable as it is today.

This is why we care about quantifiers: they let us extend results
beyond a single example to potentially infinitely many of them. So much
of what's calculable in engineering, science, and mathematics is
possible only because the underlying theorems are so extensive — and
that's precisely because they're quantified.

Here, we discuss ==Universal Specification==, one way to use quantifiers
in arguments that lets us go from broadly true statements to
specifically true statements.

## Motivating Examples
---

{{< example title="A green car, because everything Ms. Lippy owns is green" >}}
At a particular school, one of the most loved teachers by the students
is Ms. Lippy, a very creative and sometimes eccentric teacher who loves
the color green. Suppose we knew:

$$\text{Everything Ms. Lippy owns is green.} \qquad \text{Ms. Lippy owns a car.}$$

What, if anything, can we figure out? Based on the first piece of
information, we can sort every object into two categories: objects owned
by Ms. Lippy, and objects not owned by Ms. Lippy. If an object isn't
owned by Ms. Lippy, we don't know anything about its color — it could be
green, or some other color entirely. The only objects we're told
anything about are those Ms. Lippy owns: they're all green!

We also know Ms. Lippy's car is an object she owns. As such, we're
guaranteed to know Ms. Lippy's car is green!
{{< /example >}}

{{< example title="A blue duck, because every duck Billy draws is blue" >}}
One of Ms. Lippy's favorite students is named Billy, who has a very wild
and active imagination. As part of his education, he's required to take
Ms. Lippy's art class. Suppose we know:

$$\text{Every duck that Billy draws is blue.} \qquad \text{Billy drew a duck for his art class assignment.}$$

What, if anything, can we conclude? Just as before, we have two
categories: ducks drawn by Billy, and ducks not drawn by Billy. Since
Billy drew a duck for his assignment, that duck must have been drawn
blue — there are no exceptions to the first piece of information, so
that duck is guaranteed to be blue, because it was drawn by Billy, and
every duck Billy draws is blue.
{{< /example >}}

{{< example title="Ruling out Billy as the artist" >}}
Billy isn't the only student in Ms. Lippy's art class — she manages a lot
of students across all of her classes. Consider:

$$\text{Every duck that Billy draws is blue.} \qquad \text{One duck submitted for Ms. Lippy's art class was not blue.}$$

What can we conclude here? Examining this a little more closely than
before, we infer the implication "If Billy draws a duck, then that duck
is blue," which we can represent as $\text{billy} \to
\text{blue}$ — using words instead of single letters for clarity: "billy"
for "Billy drew a duck," and "blue" for "The duck is blue."

What we know is that a duck was submitted that was not blue — that is,
$\neg \text{blue}$. Since we know $\text{billy} \to
\text{blue}$ and $\neg \text{blue}$, Modus Tollens tells us we must have
$\neg \text{billy}$. So, Billy did not draw that particular duck —
because if he had, it would definitely have been blue.
{{< /example >}}

## The Rule of Universal Specification
---

Thinking back to the previous examples, the general strategy was to
figure out what classifications were in use, then figure out which
classification an object belonged to. Once we knew an object's category,
we knew it had a certain property, since that property was shared by
every object in the category.

{{< star title="The Rule of Universal Specification" >}}
Consider an open statement $p(x)$ defined on some universe $\mathcal{U}$.

If $p(x) = 1$ for every replacement of $x$ by every element within
$\mathcal{U}$, then $p(x)$ takes on truth value $1$ when $x$ is replaced
by a specifically chosen element within $\mathcal{U}$, which we'll refer
to as $c$.

In other words, if $\forall x \in \mathcal{U}\ [p(x)] = 1$ and $c \in
\mathcal{U}$, then $p(c) = 1$ as well.
{{< /star >}}

This is the formal statement of what we were trying to say in the
previous three examples. When we spoke of "categories" or "kinds," we
were dealing with inclusion within the universe $\mathcal{U}$ — an
element $c$ belonging to the category is the same thing as saying $c \in
\mathcal{U}$; not belonging is $c \notin \mathcal{U}$ (read "not a
member of," or "not an element of" — analogous to the inequality $\neq$
symbol).

The next part of this rule is to notice there's an implicit
implication: $c \in \mathcal{U} \to p(c) = 1$. So, if $c$ is
an element of the universe, then $p(c)$ is true. But if $c$ is not an
element of the universe, we don't know whether $p(c) = 0$ or $p(c) = 1$,
because either way, the implication is trivially true. The argument

\[
\begin{array}{l}
\forall x \in \mathcal{U}\ [p(x)] \\
c \in \mathcal{U} \\
\hline
\therefore p(c)
\end{array}
\]

is valid. Just like with the other rules of inference, this is a valid
rule usable in the analysis of a mathematical argument. The intuition
is that if every member of a group satisfies some property, then
picking any element from that group means the chosen element satisfies
that property too.

## Universal Specification and Modus Ponens
---

With the quantified statement $\forall x \in \mathcal{U}\ [p(x)] = 1$,
$p(x)$ may represent a primitive statement, or a compound one. Very
often, $p(x)$ represents an implication — for example, if $p(x)$
represents $a(x) \to b(x)$, we could rewrite the quantified
expression as $\forall x \in \mathcal{U}\ [a(x) \to b(x)] =
1$.

{{< example title="Ms. Lippy's car, revisited" >}}
Let's re-examine the "everything Ms. Lippy owns is green" example.
First, we figure out the applicable universe of discourse: we'll use
$\mathcal{U}$ for every possible object in existence, since this problem
is fundamentally about objects, whether or not they're owned by Ms.
Lippy, and whether or not they're green. We pick out the propositions

\[
\begin{array}{rl}
\ell(x)\text{: } &x \text{ is an object owned by Ms. Lippy.} \\
g(x)\text{: } &x \text{ is green.}
\end{array}
\]

The phrase "everything" in "everything Ms. Lippy owns is green"
suggests the universal quantifier, applied to every possible object.
That statement, and the fact that being owned by Ms. Lippy implies being
green, rewrites as

$$\forall x \in \mathcal{U}\ [\ell(x) \to g(x)].$$

Next, "Ms. Lippy owns a car" tells us the object in question — her car,
which we'll call $c$ — exists, so $c \in \mathcal{U}$. It also tells us
that $c$ is owned by Ms. Lippy, so $\ell(c)$. We now have three true
propositions to serve as premises:

$$\forall x \in \mathcal{U}\ [\ell(x) \to g(x)] \qquad c \in \mathcal{U} \qquad \ell(c).$$

Let's analyze this argument:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \forall x \in \mathcal{U}\ [\ell(x) \to g(x)] & \text{Premise} \\
(2) & c \in \mathcal{U} & \text{Premise} \\
(3) & \ell(c) \to g(c) & \text{Universal Specification on (1) and (2)} \\
(4) & \ell(c) & \text{Premise} \\
(5) & \therefore g(c) & \text{Modus Ponens on (3) and (4)}
\end{array}
\]

Our final conclusion is $g(c)$, corresponding to "Ms. Lippy's car is
green" — the same conclusion we reached before, now derived formally.
{{< /example >}}

The argument

\[
\begin{array}{l}
\forall x \in \mathcal{U}\ [a(x) \to b(x)] \\
a(c) \\
\hline
\therefore b(c)
\end{array}
\]

is valid — a combination of Modus Ponens and the Rule of Universal
Specification, for any open statements $a(x)$ and $b(x)$ defined on some
universe $\mathcal{U}$.

## Universal Specification and Modus Tollens
---

If we can combine the Rule of Universal Specification with Modus
Ponens, surely we can combine it with Modus Tollens too.

{{< example title="Ruling out Billy as the artist, revisited" >}}
Let's re-examine the "one duck was not blue" example, where the universe
of discourse is all ducks, denoted $D$ instead of $\mathcal{U}$. We pick
out the propositions

\[
\begin{array}{rl}
s(x)\text{: } &x \text{ is a duck drawn by Billy.} \\
t(x)\text{: } &x \text{ is blue.}
\end{array}
\]

giving us the premises $\forall x \in D\ [s(x) \to t(x)]$
and $\neg t(d)$, where $d$ is the non-blue duck submitted for the
assignment. Now we use the rules of inference to make a valid
deduction:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \forall x \in D\ [s(x) \to t(x)] & \text{Premise} \\
(2) & d \in D & \text{Premise} \\
(3) & s(d) \to t(d) & \text{Rule of Universal Specification on (1) and (2)} \\
(4) & \neg t(d) & \text{Premise} \\
(5) & \therefore \neg s(d) & \text{Modus Tollens on (3) and (4)}
\end{array}
\]

Our conclusion, $\neg s(d)$, represents "The duck was not drawn by
Billy" — again matching the conclusion we reached before.
{{< /example >}}

Notice that we listed $d \in D$ as a premise, even though it wasn't
explicitly one of the argument's premises — inclusion in the universe
is often an implicit assumption, since analyzing an object not in the
universe wouldn't tell us anything useful.

It's also worth pointing out that even though one of the premises is a
quantified statement, we're able to extract a non-open statement from
it using the Rule of Universal Specification: $s(d) \to
t(d)$ is not an open statement, because both $s(d)$ and $t(d)$ have
definite truth values, since $d$ is a specified member of $D$, not a
placeholder like $x$.

The argument

\[
\begin{array}{l}
\forall x \in \mathcal{U}\ [a(x) \to b(x)] \\
\neg b(c) \\
\hline
\therefore \neg a(c)
\end{array}
\]

is valid — combining the Rule of Universal Specification with Modus
Tollens. In both cases, once we have a non-open statement, we can use
any of the other rules of inference we've learned — we're not limited
to Modus Ponens and Modus Tollens.

{{< example title="A geometric application" >}}
For a more mathematical example, consider the propositions

\[
\begin{array}{rl}
s(x)\text{: } &\text{The opposite angles of quadrilateral } x \text{ are supplementary.} \\
p(x)\text{: } &\text{The perpendicular bisectors of the sides of } x \text{ are all concurrent.} \\
c(x)\text{: } &\text{Quadrilateral } x \text{ is a cyclic quadrilateral.}
\end{array}
\]

Here, the universe $\mathcal{U}$ is all planar quadrilaterals, and let
$q$ represent quadrilateral $ABCD$. Consider the argument

\[
\begin{array}{l}
\forall x\ [(s(x) \lor p(x)) \to c(x)] \\
\neg c(q) \\
\hline
\therefore \neg s(q)
\end{array}
\]

We use the rules of inference to determine validity:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \forall x\ [(s(x) \lor p(x)) \to c(x)] & \text{Premise} \\
(2) & \neg c(q) & \text{Premise} \\
(3) & \neg (s(q) \lor p(q)) & \text{Modus Tollens + Universal Specification on (1) and (2)} \\
(4) & \neg s(q) \land \neg p(q) & \text{DeMorgan's Law on (3)} \\
(5) & \therefore \neg s(q) & \text{Conjunctive Simplification on (4)}
\end{array}
\]

So the argument is valid — if planar quadrilateral $ABCD$ isn't cyclic,
its opposite angles must not be supplementary.
{{< /example >}}

## Arguing by the Converse and Inverse
---

The argument

\[
\begin{array}{l}
\forall x \in \mathcal{U}\ [a(x) \to b(x)] \\
b(c) \\
\hline
\therefore a(c)
\end{array}
\]

is invalid, since it combines argument by the converse with the Rule of
Universal Specification. Likewise, the argument

\[
\begin{array}{l}
\forall x \in \mathcal{U}\ [a(x) \to b(x)] \\
\neg a(c) \\
\hline
\therefore \neg b(c)
\end{array}
\]

is invalid, combining argument by the inverse with the same rule.

One should be careful when analyzing arguments — just as arguing by the
converse or inverse is a fallacy without quantified statements, it's
equally fallacious with them.

{{< example title="A rectangle disproves this fallacious argument" >}}
Consider the universe $Q$ of all planar quadrilaterals, along with

\[
\begin{array}{rl}
s(x)\text{: } &x \text{ is a square.} \\
r(x)\text{: } &\text{Every angle of } x \text{ is a right angle.}
\end{array}
\]

Let $q$ represent quadrilateral $ABCD$, and consider the argument

\[
\begin{array}{l}
\forall x \in Q\ [s(x) \to r(x)] \\
\neg s(x) \\
\hline
\therefore \neg r(q)
\end{array}
\]

We can find many counterexamples showing this argument is invalid, since
it's essentially arguing by the inverse — just because a quadrilateral
isn't a square doesn't mean it doesn't have all right angles. One such
example is a rectangle whose sides measure $4$ units and $2$ units;
another is a rectangle whose sides measure $2.718$ units and $3.142$
units. Every angle of every rectangle is a right angle.
{{< /example >}}

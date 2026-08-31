+++
title = 'Axioms, Definitions, Theorems, and Proofs'
type = 'chapter'
weight = 12
draft = true

[params]
  section = 12
+++

Over the past two chapters, we've been building up a system of
mathematical logic — what propositions are, how to determine their
truth, when two propositions are equivalent, and how to use propositions
in arguments to make valid deductions.

However, this isn't how most of mathematics is communicated. Most of us
understand math in terms of numbers and geometric shapes: arithmetic,
algebra, trigonometry, lines and angles, polygons and circles, graphs
and equations. What we've done so far looks very different. What gives?

The reason we spent so much time getting a grip on mathematical logic is
that mathematics is fundamentally about using known facts (propositions)
to deduce new facts (valid arguments). We've talked about the
Pythagorean Theorem in numerous introductions, and asked how we know
it's true — it wasn't inscribed on a stone tablet and sent down for all
to see. Someone had to figure it out.

Moving forward, we're going to be deducing new facts from old facts, all
having some mathematical interest. Everything we do will rest on the
logic we've learned so far, though the structured use of that logic will
usually stay implicit rather than being explicitly pointed out — the
tools are there to fall back on whenever we're unsure about the
soundness of a piece of reasoning. From this point forward, our examples
will be mathematical in nature, rather than concerned with people and
the situations they find themselves in.

Axioms, definitions, theorems, and proofs are the main tools of
mathematics — they're what we use, and what we produce. Let's begin!

## Defining Definitions
---

In everyday language, it's common to speak with conditionals — but
everyday language isn't precise. People tend to use implications when
speaking, even when what they mean is really a biconditional.

{{< example title="A definition disguised as two implications" >}}
In Marina's geometry class, her teacher stated: "If a quadrilateral has
two pairs of parallel sides, then it is a parallelogram." Marina
translates this mathematically:

\[
\begin{array}{rl}
\mathcal{U}\text{: } &\text{All planar quadrilaterals} \\
t(x)\text{: } &x \text{ has two pairs of parallel sides} \\
p(x)\text{: } &x \text{ is a parallelogram}
\end{array}
\]

$$\forall x\ [t(x) \to p(x)]$$

Later, as she's studying with her friend Daisy, Daisy states: "If a
quadrilateral is a parallelogram, then it has two pairs of parallel
sides" — that is, $\forall x\ [p(x) \to t(x)]$.

Marina notes that Daisy isn't wrong — parallelograms really do have two
pairs of parallel sides. In fact, being a parallelogram goes hand in
hand with having two pairs of parallel sides. So even though both
statements use an implication, what's really meant is a biconditional.
Marina settles on: "A quadrilateral is a parallelogram if and only if it
has two pairs of parallel sides" — that is, $\forall x\ [p(x)
\leftrightarrow t(x)]$.

Would we ever be able to verify $p(q) \to t(q)$ for some given
quadrilateral $q$? We'd have to know what a parallelogram *is* — the
word itself doesn't tell us much, since it's just a man-made word. We
could figure out what "has two pairs of parallel sides" means, since we
understand the concepts it expresses. But determining whether a
quadrilateral is a parallelogram requires knowing what idea the word
"parallelogram" is being assigned to represent — and mathematicians have
defined it to mean exactly "a quadrilateral having two pairs of parallel
sides." This is why $\forall x\ [t(x) \leftrightarrow p(x)]$ is the most
appropriate statement — what the teacher and Daisy said were essentially
*defining* the word parallelogram.
{{< /example >}}

When writing mathematics, it's imperative to be as precise as possible.
If what you want to state involves a biconditional, you should use the
double-ended arrow $\leftrightarrow$ — it's almost never appropriate to
use the implication arrow $\to$ when a biconditional is
meant.

The exception is definitions. The purpose of a definition is to assign a
meaning, idea, or concept to a single word — so it's usually fine to
state definitions in terms of implications. Suppose we want to define
some new *word*, and assign it some *definition*. The most accurate way
to convey that meaning is

$$\textit{word} \leftrightarrow \textit{definition}.$$

Remember that for any two propositions $p$ and $q$, we have $p
\leftrightarrow q \Longleftrightarrow (p \to q) \land (q \to p)$. So, instead
of saying $\textit{word} \leftrightarrow \textit{definition}$, we're
fine saying $\textit{word} \to \textit{definition}$ or
$\textit{definition} \to \textit{word}$ — even though an implication is
used, what's really meant is the biconditional.

Here, we present some mathematical words and definitions you're likely
already familiar with, presented just for completeness.

{{< definition terms="whole numbers, integers" >}}
The numbers $0, 1, 2, 3, 4, \dots, 100, 101, \dots$ are collectively
referred to as the ==whole numbers==.

When we combine the whole numbers into a collection along with their
negative counterparts — $0, 1, -1, 2, -2, 3, -3, \dots$ — the new
collection is collectively referred to as the ==integers==.

When the universe of discourse we're using is the universe of all
integers, we commonly use the symbol $\mathbb{Z}$ instead of
$\mathcal{U}$.
{{< /definition >}}

{{< definition terms="even, odd" >}}
An integer $n$ is called ==even== if (and only if) there exists some
integer $k$ such that $n = 2k$. Mathematically,

$$\forall n\ [n \text{ is even} \leftrightarrow \exists k\ [n = 2k]].$$

An integer $n$ is called ==odd== if (and only if) there exists some
integer $k$ such that $n = 2k + 1$:

$$\forall n\ [n \text{ is odd} \leftrightarrow \exists k\ [n = 2k + 1]].$$
{{< /definition >}}

Notice that in this definition, we wrote the propositions out in
English rather than assigning them a single letter. Also note that we
wrote "and only if" in parentheses — that's to stress that a definition
is really a biconditional. Going forward, it's usually fine to say just
the "if" part, since the biconditional is what's meant either way.

{{< example title="Checking whether specific integers are even or odd" >}}
Since $0$ is an integer, we can describe it as even or odd. $0$ is even
because there's an integer $k$ (namely $k = 0$) such that $0 = 2k$.
Notice the definition of even doesn't require $k$ to be different from
$n$ — as long as $k$ is any integer, we say $n$ is even. There's no
integer $k$ such that $0 = 2k + 1$, so $0$ isn't odd (the closest
integers we could pick for $k$ are $-1$ and $0$).

$9$ is odd, since setting $k = 4$ gives $2(4) + 1 = 9$. There's no
integer we can substitute for $k$ so that $9 = 2k$ — the closest are $k =
4$ (giving $8$) and $k = 5$ (giving $10$).

Notice that when checking $4$ is even, we found $k = 2$, which is
itself even — but when checking $6$ is even, we found $k = 3$, which is
odd. Nowhere in the definition of even did we require $k$ to be even or
odd; the only requirement is that $k$ be *some* integer.

The same holds for odd integers: for $11$, we have $11 = 2(5) + 1$, and
$5$ is odd; for $13$, we have $13 = 2(6) + 1$, and $6$ is even. Again,
$k$ doesn't have to be the same type of integer as $n$, just an integer
itself.

What about numbers other than integers? For $-8$, setting $k = -4$ gives
$-8 = 2(-4)$, so $-8$ is even. For $-13$, setting $k = -7$ gives $-13 =
2(-7) + 1$, so $-13$ is odd. But what about $3.2$? Since our definitions
of even and odd both require $n$ to be an integer, and $3.2$ isn't one,
neither definition applies — $3.2$ is neither even nor odd. The terms
even and odd, as defined here, only apply to integers.
{{< /example >}}

It may seem excessive to go over the details of how even and odd
integers are defined — the point isn't to teach what they are, but to
show how much nuance even a simple definition can carry. Notice that our
definition of even really has three requirements: $n$ must be an
integer, $n = 2k$ for some number $k$, and $k$ must be an integer. If any
one of these fails, we can't describe $n$ as even. Three analogous
requirements apply to odd. All definitions in mathematics work this
way — they assert conditions that must be satisfied before the
associated word can be applied.

{{< definition terms="parity" >}}
Two integers are said to have the same ==parity== if (and only if)
they're both even, or both odd. Two integers are said to have different
parity if (and only if) one is even and the other is odd.
{{< /definition >}}

In order for the word "parity" to be applied, we need two integers to
begin with — if either isn't an integer, the word doesn't apply. Using a
more notational style: with $p(a, b)$ representing "$a$ and $b$ have the
same parity," $e(a)$ representing "$a$ is even," and $o(a)$ representing
"$a$ is odd,"

$$\forall m, n\ [p(m, n) \leftrightarrow (e(m) \land e(n)) \lor (o(m) \land o(n))].$$

{{< star title="Mathematical Definitions" >}}
Going forward, we won't be so pedantic about describing every aspect of
a definition — it's up to the reader to determine whether a definition
can be applied. We'll still show how to write a definition using
mathematical notation.

The key is to carefully read every part of a definition, and understand
what its requirements are. If even one condition fails to hold, the
definition doesn't apply.
{{< /star >}}

{{< definition terms="perfect square" >}}
An integer $n$ is called a ==perfect square== if (and only if) there
exists some integer $k$ such that $n = k^2$:

$$\forall n\ [n \text{ is a perfect square} \leftrightarrow \exists k\ [n = k^2]].$$
{{< /definition >}}

In the previous two sections, we examined arguments with universally
quantified premises, but were more concerned with the *form* their
conclusions took — we never discussed how to get universally quantified
premises in the first place. Appealing to a definition is one way to do
so, as we'll see in the next section.

## Asserting Axioms
---

Whereas definitions are things that can simply be decreed, axioms
represent something fundamentally different — statements of mathematical
interest that are intuitively correct, but require no proof of
correctness.

{{< definition terms="axiom, postulate" >}}
An ==axiom== is a statement of mathematical interest that's taken, or
assumed, to be true without the need for proof, and is used as a premise
in arguments — but never appears as the conclusion of an argument.

The word ==postulate== is a synonym for axiom.
{{< /definition >}}

{{< example title="Associativity as an axiom" >}}
In arithmetic, we're familiar with the associative law: $a + (b + c) =
(a + b) + c$. It doesn't matter whether we add $b$ and $c$ together
first and then add $a$, or add $a$ and $b$ together first and then add
$c$. For example, $1 + (2 + 3) = 1 + 5 = 6 = 3 + 3 = (1 + 2) + 3$, which
is why we can simply write $1 + 2 + 3$ without parentheses at all.

But one example doesn't prove anything — how do we know this always
works? It's impossible to check every combination of numbers, and it
even seems to work for non-integers like $90.77$, $3.14159265$, and
$2.718$. Trying to find a counter-example seems fruitless too. As such,
we simply assert this as an axiom of basic arithmetic: we can always
change the order in which numbers are added together, and always get
the same result.
{{< /example >}}

{{< example title="Euclid's five postulates" >}}
Most of us have taken a geometry class full of definitions and theorems
about triangle congruence, parallel and perpendicular lines, angle
measure, area, and volume. How do we know all of those theorems are
true? Definitions can just be asserted, since we're forcing ideas onto
words — but theorems need to come from somewhere.

Roughly 2300 years ago, a Greek mathematician and philosopher named
Euclid wrote a book known as *The Elements*, laying out a system of
geometry based on five axioms, or as he called them, postulates:

1. A straight line may be drawn through any two points.
2. Any terminated straight line may be extended indefinitely.
3. A circle may be drawn with any given point as its center and any
   given radius.
4. All right angles are equal.
5. For a given line, and a point not on that line, a second line can be
   drawn through the point that never intersects the first line.

From these five axioms, most of what we know about plane (Euclidean)
geometry can be deduced using the rules of logic discussed previously —
for example, that the angle measures in any triangle always add up to
$180°$, no matter what kind of triangle it is.

We're not trying to prove that these five statements are correct — we're
asserting them to be true, and deducing more true statements from them.
When we assert some collection of axioms, we're essentially creating a
branch of mathematics. If even one axiom is altered, everything deduced
from the originals no longer holds — instead, you have an all-new branch
of mathematics, with new results and even more discoveries to be made!
{{< /example >}}

{{< star title="The Curious Case of the Parallel Postulate" >}}
As stated above, altering even one axiom defining a branch of
mathematics gives you an entirely new branch, where the old results
don't necessarily apply.

For a long time, many mathematicians and philosophers tried to prove
Euclid's fifth postulate using the first four, believing it didn't need
to be asserted as an axiom at all. As time went on, it was eventually
shown — using very sophisticated logic well beyond the scope of this
book — that the fifth postulate can't be deduced from the other four.

As a result, variations on the fifth postulate were asserted by many
people over a long time. Using the postulate as originally stated gives
"Euclidean" geometry, applicable to an infinitely long flat surface (a
plane). There are geometries where the Euclidean fifth postulate is
eschewed entirely — the two most commonly known are elliptic geometry
and hyperbolic geometry. There's also spherical geometry, distinct from
all three, concerned with geometric figures on the surface of a sphere.

Working with such geometries requires sophisticated tools explored in
later books. In short, elliptic geometry says there are no parallel
lines at all, while hyperbolic geometry says there are infinitely many
distinct parallel lines through a point not on some given line.
{{< /star >}}

## Theorizing Theorems
---

Whereas axioms are asserted and define an entirely new branch of
mathematics, theorems are always deducible from axioms and definitions.

{{< definition terms="theorem" >}}
A ==theorem== is a proposition of mathematical interest that's derived,
or deduced, from a set of axioms, definitions, or other theorems.
{{< /definition >}}

Axioms can only ever appear as premises in arguments; theorems can be
premises or conclusions. Typically, we start with a collection of axioms
and definitions, deduce some initial round of theorems, then deduce a
second round using the previous theorems along with the axioms and
definitions — and we can repeat this process to yield ever more
theorems. During all of this theorem-proving, we may even come up with
new definitions along the way.

Some theorems can be proven from other, previously deduced theorems, in
addition to the given axioms and definitions. In other cases, some
theorems are simply special cases of other theorems — and we have
special names for those too.

{{< definition terms="lemma, corollary" >}}
A ==lemma== is a type of theorem used to prove other theorems — that is,
a theorem used as a premise in another argument.

A ==corollary== is a type of theorem that results from considering
special cases of some given theorem.
{{< /definition >}}

Often, the word "theorem" is reserved for major results. We could be
pedantic about classifying various theorems as lemmas or corollaries,
but we'll mostly just stick to the word theorem — the important thing
about all of them is that they're deducible from axioms, definitions,
and other theorems.

## Providing Proofs
---

The final mathematical building block we'll discuss is the proof.

{{< definition terms="proof" >}}
A ==proof== is a valid argument provided to show that an implication is
a logical implication.
{{< /definition >}}

We've discussed arguments at length up to this point, especially how to
determine whether a given argument is valid — and we've touched lightly
on using the rules of inference to chain logical implications together
into new logical implications. All a proof really is is a valid
argument.

We typically describe a proof as being given in reference to a
theorem — if someone proposes a statement of mathematical interest, and
a proof can be given for it, that statement is henceforth called a
theorem, because it can be deduced. Remember that an argument is simply
an implication, with a conjunction of multiple propositions as the
hypothesis, and a single proposition as the conclusion — any of these
propositions, in the hypothesis or the conclusion, can be primitive or
compound.

In the next section, we start learning specific methods of proof, and
ways to devise them. This is the primary activity of mathematics.

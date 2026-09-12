+++
title = 'Sets'
type = 'chapter'
weight = 1

[params]
  section = 1
+++

Trying to precisely define a set can be rather tricky. While there are
formal definitions and axioms, here we will rely on our intuition.
Even without a formal specification, we can still derive many useful
results that hold up under scrutiny.

In this section, we'll learn what a set is (intuitively), and how to
describe what kinds of things are in a set.

## Intuitively Defining a Set
---

Sets, or collections, of objects abound in daily life. We could speak
of the set of fruits available for purchase at a local grocery store,
the set of birds native to North America, the set of components used
to build a specific computer, the set of roads from New York to Los
Angeles, and so on. We can make note of a couple of things here:

- The order in which we list the items in the collection doesn't
  appear to be relevant. If we simply want to know what kinds of birds
  are native to North America, we can list the Wild Turkey before the
  Sandhill Crane, or the Sandhill Crane before the Wild Turkey.
- If we accidentally list an item more than once, that also doesn't
  affect the set we're dealing with. For example, if we list I-80 W
  twice by accident, it doesn't change the fact that I-80 W is still a
  road between New York and Los Angeles. Sometimes we may care about
  this when planning a trip, but not if we just want to know what
  roads exist between New York and Los Angeles.
- However, if we miss an object — if it's listed zero times — that
  does affect our set, because then our set is not complete. For
  example, if a local grocery store sells mangos but forgets to
  advertise them, they may lose out on customers who want to purchase
  mangos.

As such, the order in which we list elements from a set is irrelevant.
The number of times we list an element from a set is also irrelevant.
All we care about is whether or not an object is in a set or not.

Sets of objects also appear frequently in mathematics. We could speak
of the set of numbers used to count objects, the set of points that
make up a line in space, the collection of parabolas with real roots,
the set of solutions to a system of equations, and so forth. Again, we
don't really care about the order in which these objects can be
listed out, and we also don't care if some objects from the set are
listed more than once. However, in order to be a complete description,
every possible object must be listed at least once.

{{< definition terms="set, element, member" >}}
A ==set== is an unordered collection of well-defined objects.

Each object within the set is called an ==element==, or ==member==, of
that set. We write

$$x \in A$$

to denote that object $x$ is a member of the set $A$. On the other
hand, if some object $y$ is not in $A$, then we write

$$y \notin A.$$
{{< /definition >}}

By *well-defined*, what we mean is that, if presented with a
description of some set $A$, we're able to determine whether some
given object — which we'll refer to as $x$ — is an element of $A$,
without any ambiguity.

{{< example title="A set that isn't well-defined" >}}
Suppose we were interested in forming sets of Major League Baseball
players.

What kinds of players would we include if we wanted to form the set of
"outstanding left-fielders"? The first thing we'd need to do is figure
out which players are outstanding left-fielders. Well, who qualifies
as an *outstanding* left-fielder? Are they the players who can throw
with the most accuracy? If so, what's the accuracy cutoff?

If accuracy isn't the metric, what about running speed? How fast a
player can run to catch a ball may be important. What about the ratio
of caught balls to missed balls? How exactly do we decide who to
include in the set of *outstanding* left-fielders?

The problem with a "set" such as "outstanding left-fielders" is that
the term *outstanding* is vague. Since it's not exactly clear how to
determine who an outstanding left-fielder is, we have no well-defined
criterion. As such, the above description does *not* define a set.

Let's do something different. This time, let's niche down into
something like this:

$$\text{The set of all Major League Baseball players who hit at least 300 home runs in the 1990s.}$$

Here, all we have to do is check the records of players from the
1990s, and see who hit at least 300 home runs. Here are those players:

\[
\begin{array}{l}
\text{Mark McGwire} \\
\text{Ken Griffey Jr.} \\
\text{Barry Bonds} \\
\text{Albert Belle} \\
\text{Juan Gonzalez} \\
\text{Sammy Sosa} \\
\text{Rafael Palmeiro} \\
\text{Jose Canseco} \\
\text{Frank Thomas} \\
\text{Fred McGriff} \\
\text{Matt Williams}
\end{array}
\]

Notice the difference: one description was vague and open to
interpretation, so not everyone would agree on what players to
include. The other description was specific, and could be verified
against the available records — it wasn't open to interpretation at
all, since we offered a very specific metric, and only players meeting
that requirement are included.
{{< /example >}}

Typically, we use capital letters such as $A$, $B$, $C$, $\dots$, $X$,
$Y$, and $Z$ to represent sets. That isn't always the case, but it's
fairly common. In contrast, we typically use lowercase letters such as
$a$, $b$, $c$, $\dots$, $x$, $y$, and $z$ to denote elements.

Something else worth noting is that we enclose the elements of a set
within curly braces $\{\ \}$, as demonstrated in the next example.

{{< example title="Testing membership in a well-defined set" >}}
Let's revisit the set defined in the previous example — the only
description that actually defined a set, that being the set of "Major
League Baseball players who hit at least 300 home runs in the 1990s."

Instead of repeatedly saying "the set of Major League Baseball players
who hit at least 300 home runs in the 1990s," we'll use the capital
letter $M$ to refer to that set:

$$M = \text{the set of Major League Baseball players who hit at least 300 home runs in the 1990s.}$$

We can use lowercase letters to refer to specific players:

\[
\begin{array}{rl}
a\text{: } &\text{Joe DiMaggio} \\
b\text{: } &\text{Ken Griffey Jr.} \\
c\text{: } &\text{Babe Ruth} \\
d\text{: } &\text{Mark McGwire} \\
e\text{: } &\text{Mike Piazza} \\
f\text{: } &\text{Barry Bonds} \\
g\text{: } &\text{Rocky Marciano}
\end{array}
\]

We can go through and determine set membership for each of these
players.

$a \notin M$, because Joe DiMaggio played baseball from 1936 to 1951,
and so didn't play baseball in the 1990s, meaning he didn't hit at
least 300 home runs in the 1990s.

$b \in M$, because Ken Griffey Jr. did hit at least 300 home runs in
the 1990s. Even though he played baseball for a brief time in 1989, as
well as for a long time in the 2000s, that's irrelevant — we can still
record how many home runs he hit in the 1990s alone, which was 382.

$c \notin M$, because Babe Ruth didn't play baseball in the 1990s, and
so didn't hit at least 300 home runs in the 1990s.

$d \in M$, because Mark McGwire meets the requirement to be in $M$.

$e \notin M$, because even though Mike Piazza did play Major League
Baseball in the 1990s, he didn't hit enough home runs to be in $M$ (he
hit 240, 60 short of the required 300).

$f \in M$, because Barry Bonds hit at least 300 home runs in the MLB
in the 1990s. As such, he meets the requirement for membership in $M$.

$g \notin M$, because Rocky Marciano didn't hit at least 300 home runs
in the MLB in the 1990s. As a matter of fact, Rocky didn't play
baseball professionally at all — instead, he was the Heavyweight World
Champion Boxer, active from 1947 to 1951. So not only is this the
wrong sport, but the time frame is incorrect too.
{{< /example >}}

## Building a Set
---

There are two primary ways to describe what kinds of elements are
within a set.

One way is to simply list them all. Of course, this method is only
practical if the desired set contains a small number of elements,
though it's perhaps the most specific, and leaves absolutely nothing
to the imagination.

{{< example title="Listing every element of a set" >}}
Let $A$ denote the set

$$A = \{1, 3, 5, 7, 9, 11, 13, 15, 17\}.$$

Let $B$ denote the set

$$B = \{-12, -9, -6, -3\}.$$

Since order and repetition don't matter when building a set, we also
have that

\[
\begin{array}{lll}
\boldsymbol{B} & = & \{-12, -9, -6, -3\} \\
 & = & \{-3, -6, -9, -12\} \\
 & = & \{-12, -9, -6, -12, -3, -3\}
\end{array}
\]

Since we explicitly state which elements are in each set, it's
extremely easy to determine if an element is in either set simply by
inspection.

$3.14 \notin A$, because it isn't one of the listed numbers in $A$.

$11 \in A$, because it's explicitly listed within the set's
definition.

$-6 \in B$, because it's explicitly listed in $B$'s definition.

$13 \notin B$, because it isn't one of the listed numbers in $B$.

This method of building, or defining, a set is commonly called either
the *Roster Method*, or the *Exhaustive Method*.
{{< /example >}}

However, nothing stops us from defining sets that have infinitely many
elements. When dealing with such a set, the Roster Method is somewhat
inadequate on its own. We could list enough elements to make the
pattern obvious, and finish with an ellipsis.

{{< example title="Using an ellipsis for an infinite set" >}}
Let $A$ denote the set

$$A = \{2, 4, 6, 8, 10, 12, \dots\}.$$

When defining set $A$, all the numbers we listed are positive even
integers, so we can reasonably assume that $A$ refers to the set of
all positive even integers. Since there are infinitely many positive
even integers, we have to use an ellipsis.

Let $B$ denote the set

$$B = \{1, 2, 4, 8, 16, 32, 64, \dots\}.$$

For $B$, it looks like all the numbers we listed are the non-negative
integer powers of $2$:

$$B = \{2^0, 2^1, 2^2, 2^3, 2^4, 2^5, 2^6, \dots\}.$$

Hence, we can reasonably assume that $B$ refers to the set of all
powers of $2$ where the exponent is a non-negative integer.

When using the Roster Method to list the first few elements of a set,
it should be pretty clear what the pattern is. Anything that requires
an elaborate setup to describe should be explicitly mentioned and
described, so as to prevent confusion. Remember, it should be obvious
what elements are in the set.
{{< /example >}}

{{< warning title="A few listed elements can still be ambiguous" >}}
Consider the set

$$\square = \{1, 2, 4, 8, 16, \dots\}$$

(here, we use the symbol $\square$ instead of a capital letter, for
reasons that will become clear).

This almost looks like set $B$ from the previous example, defined
using powers of $2$ — so we might think $\square$ is the set of all
powers of $2$ where the exponent is a non-negative integer.

Let's reveal the next number in this particular set:

$$\square = \{1, 2, 4, 8, 16, 31, \dots\}.$$

Hold on — $31$ isn't an integral power of $2$! So $\square$ isn't the
set of all non-negative integer powers of $2$ after all.

So what is it, exactly? As it turns out, this particular sequence
describes the maximum number of regions a circle can be divided into
by placing points around its circumference, and connecting every pair
of those points with a straight line — a classic, deceptively tricky
combinatorics problem. Continuing the sequence a bit further:

$$\square = \{1, 2, 4, 8, 16, 31, 57, 99, 163, 256, \dots\}.$$

There *is* a formula for this sequence, but it involves something
called "binomial coefficients," which we'll discuss later in this
book — for now, it would look like complete gibberish.

The point is that, even though the first few terms of a listed set
may seem to follow one pattern, there may be multiple patterns that
fit, so listing only a few numbers at the start may not adequately
describe the desired set. That's exactly why we used the $\square$
symbol here — to signal that this is a misleading, ambiguous way to
describe a set. **Never be ambiguous when describing a set!**
{{< /warning >}}

It's because of this kind of ambiguity that another method of
defining sets is more commonly used, called the *Set-Builder Method*.
This method requires specifying a rule, or a list of conditions, that
determine whether an element is a part of the set. Typically, this
method looks something like this:

$$A = \{x \mid \text{condition}\}.$$

There are a few different parts to this notation, worth going over
one at a time:

- $A$ — the letter, or general symbol, we use to refer to the set.
- $\{\ \}$ — the curly braces that enclose the definition of the set.
  Every set is enclosed by curly braces.
- $x$ — the letter, or again some general symbol, we use to refer to
  some element *within* the set.
- $\mid$ — this bar separates the listing of the element from the
  condition. When reading out the definition of a set, the vertical
  bar can be translated as "such that."
- $\text{condition}$ — specifies what must be true about $x$ for it to
  be an element of $A$. In other words, the condition is what we use
  to test whether some object is contained within $A$.

As such, when we see something like $A = \{x \mid \text{condition}\}$,
we can read this as "$A$ refers to the set of all elements $x$ such
that the condition is satisfied." There's some flexibility in how this
method can be used, as demonstrated below.

{{< example title="Using the Set-Builder Method" >}}
Here's a typical example of the Set-Builder Method:

$$A = \{n \mid n \text{ is an even integer}\}.$$

Based on this definition, we see that $6 \in A$, $-12 \in A$,
$100238 \in A$, and $-12300450678 \in A$, along with infinitely many
other numbers. On the other hand, $1 \notin A$, $-13 \notin A$,
$100343 \notin A$, $3.1415 \notin A$, and $-2.718 \notin A$, among
infinitely many other numbers.

Sometimes, multiple conditions can be placed on a set using the
conjunction operator discussed in Chapter 1, like so:

$$B = \{x \mid (x \text{ is an integer}) \land (x > 10)\}.$$

So, any number that's simultaneously an integer and larger than $10$
is included in $B$. Thus $90 \in B$, $92 \in B$, and $100100 \in B$,
and so on. On the other hand, $-2 \notin B$, $10 \notin B$, and
$0.4335 \notin B$, because $-2$ isn't larger than $10$, because $10$
isn't larger than itself, and because $0.4335$ is neither an integer
nor larger than $10$, so it fails both conditions.

It's possible to specify one condition before the vertical bar in a
set's description, like so:

$$C = \{x \text{ is an integer} \mid x \leq -4\}.$$

Here, we're implying that, before we even consider the usual
condition, we're presupposing that only integers can be included in
$C$. In other words, this definition is equivalent to saying

$$C = \{x \mid (x \text{ is an integer}) \land (x \leq -4)\}.$$

Of course, we could use the disjunction operator as well:

$$D = \{x \mid (x \text{ is a multiple of } 0.4) \lor (x \text{ is a negative integer})\}.$$

As such, we find that $2.4 \in D$, $-12 \in D$, and $-100.4 \in D$,
because $2.4$ is a multiple of $0.4$, because $-12$ is a negative
integer (and a negative multiple of $0.4$), and because $-100.4$ is a
multiple of $0.4$. However, $1 \notin D$, because $1$ is neither a
multiple of $0.4$ nor a negative integer.
{{< /example >}}

The Set-Builder Method is extremely useful for describing sets with
infinitely many elements — but that doesn't mean it isn't useful for
describing sets with finitely many elements too. This is especially
true when there's a large number of elements in the set.

{{< example title="Using the Set-Builder Method for a large finite set" >}}
Consider the set

$$X = \{n \text{ is an integer} \mid n^2 < 100\}.$$

First, we know that we only have integers in $X$, since that's a
condition for set inclusion. The second condition is that the square
of the integer must be less than $100$. We can check a few numbers to
be sure:

\[
\begin{array}{l}
0^2 = 0 < 100 \\
1^2 = 1 < 100 \\
2^2 = 4 < 100 \\
3^2 = 9 < 100 \\
4^2 = 16 < 100 \\
5^2 = 25 < 100
\end{array}
\]

As a matter of fact, we know that the first integer $n$ where
$n^2 \geq 100$ is $10$, since $10^2 = 100$. As such, all the positive
integers less than $10$ are included in the set, and since negative
integers have positive squares too, all the negative integers greater
than $-10$ are included as well. We also verified $0 \in X$ above.

Any integer larger than $9$, or less than $-9$, won't be included,
because the smallest integer larger than $9$ is $10$, and $10^2$ is
*not* less than $100$; similarly, the largest integer smaller than
$-9$ is $-10$, and $(-10)^2$ is also *not* less than $100$.

As such, we know that all of the elements in $X$ are

$$X = \{0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8, -8, 9, -9\}.$$

Even though we could just list them, the Set-Builder Method at least
gives us a rule to decide whether some number belongs to the set — if
we had simply listed the numbers, we wouldn't know if there was some
underlying condition, or if the numbers were chosen arbitrarily.

Of course, with a set like

$$Y = \{n \text{ is an integer} \mid n^2 \leq 1000000000000\},$$

it would take a long time to fully list out the elements. We still
prefer the Set-Builder Method to describe $Y$, since it's typically
more succinct.
{{< /example >}}

{{< example title="Combining a formula with a condition" >}}
Consider the set

$$\Psi = \{n^3 \mid (n \text{ is an integer}) \land (n^2 < 100)\}$$

(here, we use the capital Greek letter psi, $\Psi$, just to add some
variety to the names we've been giving our sets).

It looks like $\Psi$ consists of perfect cubes, but one of the
conditions is that the *square* of the underlying integer must be
less than $100$. Let's examine the possibilities:

\[
\begin{array}{c|c|c}
n & n^2 & n^3 \\
\hline
0 & 0 & 0 \\
\pm 1 & 1 & \pm 1 \\
\pm 2 & 4 & \pm 8 \\
\pm 3 & 9 & \pm 27 \\
\pm 4 & 16 & \pm 64 \\
\pm 5 & 25 & \pm 125 \\
\pm 6 & 36 & \pm 216 \\
\pm 7 & 49 & \pm 343 \\
\pm 8 & 64 & \pm 512 \\
\pm 9 & 81 & \pm 729
\end{array}
\]

Any integer with absolute value $10$ or greater has a square of at
least $100$, so we don't need to examine any more integers. Since
$\Psi$ doesn't consist of these perfect squares, but instead the
corresponding *cubes*, we have

$$\Psi = \{0, 1, -1, 8, -8, 27, -27, 64, -64, 125, -125, 216, -216, 343, -343, 512, -512, 729, -729\}.$$
{{< /example >}}

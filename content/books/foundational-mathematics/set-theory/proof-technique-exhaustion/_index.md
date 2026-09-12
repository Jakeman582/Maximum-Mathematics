+++
title = 'Proof Technique: Exhaustion'
type = 'chapter'
weight = 9

[params]
  section = 9
+++

All of the proof techniques discussed thus far work on sets that have
infinitely many elements. For example, we've talked about theorems
that apply to *all* even numbers, not merely some of them. For
example, for all even numbers, adding one yields an odd number. As
another example, no matter which two even numbers are added together,
the sum is always another even number.

We've even talked about theorems that apply to *all* sets in general,
not merely some of them. These include the set operations and the set
equalities.

It's not hard to see why methods that apply to sets of infinitely many
objects are powerful. On the other hand, there may be times when there
are only a finite number of objects we're interested in examining.
Here, we discuss a method for proving theorems dealing with only a
finite number of elements.

## A Contrived Example
---

Admittedly, dealing with only a finite number of elements seems hardly
useful, as we mostly want results that apply generally, and not
specifically. Here, we provide a contrived example simply to
demonstrate the technique.

{{< example title="Every even number from 2 to 20 as a sum of squares" >}}
Suppose we wanted to prove that the integers in the set

$$E = \{2, 4, 6, 8, 10, 12, 14, 16, 18, 20\}$$

could all be expressed as a sum of no more than three perfect squares.
We could do this by simply tabulating the results.

\[
\begin{array}{l|l}
n & \text{Sum of squares} \\
\hline
2 & 1^2 + 1^2 \\
4 & 2^2 \\
6 & 1^2 + 1^2 + 2^2 \\
8 & 2^2 + 2^2 \\
10 & 1^2 + 3^2 \\
12 & 2^2 + 2^2 + 2^2 \\
14 & 1^2 + 2^2 + 3^2 \\
16 & 4^2 \\
18 & 3^2 + 3^2 \\
20 & 2^2 + 4^2
\end{array}
\]

As such, we've "proved" the desired fact.

Notice that we didn't say the numbers in $E$ could be written as a
*unique* sum. There may be more than one way to write some of the
numbers as a sum of perfect squares, like in the following example:

$$18 = 1^2 + 1^2 + 4^2.$$
{{< /example >}}

We could perhaps call the result derived in the previous example a
theorem, since we did provide a proof for the fact, but we prefer to
reserve the term theorem for "major" results. That result was merely
an exercise.

## The Method of Exhaustion
---

Based on the previous example, we can see why the method presented in
this section is called the **Method of Exhaustion**: it's because we
exhaustively check every single element in the desired set for a
desired property. Note that while the term exhaustion is used to
describe the thoroughness of checking every element, it doesn't
necessarily refer to the feeling one may get whilst performing the
checking — though it should be said that for rather large sets, this
method can be tiresome.

Let's lay out the argument in logical fashion, same as we've done
before. The reason this method works is because we verify that every
element in the desired set has some desired property.

Suppose set $A$ is a finite subset consisting of the $n$ elements

$$A = \{a_1, a_2, a_3, \dots, a_n\}$$

taken from some universal set $\mathcal{U}$. Furthermore, suppose $p$
is an open statement defined on $\mathcal{U}$. The Method of
Exhaustion is simply an argument of the form

\[
\begin{array}{l}
p(a_1) \\
p(a_2) \\
p(a_3) \\
\vdots \\
p(a_n) \\
\hline
\therefore \forall x \in A\ [p(x)]
\end{array}
\]

That's all there really is to it.

## Computer-Assisted Proofs and the Four Color Theorem
---

Just because a set is finite doesn't mean it's feasible to hand-check
every single element within it. Sometimes tasks can be automated by
writing computer programs to check thousands or even millions of
elements in a timely fashion.

While the example presented above was rather contrived, one major
result proved using the Method of Exhaustion was the **Four Color
Theorem**. This theorem states that any planar (basically meaning
flat) map only needs at most four different colors so that no
adjacent regions on the map share the same color. For centuries,
cartographers have been making maps of various places around the
world, and one way to draw maps is to color regions so they're easily
distinguishable. It's typically expected that adjacent regions on a
map are colored differently, helping them stand out visually.

It was shown at some point in the late 1800s that no more than five
colors were needed for any map so that no adjacent regions shared a
color, but it was suspected that no more than four colors were needed
as well. Though many mathematicians attempted to prove that no more
than four colors were needed, many efforts proved fruitless.

Progress marched forward in the 1960s with the advent of computing
technology. Two mathematicians, Kenneth Appel and Wolfgang Haken,
further developed results derived from Heinrich Heesch to complete a
proof. Essentially, one major step in the proof was showing that all
maps could be "reduced" to a small number of essential configurations
(basically, all maps are distortions of some simpler underlying map
that represent the same types of regions). Appel and Haken found that
there were only $1834$ such configurations.

Once Appel and Haken found these configurations, it was simply a
matter of checking each and every one of them — using the Method of
Exhaustion.

This proof was the first major proof to be verified by computer. As
such, it was a controversial result: not all mathematicians readily
accepted the proof, because it was hard and time-consuming for a human
to check.

Nevertheless, the proof has mostly withstood scrutiny, with a minor
error being corrected by Appel and Haken sometime in the late 1980s.

The point is that while the Method of Exhaustion may seem overly
simple and contrived, being restricted to only finite sets instead of
infinite sets, it's still a valid proof technique that can come in
handy.

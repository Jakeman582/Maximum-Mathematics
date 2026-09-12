+++
title = 'Graphical Depictions of Sets'
type = 'chapter'
weight = 7

[params]
  section = 7
+++

In the previous section, we defined the complement, union,
intersection, difference, symmetric difference, multiple union, and
multiple intersection of sets purely symbolically. While the symbolic
definitions are precise, it's often easier to build an intuition for
what these operations actually do by picturing them.

The standard way to picture a set is as a circle, with each circle
drawn inside a rectangle standing for the universe $\mathcal{U}$.
Whenever an operation includes some region formed by these circles, we
shade that region green.

## Complement
---

{{< figure src="01.svg"
           title="Figure 3.7.1:"
           caption="The complement of a set $A$, denoted $A^C$, is the set of all elements within $\mathcal{U}$ that are not within $A$." >}}

Since the complement of $A$ consists of everything in the universe
that *isn't* in $A$, the circle for $A$ itself is left unshaded, while
everything else within the surrounding rectangle is shaded to
represent $A^C$.

## Union
---

{{< figure src="02.svg"
           title="Figure 3.7.2:"
           caption="The union of two sets is the set containing any element contained in either set. $A$ and $B$ share some overlap here, but that overlap is still included — any part of either set is shaded green to indicate it's in the union." >}}

As long as an element is in $A$ or $B$, or even both, it's included in
the union — so both circles are shaded in their entirety, overlap
included.

## Intersection
---

{{< figure src="03.svg"
           title="Figure 3.7.3:"
           caption="The intersection of two sets is the set containing all elements that are in both sets. Only the overlap between the two circles is shaded green, since that's the only region representing elements contained in both $A$ and $B$." >}}

Here, only the sliver shared by both circles is shaded, since that's
the only region representing elements common to both $A$ and $B$.

## Difference
---

{{< figure src="04.svg"
           title="Figure 3.7.4:"
           caption="The difference $A - B$ is the set of all elements in $A$ that are not in $B$. The overlap with $B$ is left unshaded, since those elements are excluded — only the exclusive part of $A$ is shaded green." >}}

Only the part of $A$'s circle left over once the overlapping sliver
shared with $B$ has been carved away is shaded.

## Symmetric Difference
---

{{< figure src="05.svg"
           title="Figure 3.7.5:"
           caption="As long as an element is in one of $A$ or $B$, but not both, it's included in the symmetric difference of $A$ and $B$ — everything covered by either circle is shaded green, except the overlap." >}}

The symmetric difference shades everything covered by either circle
*except* the overlapping sliver shared by both — everything a union
would shade, minus whatever an intersection would shade.

## Multiple Union
---

{{< figure src="06.svg"
           title="Figure 3.7.6:"
           caption="When dealing with multiple sets $A_1$, $A_2$, and $A_3$, we can take every single element from every set and stick them into a new set, which we refer to as the union of all the sets." >}}

This same idea of shading extends naturally to more than two sets at
once — every region covered by at least one of $A_1$, $A_2$, or $A_3$
is shaded to represent their multiple union.

## Multiple Intersection
---

{{< figure src="07.svg"
           title="Figure 3.7.7:"
           caption="When dealing with multiple sets $A_1$, $A_2$, and $A_3$, we can take all elements contained in all three and stick them into a new set, which we refer to as the intersection of all the sets." >}}

Here, only the single region shared by all three circles at once —
where $A_1$, $A_2$, and $A_3$ all overlap — is shaded, representing
their multiple intersection.

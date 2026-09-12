+++
title = 'Proof Technique: Casework'
type = 'chapter'
weight = 11

[params]
  section = 11
+++

Previously, we talked about a proof technique where we examine every
single element of a finite set. In a sense, we examined multiple
cases, and verified some result for each of those cases. An exhaustive
proof is a special kind of proof by casework.

Sometimes, we may have trouble demonstrating that some result holds
for a set of elements. However, if we partition the set into groups
that have their own special traits, and those traits make it easy to
show the desired result holds, a proof by casework can be used to
establish the desired result for the entire set.

## The Underlying Argument
---

Suppose we were trying to prove a statement of the form

$$p \to c.$$

Suppose that we somehow knew that

$$p = p_1 \lor p_2 \lor p_3 \lor \dots \lor p_n.$$

If we knew how to show that

\[
\begin{array}{l}
p_1 \to c \\
p_2 \to c \\
p_3 \to c \\
\vdots \\
p_n \to c
\end{array}
\]

we would then have that

$$(p_1 \lor p_2 \lor p_3 \lor \dots \lor p_n) \to c.$$

Thus, because $p = p_1 \lor p_2 \lor p_3 \lor \dots \lor p_n$, we
would also have that $p \to c$ by extension.

This proof technique is simply an extension of the Rule of Proof by
Cases:

\[
\begin{array}{l}
p \to r \\
q \to r \\
\hline
\therefore (p \lor q) \to r
\end{array}
\]

as presented in Chapter 2, Section 6. Even though we could have
discussed this proof technique in Chapter 2, we decided to hold off
until partitions were discussed, because a lot of casework is done by
considering elements from disjoint sets. However, when doing casework,
it's not important that elements from the universe of discourse are in
only one subset of a partition.

Whether we form a partition of the universe, or we split the universe
up into overlapping subsets, isn't important. What's important is
that, once we have our desired subsets, every element is represented
by at least one of those subsets.

## Picking Arbitrary Elements from a Partition
---

When we partition a set, we split it into disjoint subsets where every
element is accounted for in one of the subsets. We don't have to form
these subsets arbitrarily. Instead, we could take all elements from
the original set that have some common property, and stick those
elements into a subset. We can repeat this process until all elements
are accounted for.

Then, from each of these subsets, we choose an arbitrary element.
Then, whatever is true of that element will be true for all elements
within that subset. In essence, we're using the principles of
Universal Specification and Universal Generalization, along with a
partition, to prove a theorem.

Our first theorem will be a result about absolute values of real
numbers. As a reminder, here's the definition of absolute value of a
real number.

{{< definition terms="absolute value" >}}
For any real number $x$, the ==absolute value== of $x$, commonly
denoted $|x|$, is the non-negative real number given by the following:

\[
\begin{array}{rl}
|x| = x & \text{when } x \geq 0 \\
|x| = -x & \text{when } x < 0
\end{array}
\]

Another way to think of the absolute value of a number is as its
distance from $0$.
{{< /definition >}}

{{< theorem title="The absolute value of a product" >}}
For any two real numbers $x$ and $y$, we have that

$$|xy| = |x||y|.$$
{{< /theorem >}}

{{< proof >}}
**General Strategy:** Because the absolute value changes based on
whether the given number is negative or non-negative, we can consider
combinations of negative and non-negative numbers for $x$ and $y$
respectively.

We can start by partitioning the real numbers into two subsets: one
subset will be the real numbers greater than or equal to $0$, and the
other subset will be the real numbers less than $0$.

\[
\begin{array}{rl}
\mathbb{R}^+ &= \{x \mid x \geq 0\} \\
\mathbb{R}^- &= \{x \mid x < 0\}
\end{array}
\]

Notice that we have two variables, $x$ and $y$. Because of how we
partitioned the real numbers, we can pick values for $x$ and $y$ from
either $\mathbb{R}^+$ or $\mathbb{R}^-$. This gives us four cases to
check.

**Case 1: $x \in \mathbb{R}^+$, $y \in \mathbb{R}^+$.**

Because both $x \geq 0$ and $y \geq 0$, we have that $xy \geq 0$. We
also have that $|x| = x$ and $|y| = y$. This tells us that

$$|xy| = xy = |x||y|$$

which is the desired result.

**Case 2: $x \in \mathbb{R}^+$, $y \in \mathbb{R}^-$.**

Because $y < 0$, we have that $|y| = -y$. We still have that
$|x| = x$. Additionally, we know that $xy < 0$, and so $|xy| = -xy$.
This tells us that

$$|xy| = -xy = x(-y) = |x||y|.$$

We've reached the same desired result.

**Case 3: $x \in \mathbb{R}^-$, $y \in \mathbb{R}^+$.**

This case is just a mirrored version of Case 2, and so we get the same
result.

**Case 4: $x \in \mathbb{R}^-$, $y \in \mathbb{R}^-$.**

Since both $x$ and $y$ are less than $0$, we have that $|x| = -x$ and
$|y| = -y$. However, notice that since both $x$ and $y$ are negative,
their product $xy$ will be positive, and so $|xy| = xy$. This gives us
the following result:

$$|xy| = xy = (1)xy = (-1)(-1)xy = (-1)x(-1)y = (-x)(-y) = |x||y|.$$

Here, we used the fact that $1 = (-1)(-1)$. We also used the
commutative property of multiplication to move around the numbers.

**Conclusion.** In all four cases, we achieved the result as desired.
{{< /proof >}}

## An Example with Lots of Cases
---

Here, we're going to discuss perfect squares and what kinds of numbers
can be the units digits of perfect squares. Before we discuss the next
theorem, let's make some observations about the non-negative integers.

{{< example title="Every non-negative integer has the form 10a + b" >}}
Observe the following:

\[
\begin{array}{rl}
0 &= 0 + 0 = 10(0) + 0 \\
1 &= 0 + 1 = 10(0) + 1 \\
5 &= 0 + 5 = 10(0) + 5 \\
13 &= 10 + 3 = 10(1) + 3 \\
17 &= 10 + 7 = 10(1) + 7 \\
453 &= 450 + 3 = 10(45) + 3 \\
102706 &= 102700 + 6 = 10(10270) + 6
\end{array}
\]

What we see is that any non-negative integer can be written as

$$10a + b$$

where $a$ is any non-negative integer and $b$ is one of $0, 1, 2, 3,
4, 5, 6, 7, 8$, or $9$.

This will be important to use in our next theorem, but for now we can
organize this observation using the following table, where each entry
gives the value of $10a + b$ for the row's $a$ and the column's $b$:

\[
\begin{array}{l|llllllllll}
 & b=0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 \\
\hline
a=0 & 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 \\
1 & 10 & 11 & 12 & 13 & 14 & 15 & 16 & 17 & 18 & 19 \\
2 & 20 & 21 & 22 & 23 & 24 & 25 & 26 & 27 & 28 & 29 \\
3 & 30 & 31 & 32 & 33 & 34 & 35 & 36 & 37 & 38 & 39 \\
4 & 40 & 41 & 42 & 43 & 44 & 45 & 46 & 47 & 48 & 49 \\
5 & 50 & 51 & 52 & 53 & 54 & 55 & 56 & 57 & 58 & 59 \\
6 & 60 & 61 & 62 & 63 & 64 & 65 & 66 & 67 & 68 & 69 \\
7 & 70 & 71 & 72 & 73 & 74 & 75 & 76 & 77 & 78 & 79 \\
8 & 80 & 81 & 82 & 83 & 84 & 85 & 86 & 87 & 88 & 89 \\
9 & 90 & 91 & 92 & 93 & 94 & 95 & 96 & 97 & 98 & 99
\end{array}
\]
{{< /example >}}

From the observations presented in the previous example, we see that
any non-negative integer can be written as $10a + b$. This observation
will help us in the upcoming theorem.

{{< theorem title="The units digits of perfect squares" >}}
The only numbers that can occur in the units digit of a perfect square
are $0$, $1$, $4$, $5$, $6$, and $9$.
{{< /theorem >}}

{{< proof >}}
**General Strategy:** We use the observation above that any
non-negative integer can be written as $10a + b$. We square that
quantity to see what determines the units digit of any perfect square.

Any non-negative integer can be written as $10a + b$ where $a$ is any
non-negative integer ($0, 1, 2, 3, 4, 5, \dots$) and $b$ can only be
one of $0, 1, 2, 3, 4, 5, 6, 7, 8$, or $9$.

When we square that number, we see that

\[
\begin{array}{lll}
\boldsymbol{(10a + b)^2} & = & (10a + b)(10a + b) \\
= & 100a^2 + 10ab + 10ab + b^2 & \\
= & 100a^2 + 20ab + b^2 & \\
= & 10(10a^2 + 2ab) + b^2 &
\end{array}
\]

Because the quantity $10a^2 + 2ab$ is being multiplied by $10$, the
units digit of $(10a + b)^2$ will be the same as the units digit of
$b^2$. Remember that $b$ can only take on one of ten values. Thus we
could simply check each of those values and see if some pattern
emerges.

**Case 1: $b = 0$.** When $b = 0$, we have that $b^2 = 0$. The units
digit of $0$ is of course $0$, so the units digit of $(10a + b)^2$
will also be $0$.

**Case 2: $b = 1$.** When $b = 1$, we have that $b^2 = 1$. The units
digit of $1$ is of course $1$, so the units digit of $(10a + b)^2$
will also be $1$.

**Case 3: $b = 2$.** When $b = 2$, we have that $b^2 = 4$. The units
digit of $4$ is of course $4$, so the units digit of $(10a + b)^2$
will also be $4$.

**Case 4: $b = 3$.** When $b = 3$, we have that $b^2 = 9$. The units
digit of $9$ is of course $9$, so the units digit of $(10a + b)^2$
will also be $9$.

**Case 5: $b = 4$.** When $b = 4$, we have that $b^2 = 16$. The units
digit of $16$ is $6$, so the units digit of $(10a + b)^2$ will also be
$6$.

**Case 6: $b = 5$.** When $b = 5$, we have that $b^2 = 25$. The units
digit of $25$ is $5$, so the units digit of $(10a + b)^2$ will also be
$5$.

**Case 7: $b = 6$.** When $b = 6$, we have that $b^2 = 36$. The units
digit of $36$ is $6$, so the units digit of $(10a + b)^2$ will also be
$6$.

**Case 8: $b = 7$.** When $b = 7$, we have that $b^2 = 49$. The units
digit of $49$ is $9$, so the units digit of $(10a + b)^2$ will also be
$9$.

**Case 9: $b = 8$.** When $b = 8$, we have that $b^2 = 64$. The units
digit of $64$ is of course $4$, so the units digit of $(10a + b)^2$
will also be $4$.

**Case 10: $b = 9$.** When $b = 9$, we have that $b^2 = 81$. The units
digit of $81$ is $1$, so the units digit of $(10a + b)^2$ will also be
$1$.

**Conclusion.** After examining all ten cases, we see that the only
units digits encountered were $0, 1, 4, 5, 6$, and $9$. This
establishes the desired result.
{{< /proof >}}

## A Common Mistake
---

The most common error that can occur when doing a proof by cases is
not accounting for every element in the universe being considered. It
is essential that all the cases you consider account for every
possible element.

{{< example title="An incomplete case split" >}}
Consider the universe of all integers.

Whether we have a negative or positive integer, squaring that integer
yields a number that is either larger than, or equal to, the original
integer.

For example, when we start with a positive integer $n \geq 1$, we have
that

$$(n \geq 1) \Longrightarrow (n^2 \geq n).$$

Likewise, squaring any negative integer always yields a positive
integer, like so:

$$(n \leq -1) \Longrightarrow (n^2 \geq -n \geq n).$$
{{< /example >}}

It may seem like the previous example demonstrates that $n^2 \geq n$
for all integers. After all, we showed it was true for positive
integers and negative integers. However, there's one integer that's
neither positive nor negative, namely $0$. In this situation, since
it's only one integer left unaccounted for, we could simply compute
$0^2$ and compare it to $0$ to determine that the above statement is
indeed true for *all* integers. We formalize this proof now.

{{< theorem title="Every integer is at most its own square" >}}
For any integer $n$, we have that

$$n \leq n^2.$$
{{< /theorem >}}

{{< proof >}}
**General Strategy:** Here, we'll partition the integers into three
subsets. We'll consider negative integers, positive integers, and $0$.

**Case 1: $n < 0$.**

All square numbers are greater than or equal to $0$, meaning
$n^2 \geq 0$.

Since $n < 0$ and $n^2 \geq 0$, we necessarily have that
$n \leq n^2$ as desired.

**Case 2: $n = 0$.**

Here, since $0^2 = 0$, we also have that $0 \leq 0^2$. This gives us
that $n \leq n^2$ as desired.

**Case 3: $n > 0$.**

Since $n$ is an integer $> 0$, we have that $n \geq 1$. Multiplying
both sides by $n$ gives us that $n^2 \geq n$ as desired.

**Conclusion.** All integers are accounted for with the three cases
presented above. Hence we have the desired result.
{{< /proof >}}

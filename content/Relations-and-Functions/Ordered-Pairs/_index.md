+++
date = '2024-12-20T16:22:02-05:00'
draft = false
title = 'Ordered Pairs'
weight = 1
+++

Just as we saw how sets can be built via propositional logic, we'll see how 
relations and functions are built up using sets, a clear example of how 
multiple seemingly disperate concepts can be accumulated into a cohesive 
whole. But before we delve into what relations and functions are exactly, 
there is one more set operation we should get acquainted with: the set 
product. Ironically, even though order doesn't matter when considering 
elements in a set, constructing a set product does require that we know in 
what order we are doing things. In this section, we discuss a new type of 
mathematical object that takes order into account.

## Ordered Pairs
---

When we were discussing sets, we noted that order and repetition did not 
matter. All that mattered was whether or not an element was included in the 
set or not. Sometimes, we do care about the order in which elements are 
listed. In such a case, we list the elements between parentheses ( ) instead of 
curly braces { }.

> [!definition] Ordered Pair
> An **ordered pair** is an ordered collection of two elements a and b, and is 
> normally written using parentheses as in 
> 
> $$\left(a, b\right)$$
> 
> where element a is the first item in the pair, and element b is the second 
> item.

Notice that the definition of ordered pair does not require that elements a 
and b have to come from the same universe (set). We can insert anything we 
want in an ordered pair.

Contrast ordered pairs with sets. Because order is irrelevant in sets, we have 
that 

$$ \{a, b\} = \{b, a\} $$

whereas for ordered pairs, we have that (a, b) and (b, a) are different. In 
order for two different ordered pairs to be the same, we would need the 
corresponding parts to be the same.

> [!definition] Equal
> Two ordered pairs (a, b) and (c, d) are called **equal** and we write 
> 
> $$\left(a, b\right) = \left(c, d\right)$$
> 
> if (and only if) a = c and b = d.

{{% notice style = "example" title = "Example 4.1.1" %}}
The following are all examples of ordered pairs:

\[
\begin{array}{ l l l }
(1, -1)    & (0, 12) & (12, 2.0013) \\
(5, \text{tokyo})    & (3, 4)  & (\text{red}, -13) \\
(-\pi^e, \sqrt{2}) & (0, 12) & (0, -9)
\end{array}
\]

Let's let (a, b) refer to the upper-middle ordered pair above (0, 12), and 
let's refer to the lower-middle ordered pair above (0, 12) as (c, d). Doing 
this tells us that 

\[
\begin{array}{ l l }
a = 0 & b = 12 \\
c = 0 & d = 12
\end{array}
\]

Of course, we can easily see that since 

$$ a = c = 0 $$
$$ b = d = 12 $$

we must then have that (a, b) = (c, d), meaning that we really have that 

$$ (0, 12) = (0, 12) $$

as expected. This is true by definition, but this is also easily seen because 
the corresponding elements of both ordered pairs are equal.

Now compare (0, 12) to (0, -9). Let's refer to these ordered pairs as 

$$ (0, 12) = (a, b) $$
$$ (0, -9) = (c, d) $$

Here, we see that while 

$$ a = c = 0 $$

we also have that 

$$ b \neq d $$

because b = 12 and d = -9. Hence, we have that 

$$ (0, 12) \neq (0, -9) $$

as expected.

{{% /notice %}}

Naturally, we aren't limited to two elements. We can collect as many elements 
as we want in a list. Equality of two n-tuples is also straightforward.

{{% notice style="definition" title="n-Tuple, Equal" %}}
An **n-tuple** is an ordered list of n elements and is normally written using 
parentheses as

$$ (a_1, a_2,\ldots, a_n) $$

where $a_1$ is the first element in the n-tuple, $a_2$ is the second element, 
and so on as expected.

Two n-tuples $(a_1, a_2, \ldots, a_n)$ and $(b_1, b_2, \ldots, b_m)$ are 
called **equal** when they have the same number of elements (n = m), and their 
corresponding elements are equal to each other; that is, we have that 

$$ (a_1, a_2, \ldots, a_n) = (b_1, b_2, \ldots, b_m) $$

if (and only if) 

$$ n = m $$

and 

\[
\begin{array}{ c }
a_1 = b_1 \\
a_2 = b_2 \\
\vdots \\
a_n = b_m
\end{array}
\]

{{% /notice %}}

It is common to refer to n-tuples with only two elements simply as tuples (in 
addition to ordered pairs), and n-tuples with three elements as triples (or 
ordered triples).

{{% notice style = "example" title = "Example 4.1.2" %}}
None of the following n-tuples are equal to each other because the order in 
which the elements appear is different between each ordered pair:

\[
\begin{array}{ l l l}
(1, 2, 3) & (2, 1, 3) & (3, 1, 2) \\
(1, 3, 2) & (2, 3, 1) & (3, 2, 1)
\end{array}
\]

The following n-tuples are not equal to each other because they have a 
different number of elements:

\[
\begin{array}{ l l }
(1, 2, 3) & (1, 1, 2, 3)
\end{array}
\]

{{% /notice %}}

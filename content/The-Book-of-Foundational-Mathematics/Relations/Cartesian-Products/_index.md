+++
date = '2025-01-04T15:21:45-05:00'
draft = false
title = 'Cartesian Products'
weight = 2
+++

All of the set operations we've seen so far simply take some combination of 
elements from two given sets, and form a new conglomerate set. The same will 
be true of Cartesian Products.

## Cartesian Products

For all of the set operations we've seen so far, we essentially pick out only 
a subset of elements from each. What's different about the Cartesian Product 
is that we iterate over all elements from both sets.

> [!definition] Cartesian Product, Set Product, Cross Product
> Let A and B be any two given sets.
> 
> The **Cartesian Product** of A and B, denoted 
> 
> $$ A \times B $$
> 
> is the set 
> 
> $$ A \times B = \{ (a, b)\ |\ a \in A\ \land\ b \in B \} $$
> 
> Note that A and B do *not* need to be subsets from the same universe.
> 
> Sometimes, this is referred to as a **Set Product**, or a **Cross Product**.

Basically, for each element in A, we iterate over all of the elements in B, 
forming ordered pairs where the element from A is the first item in the pair, 
and the element from B is the second item in the pair.

We can organize the construction of the Cartesian Product in a table like so: 

|||$A \times B$|||
|:-:     |:-:         |:-:         |:-:     |:-:         |
|        |$b_1$       |$b_2$       |$\ldots$|$b_m$       |
|$a_1$   |$(a_1, b_2)$|$(a_1, b_2)$|$\cdots$|$(a_1, b_2)$|
|$a_2$   |$(a_1, b_2)$|$(a_1, b_2)$|$\cdots$|$(a_1, b_2)$|
|$\vdots$|$\vdots$    |$\vdots$    |$\ddots$|$\vdots$    |
|$a_n$   |$(a_1, b_2)$|$(a_1, b_2)$|$\cdots$|$(a_1, b_2)$|

Remember that since we're forming ordered pairs, the order in which we list 
the sets is also important.

{{% notice style="example" title="Example 5.2.1" %}}
Suppose we have 

$$A = \{1, 2\}$$
$$B = \{a, b, c\}$$

where a, b, c are not variables, but simply the first, second, and third 
letters of the English alphabet. Then we have that 

$$A \times B = \{ (1, a),\ (1, b),\ (1, c),\ (2, a),\ (2, b),\ (2, c) \}$$

On the other hand, we have that 

$$B \times A = \{ (a, 1),\ (a, 2),\ (b, 1),\ (b, 2),\ (c, 1),\ (c, 2) \}$$

We can use tables to verify that these are the correct Cartesian Products. For 
example, here's the table for $A \times B$:

|||||
|:-:|:-:|:-:|:-:|
|$A \times B$|a|b|c|
|1|(1, a)|(1, b)|(1, c)|
|2|(2, a)|(2, b)|(2, c)|

Here's the table for $B \times A$:

||||
|:-:|:-:|:-:|
|$B \times A$|1|2|
|a|(a, 1)|(a, 2)|
|b|(b, 1)|(b, 2)|
|c|(c, 1)|(c, 2)|


{{% /notice %}}

The fact that we can't swap the order of the sets without potentially 
affecting the result deserves extra emphasis.

> [!important] Order Matters in Cartesian Products
> In general, we have that 
> 
> $$A \times B \neq B \times A$$

We are not limited to two sets.

## Cartesian Products with Multiple Sets

Just as we can take the product of multiple numbers, we can also take the 
Cartesian Product of multiple sets.

{{% notice style="definition" title="Multiple Cartesian Product" %}}
Let $A_1$, $A_2$, $\ldots$, $A_n$ be arbitrary sets.

The **Multiple Cartesian Product** 

$$A_1 \times A_2 \times \cdots \times A_n$$

is the set 

$$\{(a_1,\ a_2,\ \ldots,\ a_n)\ |\ a_1 \in A_1\ \land\ a_2 \in A_2\ \land\ \cdots\ \land\ a_n \in A_n\}$$
{{% /notice %}}

Oftentimes, we refer to a Multiple Cartesian Product simply as a Cartesian 
Product.

{{% notice style="example" title="Example 5.2.2" %}}
Consider the following sets:

\[
\begin{array}{ l c r }
A = \{1, 2\} & B = \{a, b\} & C = \{\alpha, \beta\} 
\end{array}
\]

Then we have by definition that 

$$ A \times B \times C = \{(1, a, \alpha), (1, a, \beta), (1, b, \alpha), (1, b, \beta), (2, a, \alpha), (2, a, \beta), (2, b, \alpha), (2, b, \beta) \} $$

Of course, swapping the order of A, B, C would yield slightly different sets, such as 

$$ B \times A \times C = \{(a, 1, \alpha), (a, 1, \beta), (a, 2, \alpha), (a, 2, \beta), (b, 1, \alpha), (b, 1, \beta), (b, 2, \alpha), (b, 2, \beta) \} $$
{{% /notice %}}

Though the examples we've seen all use different sets, we can use just one set 
multiple times.

## Repeated Cartesian Products

Just as a number can be multiplied by itself multiple times, so too can sets.
We use exponents to represent the number of times we are taking the Cartesian 
Product of a set with itself. Suppose that A represents some arbitrary set, 
the notation 

$$A^n$$

is shorthand for the Cartesian Product 

$$\underbrace{A \times A \times \cdots \times A}_{\text{n times}}$$

{{% notice style="example" title="Example 5.2.3" %}}
Consider the set 

$$A = \{1,\ a\}$$

We have that 

\[
\begin{align*}
A^2 &= A \times A \\
&= \{(1, 1),\ (1, a),\ (a, 1),\ (a, a)\}
\end{align*}
\]

We also have that 

\[
\begin{align*}
A^3 &= A \times A \times A \\
&= \{(1, 1, 1),\ (1, 1, a),\ (1, a, 1),\ (1, a, a), (a, 1, 1),\ (a, 1, a),\ (a, a, 1),\ (a, a, a)\}
\end{align*}
\]
{{% /notice %}}


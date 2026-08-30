+++
date = '2025-02-17T09:49:37-05:00'
draft = false
title = 'Composite Relations'
weight = 7
+++

Consider the two relations $\mathcal{R}_1 \subseteq X \times Y$ and 
$\mathcal{R}_2 \subseteq Y \times Z$. Suppose we knew that 
$x\ \mathcal{R}_1\ y$ and that $y\ \mathcal{R}_2\ z$. Just like with 
transitivity, we may ask whether or not $x$ could be related to $z$, with $y$ 
acting as an intermediary.

What we could do is form a new relation $\mathcal{R}_3 \subseteq X \times Z$ 
where $(x, z) \in \mathcal{R}_3$ that captures this relationship between $x$ 
and $z$. This is exactly what a *composite relation* does.

{{% notice style="definition" title="Composite Relation" %}}
Let $\mathcal{R}_1 \subseteq X \times Y$ and $\mathcal{R}_2 \subseteq Y \times Z$
be any two arbitrary relations where $X, Y, Z$ are arbitrary sets.

The relation $\mathcal{R} \subseteq X \times Z$ is called the 
**composite relation** of $\mathcal{R}_1$ and $\mathcal{R}_2$, and is denoted 

$$\mathcal{R} = \mathcal{R}_1 \circ \mathcal{R}_2$$

where

\[
\begin{align*}
\mathcal{R} &= \mathcal{R}_1 \circ \mathcal{R}_2 \\
&= \{(x, z) \in X \times Z\ |\ \bigl((x, y) \in \mathcal{R}_1\bigr) \land \bigl((y, z) \in \mathcal{R}_2\bigr)\}
\end{align*}
\]
{{% /notice %}}

{{% notice style="example" title="Example 5.7.1" %}}
Consider the sets 

\[
\begin{align*}
X &= \{1, 2, 3\} \\
Y &= \{a, b, c\} \\
Z &= \{\Box, \bigstar, \clubsuit\}
\end{align*}
\]

along with the following relations: 

\[
\begin{align*}
\mathcal{R}_1 &= \{(1, a), (2, c), (3, b), (2, a)\} \\
\mathcal{R}_2 &= \{(a, \clubsuit), (b, \Box), (c, \bigstar)\} \\
\end{align*}
\]

where $\mathcal{R}_1 \subseteq X \times Y$ and 
$\mathcal{R}_2 \subseteq Y \times Z$. To form the composite relation 
$\mathcal{R}_1 \circ \mathcal{R}_2$, start by looking at the first ordered 
pair $(1, a)$. We need to look for ordered pairs in $\mathcal{R}_2$ where the 
first element is $a$. Since there is only one such ordered pair 
$(a, \clubsuit)$, we know that 
$(1, \clubsuit) \in \mathcal{R}_1 \circ \mathcal{R}_2$.

Next, we see that $2\ \mathcal{R}_1\ a$ and $2\ \mathcal{R}_1\ c$. From 
$\mathcal{R}_2$, we see that $a\ \mathcal{R}_2\ \clubsuit$ and 
$c\ \mathcal{R}_2\ \bigstar$. This tells us that 
$(2, \clubsuit) \in \mathcal{R}_1 \circ \mathcal{R}_2$ and $(2, \bigstar) \in \mathcal{R}_1 \circ \mathcal{R}_2$.

Finally, we have that $3\ \mathcal{R}_1\ b$ and $b\ \mathcal{R}_2\ \Box$, 
meaning $(3, \Box) \in \mathcal{R}_1 \circ \mathcal{R}_2$.

Now we know that 

$$\mathcal{R}_1 \circ \mathcal{R}_2 = \{(1, \clubsuit), (2, \clubsuit), (2, \bigstar), (3, \Box)\}$$
{{% /notice %}}

## The Associative Property of Compound Relations

We previously examined associativity with the Cartesian product of 
more than two sets. Now we look at the differences between 

\[
\begin{align*}
\bigl(\mathcal{R}_1 \circ \mathcal{R}_2\bigr) \circ \mathcal{R}_3 \\
\mathcal{R}_1 \circ \bigl(\mathcal{R}_2 \circ \mathcal{R}_3\bigr) \\
\mathcal{R}_1 \circ \mathcal{R}_2 \circ \mathcal{R}_3
\end{align*}
\]

if any exist.

{{% notice style="example" title="Example 5.7.2" %}}
Suppose we have the following sets: 

\[
\begin{align*}
A &= \{1, 2, 3, 4\} \\
B &= \{a, b, c\} \\
C &= \{x, y, z\} \\
D &= \{\spadesuit, \clubsuit, \heartsuit, \diamondsuit\}
\end{align*}
\]

along with relations $\mathcal{R}_1 \subseteq A \times B, \mathcal{R}_2 \subseteq B \times C, \mathcal{R}_3 \subseteq C \times D$ 
where 

\[
\begin{align*}
\mathcal{R}_1 &= \{(1, b), (1, c), (3, a), (4, b)\} \\
\mathcal{R}_2 &= \{(a, x), (b, x), (c, y), (c, z)\} \\
\mathcal{R}_3 &= \{(x, \heartsuit), (z, \diamondsuit)\}
\end{align*}
\]

First, we compute $\bigl(\mathcal{R}_1 \circ \mathcal{R}_2\bigr) \circ \mathcal{R}_3$:

\[
\begin{align*}
\bigl(\mathcal{R}_1 \circ \mathcal{R}_2\bigr) \circ \mathcal{R}_3 &= \{(1, x), (1, y), (1, z), (3, x), (4, x)\} \circ \mathcal{R}_3 \\
&= \{(1, \heartsuit), (q, \diamondsuit), (3, \heartsuit), (4, \heartsuit)\}
\end{align*}
\]

Next we compute $\mathcal{R}_1 \circ \bigl(\mathcal{R}_2 \circ \mathcal{R}_3\bigr)$:

\[
\begin{align*}
\mathcal{R}_1 \circ \bigl(\mathcal{R}_2 \circ \mathcal{R}_3\bigr) &= \mathcal{R}_1 \circ \{(a, \heartsuit), (b, \heartsuit), (c, \diamondsuit)\} \\
&= \{(1, \heartsuit), (q, \diamondsuit), (3, \heartsuit), (4, \heartsuit)\} 
\end{align*}
\]

We see that $\bigl(\mathcal{R}_1 \circ \mathcal{R}_2\bigr) \circ \mathcal{R}_3$ and 
$\mathcal{R}_1 \circ \bigl(\mathcal{R}_2 \circ \mathcal{R}_3\bigr)$ are the same set. As 
such, we expect that $\mathcal{R}_1 \circ \mathcal{R}_2 \circ \mathcal{R}_3$ is the same 
set as well.
{{% /notice %}}

From Example 5.7.2, we see that it didn't matter in what order we computed the 
relation compositions. Was that just a coincidence? 

{{% notice style="theorem" title="Theorem 5.7.1" %}}
Let $A, B, C, D$ be arbitrary sets, and let 
\(\mathcal{R}_1 \subseteq A \times B,\) 
\(\mathcal{R}_2 \subseteq B \times C,\) and 
\(\mathcal{R}_3 \subseteq C \times D\).

We then have that 

$$ \bigl(\mathcal{R}_1 \circ \mathcal{R}_2\bigr) \circ \mathcal{R}_3 = \mathcal{R}_1 \circ \bigl(\mathcal{R}_2 \circ \mathcal{R}_3\bigr)$$
{{% /notice %}}

{{% expand expanded=false title="Proof 5.7.1" %}}
_General Strategy: Here, we'll use an element argument to show that 
$\bigl(\mathcal{R}_1 \circ \mathcal{R}_2\bigr) \circ \mathcal{R}_3$ is a 
subset of $\mathcal{R}_1 \circ \bigl(\mathcal{R}_2 \circ \mathcal{R}_3\bigr)$ 
and vice-versa. We'll appeal to the definition of relations, which means the 
implications we'll use will be bidirectional._

\[
\begin{array}{ r l l }
& \mathbf{(a, d) \in \bigl(\mathcal{R}_1 \circ \mathcal{R}_2\bigr) \circ \mathcal{R}_3} & \textbf{Reason} \\
\Longleftrightarrow & \exists c \in C\ [(a, c) \in \mathcal{R}_1 \circ \mathcal{R}_2 \land (c, d) \in \mathcal{R}_3] & \text{Definition of Relation Composition} \\
\Longleftrightarrow & \exists c \in C\ \exists b \in B\ [(a, b) \in \mathcal{R}_1 \land (b, c) \in \mathcal{R}_2 \land (c, d) \in \mathcal{R}_3] & \text{Definition of Relation Composition} \\
\Longleftrightarrow & \exists b \in B\ \exists c \in C\ [(a, b) \in \mathcal{R}_1 \land (b, c) \in \mathcal{R}_2 \land (c, d) \in \mathcal{R}_3] & \text{Repeated Quantifiers can be swapped} \\
\Longleftrightarrow & \exists b \in B\ [(a, b) \in \mathcal{R}_1 \land (b, d) \in \mathcal{R}_2 \circ \mathcal{R}_3] & \text{Definition of Relation Composition} \\
\Longleftrightarrow & (a, d) \in \mathcal{R}_1 \circ \bigl(\mathcal{R}_2 \circ \mathcal{R}_3\bigr) & \text{Definition of Relation Composition}
\end{array}
\]

Thus, we have shown that 

$$(a, d) \in \bigl(\mathcal{R}_1 \circ \mathcal{R}_2\bigr) \circ \mathcal{R}_3 \Longleftrightarrow (a, d) \in \mathcal{R}_1 \circ \bigl(\mathcal{R}_2 \circ \mathcal{R}_3\bigr)$$

meaning we have that 

$$\bigl(\mathcal{R}_1 \circ \mathcal{R}_2\bigr) \circ \mathcal{R}_3 = \mathcal{R}_1 \circ \bigl(\mathcal{R}_2 \circ \mathcal{R}_3\bigr)$$

as desired.

---
{{% /expand %}}

Note that because $\bigl(\mathcal{R}_1 \circ \mathcal{R}_2\bigr) \circ \mathcal{R}_3 = \mathcal{R}_1 \circ \bigl(\mathcal{R}_2 \circ \mathcal{R}_3\bigr)$, 
the expression 

$$\mathcal{R}_1 \circ \mathcal{R}_2 \circ \mathcal{R}_3$$

is unambiguous.

## Multiple Compositions

When we examined the Cartesian product, we noted how we can take the Cartesian 
product of a set with itself multiple times. We can do the same thing with 
relations.

{{% notice style="example" title="Example 5.7.3" %}}
Consider the set $W = \{1, 2, 3, 4\}$ along with the relation 
$\mathcal{R} \subseteq W^2$ where 

$$\mathcal{R} = \{(1, 2), (2, 4), (3, 1), (4, 3)\}$$

Let's compute $\mathcal{R} \circ \mathcal{R}$:

\[
\begin{align*}
\mathcal{R} \circ \mathcal{R} &= \{(1, 2), (2, 4), (3, 1), (4, 3)\} \circ \{(1, 2), (2, 4), (3, 1), (4, 3)\} \\
&= \{(1, 4), (2, 3), (3, 2), (4, 1)\}
\end{align*}
\]

Now we compute $\mathcal{R} \circ \mathcal{R} \circ \mathcal{R}$:

\[
\begin{align*}
\mathcal{R} \circ \mathcal{R} \circ \mathcal{R} &= \mathcal{R} \circ \bigl(\mathcal{R} \circ \mathcal{R}\bigr) \\
&= \{(1, 2), (2, 4), (3, 1), (4, 3)\} \circ \{(1, 4), (2, 3), (3, 2), (4, 1)\} \\
&= \{(1, 3), (2, 1), (3, 4), (4, 2)\}
\end{align*}
\]

Next, we compute $\mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \circ \mathcal{R}$:

\[
\begin{align*}
\mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \circ \mathcal{R} &= \mathcal{R} \circ \bigl(\mathcal{R} \circ \mathcal{R} \circ \mathcal{R}\bigr) \\
&= \{(1, 2), (2, 4), (3, 1), (4, 3)\} \circ \{(1, 3), (2, 1), (3, 4), (4, 2)\} \\
&= \{(1, 1), (2, 2), (3, 3), (4, 4)\}
\end{align*}
\]

We got the identity relation back! Let's see what happens when we take one more composition:

\[
\begin{align*}
\mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \circ \mathcal{R} &= \mathcal{R} \circ \bigl(\mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \circ \mathcal{R}\bigr) \\
&= \{(1, 2), (2, 4), (3, 1), (4, 3)\} \circ \{(1, 1), (2, 2), (3, 3), (4, 4)\} \\
&= \{(1, 2), (2, 4), (3, 1), (4, 3)\}
\end{align*}
\]

Doing this gives us the original relation back. Of course, at this point we 
expect to cycle through all of the previous results if we take more 
compositions.
{{% /notice %}}

Having to constantly repeat the composition operator can be cumbersome. Let's 
make dealing with repeated composition easier by borrowing the 
exponential notation used with repeated multiplication and repeated Cartesian 
products.

First, let's use the convention that 

$$\mathcal{R}^1 = \mathcal{R}$$ 

Now we use the following rule:

$$\mathcal{R}^n = \mathcal{R} \circ \mathcal{R}^{n - 1}$$

Doing this, we have the following:

\[
\begin{align*}
\mathcal{R}^1 &= \mathcal{R} \\
\mathcal{R}^2 &= \mathcal{R} \circ \mathcal{R}^1 = \mathcal{R} \circ \mathcal{R} \\
\mathcal{R}^3 &= \mathcal{R} \circ \mathcal{R}^2 = \mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \\
\mathcal{R}^4 &= \mathcal{R} \circ \mathcal{R}^3 = \mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \\
\mathcal{R}^5 &= \mathcal{R} \circ \mathcal{R}^4 = \mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \circ \mathcal{R} \\
\vdots
\end{align*}
\]

We don't have to worry about parentheses because of Theorem 5.7.1, so we can 
compute these compositions any way we want:

\[
\begin{align*}
\mathcal{R}^{m + n} &= \mathcal{R}^m \circ \mathcal{R}^n \\
&= \underbrace{\mathcal{R} \circ \cdots \circ \mathcal{R}}_{\text{m times}} \circ \underbrace{\mathcal{R} \circ \cdots \circ \mathcal{R}}_{\text{n times}}
\end{align*}
\]

{{% notice style="example" title="Example 5.7.4" %}}
Consider the set $M = \{1, 2, 3, 4\}$ along with the relation 
$\mathcal{R} \subseteq M^2$ where 

$$\mathcal{R} = \{(1, 2), (2, 3), (3, 3), (4, 1)\}$$

First, we compute $\mathcal{R}^2$:

\[
\begin{align*}
\mathcal{R}^2 &= \mathcal{R} \circ \mathcal{R} \\
&= \{(1, 2), (2, 3), (3, 3), (4, 1)\} \circ \{(1, 2), (2, 3), (3, 3), (4, 1)\} \\
&= \{(1, 3), (2, 3), (3, 3), (4, 2)\}
\end{align*}
\]

Next, we compute $\mathcal{R}^3$:

\[
\begin{align*}
\mathcal{R}^3 &= \mathcal{R} \circ \mathcal{R}^2 \\
&= \{(1, 2), (2, 3), (3, 3), (4, 1)\} \circ \{(1, 3), (2, 3), (3, 3), (4, 2)\} \\
&= \{(1, 3), (2, 3), (3, 3), (4, 3)\}
\end{align*}
\]

In $\mathcal{R}^3$, we see that all numbers in $M$ are related to $3$, thus we 
expect that $\mathcal{R}^4$ will also relate all numbers in $M$ to $3$ as 
well:

\[
\begin{align*}
\mathcal{R}^4 &= \mathcal{R} \circ \mathcal{R}^3 \\
&= \{(1, 2), (2, 3), (3, 3), (4, 1)\} \circ \{(1, 3), (2, 3), (3, 3), (4, 3)\} \\
&= \{(1, 3), (2, 3), (3, 3), (4, 3)\} \\
&= \mathcal{R}^3
\end{align*}
\]

At this point, we can confidently say that 

$$\mathcal{R}^3 = \mathcal{R}^4 = \mathcal{R}^5 = \mathcal{R}^6 = \cdots$$
{{% /notice %}} 
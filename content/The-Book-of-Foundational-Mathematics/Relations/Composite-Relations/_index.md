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
&= \{(x, z) \in X \times Z\ |\ \bigl((x, y) \in X \times Y\bigr) \land \bigl((y, z) \in Y \times Z\bigr)\}
\end{align*}
\]
{{% /notice %}}

{{% notice style="example" title="Example 4.7.1" %}}
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

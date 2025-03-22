+++
date = '2024-12-20T16:24:08-05:00'
draft = false
title = 'Relations'
weight = 4
+++

When we form the Cartesian Product $A \times B$, we are essentially pairing up 
every element in A with every element in B. However, we may not want to 
associate every element of A with every element in B. Instead, we may only 
want to pair up certain elements together because they satisfy some condition. 

The way we pair up only certain elements from A to certain elements of B is to 
take a subset of $A \times B$. These kinds of subsets are yet another 
fundamental structure that appear all throughout all of mathematics.

## Defining Relations
As stated above, we often want to take subsets of Cartesian Products.

{{% notice style="definition" title="Relation" %}}
A subset of $A \times B$ is called a **relation**; more specifically, it is 
called a (binary) relation from A to B. Typically, a relation is denoted by 
the symbol $\mathcal{R}$.

For a relation $\mathcal{R}$ derived from $A \times B$, whenever we have that 

$$(a, b) \in \mathcal{R}$$

we can instead write 

$$a\ \mathcal{R}\ b$$

to specify that element a is related to element b.
{{% /notice %}}

The reason the word binary was used in the definition is because there 
were two sets being used to form the relation. Let's look at a few examples.

{{% notice style="example" title="Example 5.4.1" %}}
Consider the following two sets:

\[
\begin{align*}
A &= \{1, 2, 3, 4, 5\} \\
B &= \{2, 4, 6, 8, 10\}
\end{align*}
\]

We have that 

\[
\begin{array}{c c c c c c c c c}
A \times B & = & \{ & (1, 2), & (1, 4), & (1, 6), & (1, 8), & (1, 10), & \\
 & & & (2, 2), & (2, 4), & (2, 6), & (2, 8), & (2, 10), & \\
 & & & (3, 2), & (3, 4), & (3, 6), & (3, 8), & (3, 10), & \\
 & & & (4, 2), & (4, 4), & (4, 6), & (4, 8), & (4, 10), & \\
 & & & (5, 2), & (5, 4), & (5, 6), & (5, 8), & (5, 10) & \} \\
\end{array}
\]

where we spaced out the elements to make it easier to see what elements are in 
$A \times B$.

For our first example of a relation, let's just pick a subset of $A \times B$ 
consisting of arbitrarily picked elements without any rhyme or reason:

$$\mathcal{R}_1 = \{(1, 2), (3, 2), (2, 4), (3, 4), (1, 6), (1, 8), (2, 8), (5, 8), (5, 10)\}$$

For this first relation, we see that the number 1, taken from set A, is 
related to a few different numbers from B:

\[
\begin{align*}
1\ &\mathcal{R}_1\ 2 \\
1\ &\mathcal{R}_1\ 6 \\
1\ &\mathcal{R}_1\ 8
\end{align*}
\]

We also see that 3 (taken from set A) is also related to a couple of elements 
from B:

\[
\begin{align*}
3\ \mathcal{R}_1\ 2 \\
3\ \mathcal{R}_1\ 4
\end{align*}
\]

We also see that numbers 2 and 5 from A are also related to a few different 
numbers from B:

\[
\begin{array}{ c c }
2\ \mathcal{R}_1\ 4 & 2\ \mathcal{R}_1\ 8 \\
5\ \mathcal{R}_1\ 8 & 5\ \mathcal{R}_1\ 10
\end{array}
\]
{{% /notice %}}

{{% notice style="example" title="Example 5.4.2" %}}
Reconsider the Cartesian Product 

\[
\begin{array}{c c c c c c c c c}
A \times B & = & \{ & (1, 2), & (1, 4), & (1, 6), & (1, 8), & (1, 10), & \\
 & & & (2, 2), & (2, 4), & (2, 6), & (2, 8), & (2, 10), & \\
 & & & (3, 2), & (3, 4), & (3, 6), & (3, 8), & (3, 10), & \\
 & & & (4, 2), & (4, 4), & (4, 6), & (4, 8), & (4, 10), & \\
 & & & (5, 2), & (5, 4), & (5, 6), & (5, 8), & (5, 10) & \} \\
\end{array}
\]

from Example 5.4.1.

Instead of picking arbitrary elements, let's choose elements that satisfy some  
rule.

One relation we could take is 

$$(a, b) \in\ \mathcal{R}_2\ \text{ if } b = 2a$$

One such ordered pair is (2, 4) because 4 = 2(2). Another such ordered pair is 
(1, 2) because 2 = 2(1). There are other ordered pairs in the relation:

$$\mathcal{R}_2 = \{(1, 2), (2, 4), (3, 6), (4, 8), (5, 10)\}$$

Another relation we could take is 

$$\mathcal{R}_3 = \{(a, b)\ |\ a = 3 \lor b = 2\}$$

where the ordered pairs we are interested in either have 3 as the first 
element, 2 as the second element, or both. This relation is the set 

$$\mathcal{R}_3 = \{(3, 2), (3, 4), (3, 6), (3, 8), (3, 10), (1, 2), (2, 2), (4, 2), (5, 2)\}$$

Going off $\mathcal{R}_3$, we can also use the logical and operation:

\[
\begin{align*}
\mathcal{R}_4 &= \{(a, b)\ |\ a = 3 \land b = 2\} \\
&= \{(3, 2)\}
\end{align*}
\]
{{% /notice %}}

{{% notice style="example" title="Example 5.4.3" %}}
Reconsider the Cartesian Product from Example 5.4.1 again: 

\[
\begin{array}{c c c c c c c c c}
A \times B & = & \{ & (1, 2), & (1, 4), & (1, 6), & (1, 8), & (1, 10), & \\
 & & & (2, 2), & (2, 4), & (2, 6), & (2, 8), & (2, 10), & \\
 & & & (3, 2), & (3, 4), & (3, 6), & (3, 8), & (3, 10), & \\
 & & & (4, 2), & (4, 4), & (4, 6), & (4, 8), & (4, 10), & \\
 & & & (5, 2), & (5, 4), & (5, 6), & (5, 8), & (5, 10) & \} \\
\end{array}
\]

Now consider the following relation: 

$$\mathcal{R}_5 = \{(a, b)\ |\ a = 3 \land a = 5\}$$

Notice that none of the ordered pairs in $A \times B$ have a first element 
that is simultaneously equal to 3 and 5. As such, we have that 

$$\mathcal{R}_5 = \emptyset$$

meaning that $\mathcal{R}_5$ is an empty relation.
{{% /notice %}}

## Relations on a Single Set
Just like we can take the Cartesian Product of a set with itself such as 
$A \times A$, we can also take subsets of $A \times A$ to form relations from 
A to itself. In this case, we would call $\mathcal{R}$ a *binary relation on 
A*. Again, we use the word binary to describe the fact that there are two sets 
being used to form the Cartesian Product.

{{% notice style="example" title="Example 5.4.4" %}}
Consider the set $A = \{-2, -1, 0, 1, 2\}$.

The Cartesian Product $A^2$ is thus 

\[
\begin{array}{ c c c c c c c c c }
A \times A & = & \{ & (-2, -2), & (-2, -1), & (-2, 0), & (-2, 1), & (-2, 2), & \\
& & & (-1, -2), & (-1, -1), & (-1, 0), & (-1, 1), & (-1, 2), & \\
& & & (0, -2), & (0, -1), & (0, 0), & (0, 1), & (0, 2), & \\
& & & (1, -2), & (1, -1), & (1, 0), & (1, 1), & (1, 2), & \\
& & & (2, -2), & (2, -1), & (2, 0), & (2, 1), & (2, 2) & \}
\end{array}
\]

Consider the relation 

$$(a_1, a_2) \in \mathcal{R} \text{ if } a_1 < a_2$$

This is the "less than" relation, so instead of writing $\mathcal{R}$, we 
could use the symbol < instead. As such, instead of writing 
$-1\ \mathcal{R}\ 0$, we can now write $-1 < 0$, which coincides with the 
commonly used mathematical notation. Here, we see that 

$$\mathcal{R}\ =\ <\ =\ \{(-2, -1), (-2, 0), (-2, 1), (-2, 2), (-1, 0), (-1, 1), (-1, 2), (0, 1), (0, 2), (1, 2)\}$$

Note that we are using the symbol < both as a comparison operator (its common 
usage), and as the name for a set (which is very unusual, and tends to be 
avoided to prevent confusion).
{{% /notice %}}

{{% notice style="example" title="Example 5.4.5" %}}
Consider the set 

$$\bigstar = \{0, 0.3, 0.7, 1, 1.5, 1.7, 2, 2.1, 2.11\}$$

Let $\mathcal{R}$ be the binary relation on $\bigstar$ defined by

$$(a, b) \in \mathcal{R} \text{ if } b = \lceil a \rceil$$

where the second element is the ceiling of the first element. For example, 
because $\lceil 0.3 \rceil = 1$ and $\lceil 2 \rceil = 2$, we have that 

\[
\begin{align*}
0.3\ &\mathcal{R}\ 1 \\
2\ &\mathcal{R}\ 2
\end{align*}
\]

We thus have that 

\[
\begin{align*}
\mathcal{R} &= \{\ (x, y) \in \bigstar \times \bigstar \ | \ y = \lceil x \rceil\} \\
&= \{\ (0, \lceil 0 \rceil), (0.3, \lceil 0.3 \rceil), (0.7, \lceil 0.7 \rceil), (1, \lceil 1 \rceil), (1.5, \lceil 1.5 \rceil), (1.7, \lceil 1.7 \rceil), (2, \lceil 2 \rceil) \ \} \\
&= \{\ (0, 0), (0.3, 1), (0.7, 1), (1, 1), (1.5, 2), (1.7, 2), (2, 2) \ \}
\end{align*}
\]

Notice that since $3 \notin \bigstar$, we have that 

\[
\begin{align*}
2.1 &\cancel{\mathcal{R}}\ 3 \\
2.11 &\cancel{\mathcal{R}}\ 3
\end{align*}
\]

even though the ceiling of both 2.1 and 2.11 is 3. This is because 3 is not in 
$\bigstar$, meaning we have that 

\[
\begin{align*}
(2.1, 3) &\notin \bigstar \times \bigstar \\
(2.11, 3) &\notin \bigstar \times \bigstar
\end{align*}
\]

which further means that neither (2.1, 3) nor (2.11, 3) can possibly be in 
any subset of $\bigstar \times \bigstar$.
{{% /notice %}}

## Relations on Three or More Sets
Of course, there is nothing stopping us from considering subsets of Cartesian 
Products of three or more sets.

{{< notice style="example" title="Example 5.4.6" >}}
Consider the set of primary pigment colors and secondary pigment colors:

$~$

\[
\begin{align*}
P &= \{\text{Red}, \text{Yellow}, \text{Blue}\} \\
S &= \{\text{Orange}, \text{Green}, \text{Purple}\}
\end{align*}
\]

{{< figure 
    src="Pigment_Color_Theory.jpg" 
    width=400 height=400 
    caption="Figure 5.4.1: This diagram shows how the primary pigment colors mix together to form the secondary pigment colors."
>}}

We can form a relation on the Cartesian Product $P \times P \times S$ by 
considering triples where the first two elements mix together to get a 
secondary color according to the diagram above showing how pigment colors mix 
together:

$$\mathcal{R} = \{(\text{Red}, \text{Yellow}, \text{Orange}), (\text{Red}, \text{Blue}, \text{Purple}), (\text{Yellow}, \text{Blue}, \text{Green})\}$$
{{< /notice >}}

{{< notice style="example" title="Example 5.4.7" >}}
Alternatively to pigments, light can mix together to form new colors as well, 
as demonstrated in Figure 5.4.2 below.

{{< figure 
    src="Light_Color_Theory.jpg" 
    width=400 height=400
    caption="Figure 5.4.2: Different wave lengths of light are different colors, which can be mixed together to form new colors. The primary colors here are Red, Green, and Blue. Pixels on screens are colored by emitting differnt comninations of those colors."
>}}

Consider the set P of primary light colors and the set S of secondary light colors:

\[
\begin{align*}
P &= \{\text{Red}, \text{Green}, \text{Blue}\} \\
S &= \{\text{Yellow}, \text{Magenta}, \text{Cyan}\}
\end{align*}
\]

Differently to Example 5.4.6, let's take a relation on the Cartesian Product 
$(P \times P) \times S$, which should make it easier to see what colors are 
mixing together to form the third color. The relation we'll take is the 
relation of color mixtures as defined in Figure 5.4.2 above:

$$\mathcal{R} = \{((\text{Red}, \text{Green}), \text{Yellow}), ((\text{Red}, \text{Blue}), \text{Magenta}), ((\text{Green}, \text{Blue}), \text{Cyan})\}$$
{{< /notice >}}

{{% notice style="example" title="Example 5.4.8" %}}
Astrid is a graphic artist for a large online magazine, and wants to upgrade 
her computer. Her local computer shop sells computers with four categories of 
specifications for the CPU, Graphics card, RAM, and Motherboard based on the 
following: 

- The number of CPU cores.
- The amount of video RAM (VRAM), measured in Gigabytes, on the Graphics card.
- The amount of RAM available, measured in Gigabytes, to the CPU.
- Whether or not the Motherboard has on-board wifi.

The store offers the following options for each category: 

\[
\begin{align*}
\text{CPU} &= \{4, 8, 12, 16\} \\
\text{Graphics Card} &= \{8, 16, 24\} \\
\text{RAM} &= \{16, 32\} \\
\text{Wifi} &= \{\text{Yes}, \text{No}\}
\end{align*}
\]

Thus, all of the available configurations the store sells are captured in the 
Cartesian Product 

$$\text{CPU} \times \text{Graphics Card} \times \text{RAM} \times \text{Wifi}$$

Astrid needs a computer that can handle digital art and 3D rendering, so she 
wants a computer with at least 16Gb VRAM and 32Gb RAM. However, she also wants 
to try and save money by not splurging on a CPU, so she wants no more than 8 
CPU cores. She doesn't care if the motherboard has on-board wifi or not.

Thus, we can form a relation $\mathcal{R}_{\text{Astrid}}$ on 
$\text{CPU} \times \text{Graphics Card} \times \text{RAM} \times \text{Wifi}$ 
by considering all options that meet Astrid's requirement:

\[
\begin{align*}
\mathcal{R}_{\text{Astrid}} &= \{(c, v, r, w) \in \text{CPU} \times \text{Graphics Card} \times \text{RAM} \times \text{Wifi}\ |\ c \le 8 \land v \ge 16 \land r \ge 32\} \\ \\
&= 
\begin{array}{ c c c c c c }
\{ & (4, 16, 32, \text{No}), & (4, 24, 32, \text{No}), & (8, 16, 32, \text{No}), & (8, 24, 32, \text{No}), & \\
& (4, 16, 32, \text{Yes}), & (4, 24, 32, \text{Yes}), & (8, 16, 32, \text{Yes}), & (8, 24, 32, \text{Yes}) & \}
\end{array}
\end{align*}
\]
{{% /notice %}}

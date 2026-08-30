+++
date = '2025-01-25T21:39:29-05:00'
draft = false
title = 'Characterizing Relations'
weight = 6
+++

In the previous couple of sections, we defined relations and described some 
ways to make it easier to visualize what elements were in those relations. 
Here, we take a closer look at relations defined on a single set. More 
specifically, we'll look at some properties of a relation $\mathcal{R}$ 
defined on a single set A (that is, $\mathcal{R} \subseteq A^2$).

## Reflexive Relations
Perhaps the easiest property to verify for each relation is whether or not 
every element of A is related to itself under the given relation.

{{% notice style="definition" title="Reflexive" %}}
Let $\mathcal{R} \subseteq A^2$.

$\mathcal{R}$ is called **reflexive** *on set $A$* if (and only if) 

$$\forall a \in A\ [a\ \mathcal{R}\ a]$$
{{% /notice %}}

Put another way, $\mathcal{R}$ is reflexive when every single element in $A$ is 
related to itself.

{{% notice style="example" title="Example 5.6.1" %}}
### a.)
Consider the set $A = \{1, 2, 3\}$. Let $\mathcal{R}_1 \subseteq A^2$ be the 
relation 

$$\mathcal{R}_1 = \{(1, 1), (2, 2), (2, 3), (3, 3), (3, 1)\}$$

To determine if $\mathcal{R}_1$ is reflexive, we have to see if every element 
in A is related to itself. The elements of $A$ are 1, 2, and 3. So, let's see 
if the ordered pairs $(1, 1)$, $(2, 2)$, $(3, 3)$ are in the relation: 

- $(1, 1) \in \mathcal{R}_1 = 1$
- $(2, 2) \in \mathcal{R}_1 = 1$
- $(3, 3) \in \mathcal{R}_1 = 1$

Since all of the above propositions are true, $\mathcal{R}_1$ is indeed 
reflexive.

### b.)
Reconsider the set $A = \{1, 2, 3\}$ with $\mathcal{R}_2 \subseteq A^2$ where 

$$\mathcal{R}_2 = \{(1, 2), (1, 1), (3, 3), (2, 3)\}$$

Even though $(1, 1) \in \mathcal{R}_2$ and $(3, 3) \in \mathcal{R}_2$, we have 
that $(2, 2) \notin \mathcal{R}_2$, meaning we have that 
$2\ \cancel{\mathcal{R}_2}\ 2$. As such, $\mathcal{R}_2$ is not reflexive on A.

### c.)
Reconsider $\mathcal{R}_1 = \{(1, 1), (2, 2), (2, 3), (3, 3), (3, 1)\}$, but 
now let it be a relation defined on $B^2$ where $B = \{1, 2, 3, 4\}$.

Even though $\mathcal{R}_1$ was reflexive on $A$, we see that since 
$(4, 4) \notin \mathcal{R}_1$, we have that 

$$4\ \cancel{\mathcal{R}_1}\ 4$$

meaning $\mathcal{R}_1$ is *not* reflexive on $B$.
{{% /notice %}}

Notice that based on Example 5.6.1, part c, that just because a relation 
$\mathcal{R}$ is reflexive on one set, it is not necessarily reflexive on 
every set. Look again at the definition for reflexive. Notice how a relation 
is described as being reflexive *on a set*, and not just reflexive.

Let's look at a few more examples.

{{% notice style="example" title="Example 5.6.2" %}}
Consider the set $X = \{1, 2, 3\}$. Let 
$\mathcal{R} \subseteq \mathcal{P}(X)^2$ where 

$$X_i\ \mathcal{R}\ X_j\ \text{if}\ X_i \subseteq X_j$$

In other words, $\mathcal{R}$ is the subset relation on $\mathcal{P}(X)$.

According to Theorem 3.2.2, every set is a subset of itself. As such, we know 
that $\mathcal{R}$ is reflexive on $\mathcal{P}(X)$. However, since $|X| = 3$, 
it's not difficult to visually verify this using a 0-1 table.

|$\mathcal{R}$|||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|$\mathcal{P}(X)\ /\ \mathcal{P}(X)$|$\emptyset$|$\{1\}$|$\{2\}$|$\{3\}$|$\{1, 2\}$|$\{1,3\}$|$\{2,3\}$|$\{1, 2, 3\}$|
|$\emptyset$  |1|1|1|1|1|1|1|1|
|$\{1\}$      |0|1|0|0|1|1|0|1|
|$\{2\}$      |0|0|1|0|1|0|1|1|
|$\{3\}$      |0|0|0|1|0|1|1|1|
|$\{1, 2\}$   |0|0|0|0|1|0|0|1|
|$\{1, 3\}$   |0|0|0|0|0|1|0|1|
|$\{2, 3\}$   |0|0|0|0|0|0|1|1|
|$\{1, 2, 3\}$|0|0|0|0|0|0|0|1|

Since the elements of $\mathcal{P}(X)$ are listed in the same order along the 
rows and columns, we can essentially just check the truth values along the 
main diagonal from the top-left to the bottom-right. Since they are all true, 
that means all the elements are subsets of themselves (again, we already knew 
this from Theorem 3.2.2). Hence, $\mathcal{R}$ is reflexive on 
$\mathcal{P}(X)$.
{{% /notice %}}

{{% notice style="example" title="Example 5.6.3" %}}
Let $\mathcal{R} \subseteq \mathbb{R}^2$ such that 

$$x\ \mathcal{R}\ y\ \text{if}\ x \leq y$$

meaning that $\mathcal{R}$ is the "less-than-or-equal-to" relation.

Because there are infinitely many elements in $\mathbb{R}$, we can't simply 
check that for each $x \in \mathbb{R}$, we have that $x \leq x$. Instead, we 
must use the definition of $\leq$. Of course, every real number is either 
equal to itself, or less than itself (this is a disjunction of two 
propositions $x = x$ and $x < x$): 

\[
\begin{align*}
(x = x) \lor (x < x) &= (1) \lor (0) \\
&= 1
\end{align*}
\]

Thus, $\mathcal{R}$ is reflexive on $\mathbb{R}$.
{{% /notice %}}

Notice that in Example 5.6.3 we had to prove that each member of the set was 
related to itself using a definition. This will be necessary when the 
underlying set has infinitely many elements. On the other hand, in order to show 
that a relation is not reflexive on an infinite set, all we need is one 
counterexample, though finding the counterexample may be tricky at times.

## Symmetric Relations
When examining the proposition $x\ \mathcal{R}\ y$, it is natural to ask about 
the proposition $y\ \mathcal{R}\ x$ as well.

{{% notice style="definition" title="Symmetric" %}}
Let $\mathcal{R} \subseteq A^2$.

$\mathcal{R}$ is called **symmetric** *on set $A$* if (and only if) 

$$\forall a,b \in A\ [a\ \mathcal{R}\ b \implies b\ \mathcal{R}\ a]$$
{{% /notice %}}

{{% notice style="example" title="Example 5.6.4" %}}
Consider the set $X = \{1, 2, 3, 4\}$

Let $\mathcal{R} \subseteq X^2$ such that 

$$\mathcal{R} = \{(1, 1), (1, 4), (4, 1), (2, 2), (2, 3), (3, 2), (3, 3), (3, 4), (4, 3), (4, 4)\}$$

According to the definition of symmetric relations, we need 

$$\forall a,b \in X\ [a\ \mathcal{R}\ b \implies b\ \mathcal{R}\ a]$$

which means we need that 

$$a\ \mathcal{R}\ b \rightarrow b\ \mathcal{R}\ a = 1$$

for every single ordered pair $(a, b)$ in $X^2$.

Because $(2, 3) \in \mathcal{R}$, we have that $2\ \mathcal{R}\ 3 = 1$. But we also 
have that $(3, 2) \in \mathcal{R}$, meaning we also have that 
$3\ \mathcal{R}\ 2 = 1$. Thus, 

\[
\begin{align*}
2\ \mathcal{R}\ 3 \rightarrow 3\ \mathcal{R}\ 2 &= 1 \rightarrow 1 \\
&= 1
\end{align*}
\]

Of course, we also see that since $(1, 1) \in  \mathcal{R}$, we have that 
$1\ \mathcal{R}\ 1 = 1$. Therefore we have that 

\[
\begin{align*}
1\ \mathcal{R}\ 1 \rightarrow 1\ \mathcal{R}\ 1 &= 1 \rightarrow 1 \\
&= 1
\end{align*}
\]

We need to check the implication $a\ \mathcal{R}\ b \rightarrow b\ \mathcal{R}\ a$ 
for every single ordered pair $(a, b) \in X^2$. If even one of the 
implications is false, then we'll know that $\mathcal{R}$ is not symmetric.

We organize our checking using a modified truth table. The first two columns 
will show the value of $a$ and $b$, but will still show truth values for the 
propositions $(a\ \mathcal{R}\ b)$, $(b\ \mathcal{R}\ a)$, and their 
implication.

|$\mathbf{a}$|$\mathbf{b}$|$a\ \mathcal{R}\ b$|$b\ \mathcal{R}\ a$|$(a\ \mathcal{R}\ b) \rightarrow (b\ \mathcal{R}\ a)$|
|:-:|:-:|:-:|:-:|:-:|
|**1**|**1**|1|1|1|
|**1**|**2**|0|0|1|
|**1**|**3**|0|0|1|
|**1**|**4**|1|1|1|
|**2**|**1**|0|0|1|
|**2**|**2**|1|1|1|
|**2**|**3**|1|1|1|
|**2**|**4**|0|0|1|
|**3**|**1**|0|0|1|
|**3**|**2**|1|1|1|
|**3**|**3**|1|1|1|
|**3**|**4**|1|1|1|
|**4**|**1**|1|1|1|
|**4**|**2**|0|0|1|
|**4**|**3**|1|1|1|
|**4**|**4**|1|1|1|

All of the necessary implications are true, which means $\mathcal{R}$ is 
symmetric on $X$.

We also see that $\mathcal{R}$ is reflexive.
{{% /notice %}}

{{% notice style="example" title="Example 5.6.5" %}}
Consider the relation $\mathcal{R} \subseteq X^2$ on $X = \{1, 2, 3, 4\}$ 
where 

$\mathcal{R} = \{(1, 2), (2, 3), (3, 4)\}$

This relation is not symmetric because $(2, 1) \notin \mathcal{R}$. This tells 
us that 

$$1 \mathcal{R} 2 \rightarrow 2 \mathcal{R} 1 = 1 \rightarrow 0 = 0$$
{{% /notice %}}

Just like with reflexive relations, we can represent these relations using 0-1 
tables. And just like with reflexive relations, there is a pattern we can 
exploit to determine if the relation is symmetric.

For any ordered pair $(a, b) \in \mathcal{R}$, the element in the $a^{th}$ row 
and the $b^{th}$ column will be a 1. Thus, in order for $\mathcal{R}$ to be 
symmetric, we'd also need $(b, a) \in \mathcal{R}$ as well, meaning that the 
element in the $b^{th}$ row and $a^{th}$ column also needs to be 1. This means 
that the 0-1 table needs to be *symmetric* around the main diagonal.

{{% notice style="example" title="Example 5.6.6" %}}
Consider the relation $\mathcal{R} \subseteq X^2$ on $X = \{1, 2, 3, 4\}$ 
where 

$$\mathcal{R} = \{(1, 3), (3, 1), (2, 4), (4, 2)\}$$

The associated 0-1 table for $\mathcal{R}$ is 

|$\mathbf{\mathcal{R}}$|||||
|:-:|:-:|:-:|:-:|:-:|
|$\mathbf{X / X}$|**1**|**2**|**3**|**4**|
|**1**|0|0|1|0|
|**2**|0|0|0|1|
|**3**|1|0|0|0|
|**4**|0|1|0|0|

Since this table is symmetric about the main diagonal line, $\mathcal{R}$ is 
symmetric.

Since the main diagonal has 0s, $\mathcal{R}$ is not reflexive.
{{% /notice %}}

{{% notice style="example" title="Example 5.6.7" %}}
Consider the relation $\mathcal{R} \subseteq X^2$ where $X = \{1, 2, 3, 4\}$ 
with 0-1 table 

|$\mathbf{\mathcal{R}}$|||||
|:-:|:-:|:-:|:-:|:-:|
|$\mathbf{X / X}$|**1**|**2**|**3**|**4**|
|**1**|1|1|0|0|
|**2**|0|1|1|0|
|**3**|0|0|1|1|
|**4**|0|0|0|1|

Notice that this table is not symmetric about the main diagonal since $(1, 2)$ 
has truth value 1, but $(2, 1)$ has truth value 0.

Since the main diagonal is all 1s, $\mathcal{R}$ is reflexive.
{{% /notice %}}

Let's look at one more example involving a relation defined on the real 
numbers.

{{% notice style="example" title="Example 5.6.8" %}}
Let $\mathcal{R}_1 \subseteq \mathbb{R}^2$ such that 

$$x\ \mathcal{R}_1\ y\ \text{if}\ xy > 0$$

We know that this relation is symmetric because multiplication is commutative:

\[
\begin{align*}
x\ \mathcal{R}_1\ y &\implies xy > 0 \\
&\implies yx > 0 \\
&\implies y\ \mathcal{R}_1\ x
&\end{align*}
\]

Notice that $\mathcal{R}_1$ is not reflexive because even though 
$0 \in \mathbb{R}$, the fact that $(0)(0) \ngtr 0$ means that 
$0\ \cancel{\mathcal{R}_1}\ 0$.

However, the relation $\mathcal{R}_2 \subseteq \mathbb{R}^2$ where 
$x\ \mathcal{R}_2\ y\ \text{if}\ xy \geq 0$ is reflexive.
{{% /notice %}}

## Antisymmetric Relations

Suppose $(a, b) \in \mathcal{R}$ for some relation $\mathcal{R} \in A^2$. 
If the truth value in the $a^{th}$ row and $b^{th}$ column is the same truth 
value in the $b^{th}$ row and $a^{th}$ column, we say $\mathcal{R}$ is 
symmetric on $A$. If this isn't the case, then the 0-1 table would be not be 
symmetric about the main diagonal.

However, we do not define *antisymmetric* as simply *not symmetric*.

{{% notice style="definition" title="Antisymmetric" %}}
Let $\mathcal{R} \subseteq A^2$.

$\mathcal{R}$ is called **antisymmetric** *on set $A$* if (and only if) 

$$\forall a, b \in A\ [a\ \mathcal{R}\ b \land b\ \mathcal{R}\ a \implies a = b]$$
{{% /notice %}}

Essentially, what this definition says is that the only way for two elements 
of $A$ to be related to each other is that they must be the same element. 
Remember that saying 

$$\forall a, b \in A\ [a\ \mathcal{R}\ b \land b\ \mathcal{R}\ a \implies a = b]$$

is the same thing as saying 

$$\bigl(\forall a, b \in A\ [a\ \mathcal{R}\ b \land b\ \mathcal{R}\ a\ \rightarrow\ a = b]\bigr) = 1$$

An example is in order.

{{% notice style="example" title="Example 5.6.9" %}}
Consider the relation $\mathcal{R} \subseteq \{1, 2, 3\}^2$ such that 

$$\mathcal{R} = \{(1, 1), (3, 3), (2, 1), (3, 2), (1, 3)\}$$

We see that since $(2, 1) \in \mathcal{R}$, we have that $2\ \mathcal{R}\ 1$, 
but $(1, 2) \notin \mathcal{R}$, meaning $1\ \cancel{\mathcal{R}}\ 2$. As such, 
we see that 

\[
\begin{align*}
(2\ \mathcal{R}\ 1) \land (1\ \mathcal{R}\ 2) \rightarrow (2 = 1) &= 1 \land 0 \rightarrow 0 \\
&= 0 \rightarrow 0 \\
&= 1
\end{align*}
\]

Above, we were treating $2 = 1$ as a (false) proposition.

Since the above implication was true, it is still possible for $\mathcal{R}$ 
to be antisymmetric. We have to check the implication 

$$(a\ \mathcal{R}\ b) \land (b\ \mathcal{R}\ a) \rightarrow (a = b)$$

for every ordered pair $(a, b) \in \{1, 2, 3\}^2$. If even one implication is 
false, then we'll know that $\mathcal{R}$ is not antisymmetric.


Just like in Example 5.6.4, we'll use a modified truth table to examine each 
of the propositions $(a\ \mathcal{R}\ b)$, $(b\ \mathcal{R}\ a)$, and 
$(a = b)$, including their conjunctions and implications.

|$\mathbf{a}$|$\mathbf{b}$|$a\ \mathcal{R}\ b$|$b\ \mathcal{R}\ a$|$(a\ \mathcal{R}\ b) \land (b\ \mathcal{R}\ a)$|$a = b$|$(a\ \mathcal{R}\ b) \land (b\ \mathcal{R}\ a) \rightarrow (a = b)$|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|**1**|**1**|1|1|1|1|1|
|**1**|**2**|0|1|0|0|1|
|**1**|**3**|1|0|0|0|1|
|**2**|**1**|1|0|0|0|1|
|**2**|**2**|0|0|0|1|1|
|**2**|**3**|0|1|0|0|1|
|**3**|**1**|0|1|0|0|1|
|**3**|**2**|1|0|0|0|1|
|**3**|**3**|1|1|1|1|1|

Since all of the implications are true, we now know that $\mathcal{R}$ is antisymmetric.
{{% /notice %}}

We noted above that we don't define *antisymmetric* as *not symmetric*. This 
suggests that it's possible for a relation to be simultaneously symmetric 
and antisymmetric. A relation could also be neither symmetric nor 
antisymmetric.

{{% notice style="example" title="Example 5.6.10" %}}
Let $\mathcal{R}_1 \subseteq \{1, 2, 3\}^2$ be the relation 

$$\mathcal{R}_1 = \{(1,1), (2,2)\}$$

First, let's examine a modified truth table to determine if $\mathcal{R}_1$ is 
symmetric on $X$:

|$\mathbf{a}$|$\mathbf{b}$|$a\ \mathcal{R}\ b$|$b\ \mathcal{R}\ a$|$(a\ \mathcal{R}\ b) \rightarrow (b\ \mathcal{R}\ a)$|
|:-:|:-:|:-:|:-:|:-:|
|**1**|**1**|1|1|1|
|**1**|**2**|0|0|1|
|**1**|**3**|0|0|1|
|**2**|**1**|0|0|1|
|**2**|**2**|1|1|1|
|**2**|**3**|0|0|1|
|**3**|**1**|0|0|1|
|**3**|**2**|0|0|1|
|**3**|**3**|0|0|1|

The last column has all 1s, meaning $\mathcal{R}_1$ is symmetric. Now we check 
a modified truth table to determine if $\mathcal{R}_1$ is antisymmetric:

|$\mathbf{a}$|$\mathbf{b}$|$a\ \mathcal{R}\ b$|$b\ \mathcal{R}\ a$|$(a\ \mathcal{R}\ b) \land (b\ \mathcal{R}\ a)$|$a = b$|$(a\ \mathcal{R}\ b) \land (b\ \mathcal{R}\ a) \rightarrow (a = b)$|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|**1**|**1**|1|1|1|1|1|
|**1**|**2**|0|0|0|0|1|
|**1**|**3**|0|0|0|0|1|
|**2**|**1**|0|0|0|0|1|
|**2**|**2**|1|1|1|1|1|
|**2**|**3**|0|0|0|0|1|
|**3**|**1**|0|0|0|0|1|
|**3**|**2**|0|0|0|0|1|
|**3**|**3**|0|0|0|1|1|

So $\mathcal{R}_1$ is also antisymmetric. The only elements in $\mathcal{R}_1$ 
are $(1, 1)$ and $(2, 2)$, which lie on the main diagonal in the 0-1 table. 
Every other value in the 0-1 table will be 0: 

|$\mathcal{R}_1$||||
|:-:|:-:|:-:|:-:|
|$\mathbf{\{1, 2, 3\} / \{1, 2, 3\}}$|**1**|**2**|**3**|
|**1**|1|0|0|
|**2**|0|1|0|
|**3**|0|0|0|

So, relations that are both symmetric and antisymmetric will only have truth 
values of 1 that lie along the main diagonal. If all entries along the 
diagonal were 1, then the relation would simultaneously reflexive, symmetric, 
and antisymmetric.

{{% /notice %}}

{{% notice style="example" title="Example 5.6.11" %}}
Let $\mathcal{R}_2 \subseteq \{1, 2, 3\}^2$ be the relation 

$$\mathcal{R}_2 = \{(1, 1), (2, 2), (1, 3), (3, 1), (2, 3)\}$$

Just like in Example 5.6.10, we start by checking if $\mathcal{R}_2$ is 
symmetric:

|$\mathbf{a}$|$\mathbf{b}$|$a\ \mathcal{R}\ b$|$b\ \mathcal{R}\ a$|$(a\ \mathcal{R}\ b) \rightarrow (b\ \mathcal{R}\ a)$|
|:-:|:-:|:-:|:-:|:-:|
|**1**|**1**|1|1|1|
|**1**|**2**|0|0|1|
|**1**|**3**|1|1|1|
|**2**|**1**|0|0|1|
|**2**|**2**|1|1|1|
|**2**|**3**|1|0|0|
|**3**|**1**|1|1|1|
|**3**|**2**|0|1|1|
|**3**|**3**|0|0|1|

There is a 0 in the last column, meaning $\mathcal{R}_2$ is not symmetric. We 
know this because $(2, 3) \in \mathcal{R}_2$, but 
$(3, 2) \notin \mathcal{R}_2$. So the presence of an *antisymmetric* ordered 
pair $(2, 3)$ is preventing $\mathcal{R}_2$ from being symmetric.

Now we check if $\mathcal{R}_2$ is antisymmetric:

|$\mathbf{a}$|$\mathbf{b}$|$a\ \mathcal{R}\ b$|$b\ \mathcal{R}\ a$|$(a\ \mathcal{R}\ b) \land (b\ \mathcal{R}\ a)$|$a = b$|$(a\ \mathcal{R}\ b) \land (b\ \mathcal{R}\ a) \rightarrow (a = b)$|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|**1**|**1**|1|1|1|1|1|
|**1**|**2**|0|0|0|0|1|
|**1**|**3**|1|1|1|0|0|
|**2**|**1**|0|0|0|0|1|
|**2**|**2**|1|1|1|1|1|
|**2**|**3**|1|0|0|0|1|
|**3**|**1**|1|1|1|0|0|
|**3**|**2**|0|1|0|0|1|
|**3**|**3**|0|0|0|1|1|

The presence of two 0s in the last column means $\mathcal{R}_2$ is not 
antisymmetric. The presence of the two symmetric ordered pairs $(1, 3)$ and 
$(3, 1)$ prevents $\mathcal{R}_2$ from being antisymmetric.

Looking at the 0-1 table for $\mathcal{R}_2$ reveals it is neither completely 
symmetric about the main diagonal, nor is it completely non-symmetric about 
the main diagonal:

|$\mathcal{R}_1$||||
|:-:|:-:|:-:|:-:|
|$\mathbf{\{1, 2, 3\} / \{1, 2, 3\}}$|**1**|**2**|**3**|
|**1**|1|0|1|
|**2**|0|1|1|
|**3**|1|0|0|
{{% /notice %}}

## Transitive Relations

The final way we'll describe relations is whether or not they're transitive. 
To understand this property, let's think about whole numbers.

Early on in our educations, we learn that the whole numbers 
1, 2, 3, 4, $\ldots$ have an order associated with them. We recognize that 
2 < 10, 42 < 88, 2344 < 1229383, and so on. Let's focus on the number 
50. We know that 50 < 51. We also know that there are plenty of numbers 
less than 50. If we pick any one of the whole numbers less than 50 at random, 
what can we conclude?

Initially, all we know about our randomly picked number, which we'll refer to 
as $n$ is that it's less than 50. But we also know that 50 < 51. Thus, we know 
that since $n$ < 50, and 50 < 51, we can conclude that $n$ < 51 as well.

This is the *transitive* property of < on the whole numbers. We state a more 
general definition for any relation now:

{{% notice style="definition" title="Transitive" %}}
Let $\mathcal{R} \subseteq A^2$.

$\mathcal{R}$ is called **transitive** *on set A* if (and only if) 

$$\forall a, b, c \in A\ [(a\ \mathcal{R}\ b) \land (b\ \mathcal{R}\ c) \implies (a\ \mathcal{R}\ c)]$$
{{% /notice %}}

In the definition above, we can sort of think of element $b$ as an element 
that "bridges the gap", so to speak, from element $a$ to element $c$.

{{% notice style="example" title="Example 5.6.12" %}}
Consider the relation $\mathcal{R} \subseteq \{1, 2, 3\}^2$ where 

$$\mathcal{R} = \{(1, 1), (1, 2), (2, 2), (2, 3), (3, 3), (1, 3)\}$$

Because $(1, 2) \in \mathcal{R}$ and $(2, 3) \in \mathcal{R}$, in order for
$\mathcal{R}$ to be transitive, it would have to include $(1, 3)$ as well, 
which it does.

Using the definition of transitive, we see that 

\[
\begin{align*}
(1\ \mathcal{R}\ 2) \land (2\ \mathcal{R}\ 3) \rightarrow (1\ \mathcal{R}\ 3) &= 1 \land 1 \rightarrow 1 \\
&= 1 \rightarrow 1 \\
&= 1
\end{align*}
\]

But of course, the definition of transitive says that the implication must be 
true for all triples $a, b, c$ taken from $\{1, 2, 3\}$. There will be quite a 
few implications to check, so we'll organize everything into another modified 
truth table:

|**a**|**b**|**c**|$a\ \mathcal{R}\ b$|$b\ \mathcal{R}\ c$|$(a\ \mathcal{R}\ b) \land (b\ \mathcal{R}\ c)$|$a\ \mathcal{R}\ c$|$(a\ \mathcal{R}\ b) \land (b\ \mathcal{R}\ c) \rightarrow (a\ \mathcal{R}\ c)$|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|**1**|**1**|**1**|1|1|1|1|1|
|**1**|**1**|**2**|1|1|1|1|1|
|**1**|**1**|**3**|1|1|1|1|1|
|**1**|**2**|**1**|1|0|0|1|1|
|**1**|**2**|**2**|1|1|1|1|1|
|**1**|**2**|**3**|1|1|1|1|1|
|**1**|**3**|**1**|1|0|0|1|1|
|**1**|**3**|**2**|1|0|0|1|1|
|**1**|**3**|**3**|1|1|1|1|1|
|**2**|**1**|**1**|0|1|0|0|1|
|**2**|**1**|**2**|0|1|0|1|1|
|**2**|**1**|**3**|0|1|0|1|1|
|**2**|**2**|**1**|1|0|0|0|1|
|**2**|**2**|**2**|1|1|1|1|1|
|**2**|**2**|**3**|1|1|1|1|1|
|**2**|**3**|**1**|1|0|0|0|1|
|**2**|**3**|**2**|1|0|0|1|1|
|**2**|**3**|**3**|1|1|1|1|1|
|**3**|**1**|**1**|0|1|0|0|1|
|**3**|**1**|**2**|0|1|0|0|1|
|**3**|**1**|**3**|0|1|0|1|1|
|**3**|**2**|**1**|0|0|0|0|1|
|**3**|**2**|**2**|0|1|0|0|1|
|**3**|**2**|**3**|0|1|0|1|1|
|**3**|**3**|**1**|1|0|0|0|1|
|**3**|**3**|**2**|1|0|0|0|1|
|**3**|**3**|**3**|1|1|1|1|1|

Since the last column is all 1s, we now know that $\mathcal{R}$ is transitive on 
$\{1, 2, 3\}$.

{{% /notice %}}

As demonstrated in Example 5.6.12, even with a set as small as $\{1, 2, 3\}$, 
it can take a bit of work to verify that any relation defined on 
$\{1, 2, 3\}^2$ is transitive.

Sometimes, it may be easier to try and find a triple of elements $a, b, c$ 
that prove a relation is *not* transitive.

{{% notice style="example" title="Example 5.6.13" %}}
Consider the relation $\mathcal{R} \subseteq \{1, 2, 3, 4\}^2$ where 

$$\mathcal{R} = \{(1, 2), (2, 3), (3, 4), (2, 4), (4, 1), (3, 1), (1, 3) , (4, 2)\}$$

We see that since $(1, 2), (2, 3), (1, 3) \in \mathcal{R}$, transitivity is 
not violated. However, we may notice that $(3, 1), (1, 3) \in \mathcal{R}$, 
but $(3, 3) \notin \mathcal{R}$, meaning transitivity is violated.

This is enough to demonstrate that $\mathcal{R}$ is not transitive on 
$\{1, 2, 3, 4\}$.
{{% /notice %}}

We didn't use a 0-1 table to verify transitivity because there is no obvious 
pattern for transitivity. You essentially have to check corresponding entries 
to ensure transitivity is upheld or violated. Later in this book, we'll 
discuss a way to quickly tell, but it involves operating on the table in a 
special way.

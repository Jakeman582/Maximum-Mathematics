+++
date = '2024-12-20T16:23:38-05:00'
draft = false
title = 'Properties of the Cartesian Product'
weight = 3 
+++

The Cartesian Product of two sets is just another set. This means we can also 
use other set operations like union, intersection, and set differences.

In this section, we explore how the Cartesian Product interacts with the other 
set operators.

## Associativity of the Cartesian Product

We already discussed how order matters in Cartesian Products, and as such sets 
don't commute around the Cartesian Product operator $\times$. Associativity is 
another common property we should examine. What exactly is the difference 
between 

\[
\begin{array}{ l c r}
\underline{(A \times B) \times C} & \underline{A \times B \times C} & \underline{A \times (B \times C)}
\end{array}
\]

if any difference exists at all?

Remember that parentheses are used to indicate which operations are to be 
performed first.

{{% notice style="example" title="Example 5.3.1" %}}
Consider the sets 

$$A = \{1,\ 2\}$$
$$B = \{a,\ b\}$$
$$C = \{\Psi,\ \Omega\}$$

(Note that $\Psi$ and $\Omega$ are letters from the Greek alphabet, and are 
being used here simply for the sake of variety.)

From the previous section, we already know that 

$$A \times B \times C = \{(1, a, \Psi),\ (1, a, \Omega),\ (1, b, \Psi),\ (1, b, \Omega),\ (2, a, \Psi),\ (2, a, \Omega),\ (2, b, \Psi),\ (2, b, \Omega)\}$$

However, to compute $(A \times B) \times C$ and $A \times (B \times C)$, we 
must remember to compute what's in parentheses first.

#### Computing $(A \times B) \times C$

First, we must compute $A \times B$ as follows:

$$A \times B = \{(1, a),\ (1, b),\ (2, a),\ (2, b)\}$$

Finally, we can now compute $(A \times B) \times C$ like so:

\[
\begin{align*}
(A \times B) \times C &= \{(1, a),\ (1, b),\ (2, a),\ (2, b)\} \times \{\Psi,\ \Omega\} \\
&= \{((1, a), \Psi),\ ((1, a), \Omega),\ ((1, b), \Psi),\ ((1, b), \Omega),\ ((2, a), \Psi),\ ((2, a), \Omega),\ ((2, b), \Psi),\ ((2, b), \Omega)\} 
\end{align*}
\]

Notice that each element of $(A \times B) \times C$ is an ordered pair, not an 
ordered triple like with $A \times B \times C$. Furthermore, each ordered pair 
in $(A \times B) \times C$ contains an ordered pair.

Because all of the parentheses can be confusing to look at, let's list out all 
of the elements in $(A \times B) \times C$ in a grid:

\[
\begin{array}{ c c}
((1, a), \Psi) & ((1, a), \Omega) \\
((1, b), \Psi) & ((1, b), \Omega) \\
((2, a), \Psi) & ((2, a), \Omega) \\
((2, b), \Psi) & ((2, b), \Omega) \\
\end{array}
\]

#### Computing $A \times (B \times C)$

Computing $A \times (B \times C)$ is similar, except we of course start by 
computing $B \times C$:

\[
\begin{align*}
A \times (B \times C) &= \{1, 2\} \times \{(a, \Psi),\ (a, \Omega),\ (b, \Psi),\ (b, \Omega)\} \\
&= \{(1, (a, \Psi)),\ (1, (a, \Omega)),\ (1, (b, \Psi)),\ (1, (b, \Omega)),\ (2, (a, \Psi)),\ (2, (a, \Omega)),\ (2, (b, \Psi)),\ (2, (b, \Omega))\}
\end{align*}
\]
{{% /notice %}}

Just as order matters when writing a Cartesian Product, the way we associate 
sets using parentheses in a Cartesian Product also matters, as demonstrated in 
Example 5.3.1. This deserves special emphasis.

{{% notice style="important" title="Association Matters with Cartesian Products" %}}
The Cartesian Products 

\begin{array}{ c c c }
(A \times B) \times C & A \times B \times C & A \times (B \times C)
\end{array}

are not equal to one another.
{{% /notice %}}

Based on the above discussion, it should come as no surprise that 

$$A^m \times A^n \neq A^{m + n}$$

Instead, $A^m \times A^n$ is shorthand for 

$$(\underbrace{A \times A \times \cdots \times A}_{\text{m times}}) \times (\underbrace{A \times A \times \cdots \times A}_{\text{n times}})$$

whereas $A^{m + n}$ is shorthand for 

$$\underbrace{A \times A \times \cdots \times A}_{\text{m + n times}}$$

## Cartesian Products with the Empty Set

Before we formally prove the next theorem, let's take a moment to think about 
what would happen if we took the Cartesian Product of an arbitrary set A and 
the Empty Set.

For example, for every element in A, the Cartesian Product of A and B involves 
pairing the element in A with every element in B. However, if there were no 
elements in B, then there would be nothing to pair with the elements in A. 
Thus, no ordered pairs could be formed, and the resulting Cartesian Product 
would be empty.

{{% notice style="theorem" title="Theorem 5.3.1" %}}
For any arbitrary set A, we have that 

$$A \times \emptyset = \emptyset$$
$$\emptyset \times A = \emptyset$$
{{% /notice %}}

{{% expand expanded=false title="Proof 5.3.1" %}}
_General Strategy: By assuming that $A \times \emptyset$ is not empty, that 
would imply that $\ \emptyset$ has at least one element, contradicting the 
definition of the Empty Set. The exact same strategy works for 
$\ \emptyset \times A$ as well._

Presume - for the purpose of showing a contradiction - that 
$A \times \emptyset$ is non-empty. This would mean that there is at least one 
element in $A \times \emptyset$. That element would be an ordered pair which 
we'll denote (a, ?). As such, we know that 

$$(a, ?) \in A \times \emptyset$$

Now, by the definition of Cartesian Product, we then have that 

\[
\begin{align*}
a &\in A \\
? &\in \emptyset
\end{align*}
\]

However, the fact that $? \in \emptyset$ contradicts the fact that 
$|\emptyset| = 0$.

Hence, our presupposition that $A \times \emptyset$ is non-empty led to a 
contradiction, meaning we must have that 

$$A \times \emptyset = \emptyset$$

as desired.

Showing that $\ \emptyset \times A = \emptyset$ is nearly identical.

---
{{% /expand %}}

## $\times$ Distributes Over $\cup$ and $\cap$

Here, we'll see some of the distributive properties of the Cartesian Product.

{{% notice style="theorem" title="Theorem 5.3.2" %}}
For arbitrary sets A, B, C, we have that 

\[
\begin{align*}
A \times (B \cup C) &= (A \times B) \cup (A \times C) \\
(A \cup B) \times C &= (A \times C) \cup (B \times C)
\end{align*}
\]
{{% /notice %}}

{{% expand expanded=false title="Proof 5.3.2" %}}
_General Strategy: We'll prove that_ 

$$A \times (B \cup C) = (A \times B) \cup (A \times C)$$

_by showing that each side is a subset of the other side. We'll do this by 
using element arguments. The exact same logic also applies to showing that_

$$(A \cup B) \times C = (A \times C) \cup (B \times C)$$

_so we'll omit that part of the proof for the sake of brevity._

#### Step 1: Show that $A \times (B \cup C) \subseteq (A \times B) \cup (A \times C)$

\[
\begin{array}{ r l l }
& \mathbf{(a, x) \in A \times (B \cup C)} & \textbf{Reason} \\
\implies & (a \in A) \land (x \in B \cup C) & \textit{Definition of Cartesian Product} \\
\implies & (a \in A) \land [(x \in B) \lor (x \in C)] & \textit{Definition of Union} \\
\implies & [(a \in A) \land (x \in B)] \lor [(a \in A) \land (x \in C)] & \textit{Distribution of } \land \textit{ over } \lor \\
\implies & [(a, x) \in A \times B] \lor [(a, x) \in A \times C] & \textit{Definition of Cartesian Product} \\
\implies & (a, x) \in (A \times B) \cup (A \times C) & \textit{Definition of Union}
\end{array}
\]

Thus, we've just shown that whenever $(a, x) \in A \times (B \cup C)$, we also
have that $(a, x) \in (A \times B) \cup (A \times C)$. This means that we have 
by definition that 

$$A \times (B \cup C) \subseteq (A \times B) \cup (A \times C)$$

#### Step 2: Show that $(A \times B) \cup (A \times C) \subseteq A \times (B \cup C)$

\[
\begin{array}{ r l l }
& \mathbf{(a, x) \in (A \times B) \cup (A \times C)} & \textbf{Reason} \\
\implies & [(a, x) \in A \times B] \lor [(a, x) \in A \times C] & \textit{Definition of Union} \\
\implies & [(a \in A) \land (x \in B)] \lor [(a \in A) \land (x \in C)] & \textit{Definition of Cartesian Product} \\
\implies & (a \in A) \land (x \in B\ \lor\ x \in C) & \textit{Distribution of } \land \textit{ of } \lor \\
\implies & (a \in A) \land (x \in B \cup C) & \textit{Definition of Union} \\
\implies & (a, x) \in A \times (B \cup C) & \textit{Definition of Cartesian Product}
\end{array}
\]

Now we have shown that 

$$(A \times B) \cup (A \times C) \subseteq A \times (B \cup C)$$

#### Conclusion: $A \times (B \cup C) = (A \times B) \cup (A \times C)$

Because we've shown both 

$$A \times (B \cup C) \subseteq (A \times B) \cup (A \times C)$$
$$(A \times B) \cup (A \times C) \subseteq A \times (B \cup C)$$

we have, by definition of set equality, that 

$$A \times (B \cup C) = (A \times B) \cup (A \times C)$$

as desired!

Notice that in the above proof that, even though mathematical definitions use 
$\Longleftrightarrow$, we only considered one direction of the logical 
implication at a time (since we only used $\implies$). That is why we had to 
beak the proof up into two steps along with a concluding step.

However, with careful execution, we could have used $\Longleftrightarrow$ to 
make the proof more compact.

---
{{% /expand %}}

Let's see an example of Theorem 5.3.2 in action.

{{% notice style="example" title="Example 5.3.2" %}}
Consider the sets 

\[
\begin{align*}
A &= \{1, 2, 3\} \\
B &= \{a, b\} \\
C &= \{\alpha, \beta\}
\end{align*}
\]

According to Theorem 5.3.2, the two sets 

$$A \times (B \cup C)$$

and 

$$(A \times B) \cup (A \times C)$$

should be equal. Let's check.

#### Step 1: Compute $A \times (B \cup C)$

First, we compute $B \cup C$:

\[
\begin{align*}
B \cup C &= \{a, b\} \cup \{\alpha, \beta\} \\
&= \{a, b, \alpha, \beta\}
\end{align*}
\]

Now we can compute $A \times (B \cup C)$: 

\[
\begin{align*}
A \times (B \cup C) &= \{1, 2, 3\} \times \{a, b, \alpha, \beta\} \\
&= \{(1, a), (1, b), (1, \alpha), (1, \beta), (2, a), (2, b), (2, \alpha), (2, \beta), (3, a), (3, b), (3, \alpha), (3, \beta)\}
\end{align*}
\]

Let's lay out all of these elements in a grid to get a better look:

\[
\begin{array}{ c c c c }
(1, a) & (1, b) & (1, \alpha) & (1, \beta) \\
(2, a) & (2, b) & (2, \alpha) & (2, \beta) \\
(3, a) & (3, b) & (3, \alpha) & (3, \beta)
\end{array}
\]

#### Step 2: Compute $(A \times B) \cup (A \times C)$

First, compute $A \times B$:

\[
\begin{align*}
A \times B &= \{1, 2, 3\} \times \{a, b\} \\
&= \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\}
\end{align*}
\]

Next, we compute $A \times C$:

\[
\begin{align*}
A \times C &= \{1, 2, 3\} \times \{\alpha, \beta\} \\
&= \{(1, \alpha), (1, \beta), (2, \alpha), (2, \beta), (3, \alpha), (3, \beta)\}
\end{align*}
\]

Finally, we can compute $(A \times B) \cup (A \times C)$:

\[
\begin{align*}
(A \times B) \cup (A \times C) &= \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\} \cup \{(1, \alpha), (1, \beta), (2, \alpha), (2, \beta), (3, \alpha), (3, \beta)\} \\
&= \{(1, a), (1, b), (1, \alpha), (1, \beta), (2, a), (2, b), (2, \alpha), (2, \beta), (3, a), (3, b), (3, \alpha), (3, \beta)\}
\end{align*}
\]

Just like before, let's lay out all of these elements in a grid to get a 
better look:

\[
\begin{array}{ c c c c }
(1, a) & (1, b) & (1, \alpha) & (1, \beta) \\
(2, a) & (2, b) & (2, \alpha) & (2, \beta) \\
(3, a) & (3, b) & (3, \alpha) & (3, \beta)
\end{array}
\]

As we can see, these are exactly the same elements we got from the Cartesian 
Product from Step 1. As such, we see that in this example, we have verified 
that 

$$A \times (B \cup C) = (A \times B) \cup (A \times C)$$
{{% /notice %}}

In Theorem 5.3.2, we mentioned that A, B, C can be any arbitrary sets. This 
means any of the sets could be the empty set.

{{% notice style="example" title="Example 5.3.3" %}}
Consider the sets 

\[
\begin{align*}
A &= \{1, 2, 3\} \\
B &= \emptyset \\
C &= \{\alpha, \beta\}
\end{align*}
\]

#### Step 1: Compute $A \times (B \cup C)$

\[
\begin{align*}
A \times (B \cup C) &= A \times (\emptyset \cup C) \\
&= A \times C \\
&= \{1, 2, 3\} \times \{\alpha, \beta\} \\
&= \{(1, \alpha), (1, \beta), (2, \alpha), (2, \beta), (3, \alpha), (3, \beta)\}
\end{align*}
\]

#### Step 2: Compute $(A \times B) \cup (A \times C)$

According to Theorem 5.3.1, we have that $A \times \emptyset = \emptyset$. 
This makes computing $(A \times B) \cup (A \times C)$ much easier.

\[
\begin{align*}
(A \times B) \cup (A \times C) &= (A \times \emptyset) \cup (A \times C) \\
&= \emptyset \cup (A \times C) \\
&= A \times C \\
&= \{(1, \alpha), (1, \beta), (2, \alpha), (2, \beta), (3, \alpha), (3, \beta)\}
\end{align*}
\]

This is the exact same set we got in Step 1.

It's worth noting that we could have side-stepped all of the above computation 
by using many of the previously discussed theorems like so:

\[
\begin{align*}
A \times (B \cup C) &= A \times (\emptyset \cup C) \\
&= A \times C \\
&= \emptyset \cup (A \times C) \\
&= (A \times \emptyset) \cup (A \times C) \\
&= (A \times B) \cup (A \times C)
\end{align*}
\]
{{% /notice %}}

Of course, we have a similar result for the intersection of sets:

{{% notice style="theorem" title="Theorem 5.3.3" %}}
For any arbitrary sets A, B, C, we have that 

\[
\begin{align*}
A \times (B \cap C) &= (A \times B) \cap (A \times C) \\
(A \cap B) \times C &= (A \times C) \cap (B \times C)
\end{align*}
\]
{{% /notice %}}

{{% expand expanded=false title="Proof 5.3.3" %}}
_General Strategy: We'll adopt a similar strategy we used in the proof of 
Theorem 5.3.2, except we'll use logical equivalencies with 
$\Longleftrightarrow$ instead of logical implications with $\implies$. This 
will make the proof much more compact since we'll only have to make one 
element argument instead of two._

_Again, we'll prove that_ 

$$A \times (B \cap C) = (A \times B) \cap (A \times C)$$

_and omit the proof for_ 

$$(A \cap B) \times C = (A \times C) \cap (B \times C)$$

_simply for the sake of brevity._

We begin by considering an arbitrary ordered pair (a, x) in the Cartesian 
Product $A \times (B \cap C)$:

\[
\begin{array}{ r l l }
& \mathbf{(a, x) \in A \times (B \cap C)} & \textbf{Reason} \\
\Longleftrightarrow & (a \in A) \land (x \in B \cap C) & \textit{Definition of Cartesian Product} \\
\Longleftrightarrow & (a \in A) \land (x \in B) \land (x \in C) & \textit{Definition of Intersection} \\
\Longleftrightarrow & (a \in A) \land (a \in A) \land (x \in B) \land (x \in C) & \textit{Idempotent Law of } \land \\
\Longleftrightarrow & (a \in A) \land (x \in B) \land (a \in A) \land (x \in C) & \textit{Commutative Law of } \land \\
\Longleftrightarrow & [(a \in A) \land (x \in B)] \land [(a \in A) \land (x \in C)] & \textit{Associative Law of } \land \\
\Longleftrightarrow & [(a, x) \in A \times B] \land [(a, x) \in A \times C] & \textit{Definition of Cartesian Product} \\
\Longleftrightarrow & (a, x) \in (A \times B) \cap (A \times C) & \textit{Definition of Intersection}
\end{array}
\]

Thus, we have shown that 

$$(a, x) \in A \times (B \cap C)\ \Longleftrightarrow\ (a, x) \in (A \times B) \cap (A \times C)$$

which is logically equivalent to showing both

\[
\begin{align*}
(a, x) \in A \times (B \cap C) &\implies (a, x) \in (A \times B) \cap (A \times C) \\
(a, x) \in (A \times B) \cap (A \times C) &\implies (a, x) \in A \times (B \cap C)
\end{align*}
\]

meaning that we have that 

\[
\begin{align*}
A \times (B \cap C) &\subseteq (A \times B) \cap (A \times C) \\
(A \times B) \cap (A \times C) &\subseteq A \times (B \cap C)
\end{align*}
\]

This means that, by definition of set equality, we have 

$$A \times (B \cap C) = (A \times B) \cap (A \times C)$$

as desired!

---
{{% /expand %}}

Let's see some examples involving intersections.

{{% notice style="example" title="Example 5.3.4" %}}
Consider the sets 

\[
\begin{align*}
A &= \{1, 2, 3\} \\
B &= \{a, b\} \\
C &= \{b, c\}
\end{align*}
\]

#### Step 1: Compute $A \times (B \cap C)$

Computing $B \cap C$ yields

\[
\begin{align*}
B \cap C &= \{a, b\} \cap \{b, c\} \\
&= \{b\}
\end{align*}
\]

Now we compute $A \times (B \cap C)$

\[
\begin{align*}
A \times (B \cap C) &= \{1, 2, 3\} \times \{b\} \\
&= \{(1, b), (2, b), (3, b)\}
\end{align*}
\]

#### Step 2: Compute $(A \times B) \cap (A \times C)$

First, we compute $A \times B$:

\[
\begin{align*}
A \times B &= \{1, 2, 3\} \times \{a, b\} \\
&= \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\}
\end{align*}
\]

Next, we compute $A \times C$

\[
\begin{align*}
A \times C &= \{1, 2, 3\} \times \{b, c\} \\
&= \{(1, b), (1, c), (2, b), (2, c), (3, b), (3, c)\}
\end{align*}
\]

Finally, we compute $(A \times B) \cap (A \times C)$

\[
\begin{align*}
(A \times B) \cap (A \times C) &= \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\} \cap \{(1, b), (1, c), (2, b), (2, c), (3, b), (3, c)\} \\
&= \{(1, b), (2, b), (3, b)\}
\end{align*}
\]

This is the exact same result we got earlier in Step 1.
{{% /notice %}}

{{% notice style="example" title="Example 5.3.5" %}}
Consider the sets 

\[
\begin{align*}
A &= \{1, 2, 3\} \\
B &= \{a, b\} \\
C &= \{\alpha, \beta\}
\end{align*}
\]

Because 

\[
\begin{align*}
B \cap C &= \{ a, b \} \cap \{\alpha, \beta\} \\
&= \emptyset
\end{align*}
\]

we have by Theorem 5.3.1 that

\[
\begin{align*}
A \times (B \cap C) &= A \times \emptyset \\
&= \emptyset
\end{align*}
\]

Now when computing $(A \times B) \cap (A \times C)$, we start by computing 
$A \times B$ and $A \times C$ like so:

\[
\begin{align*}
A \times B &= \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\} \\
A \times C &= \{(1, \alpha), (1, \beta), (2, \alpha), (2, \beta), (3, \alpha), (3, \beta)\}
\end{align*}
\]

$A \times B$ and $A \times C$ don't have any common elements, meaning we have that 

$$(A \times B) \cap (A \times C) = \emptyset$$

which is exactly what we got when computing $A \times (B \cap C)$.

Once again, we see that $A \times (B \cap C) = (A \times B) \cap (A \times C)$.
{{% /notice %}}

## Cartesian Products involving Subsets

There is an interplay between Cartesian Products and subsets.

{{% notice style="theorem" title="Theorem 5.3.4" %}}
For any non-empty sets A, B, C, and D, we have that 

$$(A \times B) \subseteq (C \times D) \Longleftrightarrow (A \subseteq C) \land (B \subseteq D)$$
{{% /notice %}}

{{% expand title="Proof 5.3.4" expanded=false %}}
_General Strategy: Since we're trying to prove a logical equivalency, we'll 
break the proof up into two steps. In both steps, we'll use element arguments 
by picking arbitrary ordered pairs of the form (x, y)._

#### Step 1: $(A \times B) \subseteq (C \times D) \implies (A \subseteq C) \land (B \subseteq D)$
Suppose it were true that $(A \times B) \subseteq (C \times D)$, and that A, B, 
C, and D were non-empty. Since A and B are non-empty, we must also have that 
$A \times B$ is non-empty.

Since $A \times B$ is non-empty, we can pick out an arbitrary element from 
$A \times B$, which we'll refer to as (x, y).

Because $(x, y) \in A \times B$ and because $A \times B \subseteq C \times D$, 
we must have that $(x, y) \in C \times D$. as well.

Now, since $(x, y) \in A \times B$, we know (by the definition of Cartesian 
Product) that $(x \in A) \land (y \in B)$.

Since we also know that $(x, y) \in C \times D$, we similarly know that 
$(x \in C) \land (y \land D)$.

Thus, whenever $x \in A$, we also know that $x \in C$, meaning that we have 

$$A \subseteq C$$

For similar reasons involving element y, we also have that 

$$B \subseteq D$$

Thus, we have established that 

$$(A \times B) \subseteq (C \times D) \implies (A \subseteq C) \land (B \subseteq D)$$

completing Step 1.

#### Step 2: $(A \subseteq C) \land (B \subseteq D) \implies (A \times B) \subseteq (C \times D)$
Suppose it were true that $A \subseteq C$, $B \subseteq D$ and that A, B, 
C, and D were all non-empty.

Because both A and B are non-empty, we have that $A \times B$ is non-empty, 
meaning that we can pick an arbitrary element from $A \times B$, which we'll 
refer to as (x, y).

Because $(x, y) \in A \times B$, we have by definition of Cartesian Product 
that $x \in A$ and $y \in B$.

Now, since $x \in A$ and $A \subseteq C$, we also have that $x \in C$. 
Similarly, since $y \in B$ and $B \subseteq D$, we also have that $y \in D$.

Since $(x \in C) \land (y \in D)$, we have by definition of Cartesian Product that 
$(x, y) \in C \times D$.

Thus, when ever $(x, y) \in A \times B$, we also have that 
$(x, y) \in C \times D$ as well. This means we have established that 

$$(A \subseteq C) \land (B \subseteq D) \implies (A \times B) \subseteq (C \times D)$$

completing Step 2.

#### Conclusion: $(A \times B) \subseteq (C \times D) \Longleftrightarrow (A \subseteq C) \land (B \subseteq D)$

From Steps 1 and 2, we have established that 

\[
\begin{align*}
(A \times B) \subseteq (C \times D) &\implies (A \subseteq C) \land (B \subseteq D) \\
(A \subseteq C) \land (B \subseteq D) &\implies (A \times B) \subseteq (C \times D)
\end{align*}
\]

Therefore, we have that 

$$(A \times B) \subseteq (C \times D) \Longleftrightarrow (A \subseteq C) \land (B \subseteq D)$$

as desired.

---
{{% /expand %}}

A couple of examples are in order.

{{% notice style="example" title="Example 5.3.6" %}}
Consider the sets 

\[
\begin{align*}
A &= \{1, 2\} \\
B &= \{a, b\} \\
C &= \{1, 2, 3\} \\
D &= \{a, b\} \\
\end{align*}
\]

It's easy to see that $A \subseteq C$ and $B \subseteq D$.

Let's compute both $A \times B$ and $C \times D$:

\[
\begin{align*}
A \times B &= \{1, 2\} \times \{a, b\} \\
&= \{(1, a), (1, b), (2, a), (2, b)\} \\ \\
C \times D &= \{1, 2, 3\} \times \{a, b\} \\
&= \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\}
\end{align*}
\]

It's easy to see that all four ordered pairs in $A \times B$ are in 
$C \times D$:

\[
\begin{align*}
(1, a) &\in \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\} \\
(1, b) &\in \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\} \\
(2, a) &\in \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\} \\
(2, b) &\in \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\} \\
\end{align*}
\]

Thus we have that $(A \times B) \subseteq (C \times D)$ as expected.
{{% /notice %}}

{{% notice style="example" title="Example 5.3.7" %}}
Consider the sets 

\[
\begin{align*}
A &= \{1, 2, 3\} \\
B &= \{a, b\} \\
C &= \{8, 9\} \\
D &= \{x, y, z\} \\
\end{align*}
\]

Notice that A is not a subset of C, and B is not a subset of D. Thus we'd 
expect that since 

$$(A \subseteq C) \land (B \subseteq D) = 0$$

and 

$$(A \times B) \subset (C \times D) \Longleftrightarrow (A \subseteq C) \land (B \subseteq D)$$

we'd have by Theorem 5.3.4 that 

$$(A \times B) \subseteq (C \times D) = 0$$

meaning $A \times B$ is not a subset of $C \times D$ (expressed in the 
language of propositions).

We can avoid computing both $A \times B$ and $C \times D$ by noting that since 
$1 \in A$ the set $A \times B$ will have ordered pairs where the first element 
is 1. However, since $1 \notin C$, none of the ordered pairs in $C \times D$ 
will have a 1 as the first element. This means that $A \times B$ has at least 
one element not in $C \times D$, and so we have that 

$$A \times B \nsubseteq C \times D$$

as expected.

We could compute $A \times B$ and $C \times D$, however by stopping and 
thinking, we saved ourselves a lot of work!
{{% /notice %}}

Notice that Theorem 4.2.4 required that A, B, C, and D all be non-empty. 
Indeed, the proof of Theorem 4.2.4 required that we be able to pick arbitrary 
elements from A and B, as well as showing that they were also in C and D 
respectively.

What happens when one or more of the sets involved is the Empty Set?

{{% notice style="example" title="Example 5.3.8" %}}
Consider the sets 

\[
\begin{align*}
A &= \emptyset \\
B &= \{a, b\} \\
C &= \{1, 2, 3\} \\
D &= \{a, b\}
\end{align*}
\]

Here, we see that both $A \subseteq C$ and $B \subseteq D$.

Furthermore, we see that 

\[
\begin{align*}
A \times B &= \emptyset \times \{a, b\} \\
&= \emptyset \\ \\
C \times D &= \{1, 2, 3\} \times \{a, b\} \\
&= \{(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)\}
\end{align*}
\]

and so we can easily see that $(A \times B) \subseteq (C \times D)$.

Using the language of propositional logic, we would say that the proposition 
$(A \subseteq C) \land (B \subseteq D)$ evaluates to true; in other words, we have 
that 

$$(A \subseteq C) \land (B \subseteq D) = 1$$

Furthermore we see that the proposition $(A \times B) \subseteq (C \times D)$ 
also evaluates to true, meaning we have that 

$$(A \times B) \subseteq (C \times D) = 1$$

As such, we see that 

\[
\begin{align*}
(A \times B) \subseteq (C \times D) \longleftrightarrow (A \subseteq C) \land (B \subseteq D) &= 1 \longleftrightarrow 1 \\
&= 1
\end{align*}
\]

We see that introducing the Empty Set does not necessarily "break" Theorem 
5.3.4 because it held true in this case. But is that always the case? What if 
we make a different set empty?
{{% /notice %}}

{{% notice style="example" title="Example 5.3.9" %}}
Consider the sets 

\[
\begin{align*}
A &= \{1, 2\} \\
B &= \{a, b\} \\
C &= \{1, 2, 3\} \\
D &= \emptyset
\end{align*}
\]

Here, we see that while $A \subseteq C$, we have that $B \nsubseteq D$, 
meaning 

$$(A \subseteq C) \land (B \subseteq D) = 0$$

Computing $A \times B$ and $C \times D$ yields the following:

\[
\begin{align*}
A \times B &= \{1, 2\} \times \{a, b\} \\
&= \{(1, a), (1, b), (2, a), (2, b)\} \\ \\
C \times D &= \{1, 2, 3\} \times \emptyset \\
&= \emptyset
\end{align*}
\]

Thus we see that $(A \times B) \nsubseteq (C \times D)$, meaning 

$$(A \times B) \subseteq (C \times D) = 0$$

Since both propositions $(A \subseteq C) \land (B \subseteq D) = 0$ and 
$(A \times B) \subseteq (C \times D) = 0$ evaluated to false, Theorem 5.3.4 
seems to still hold true in this case as well. Again, we can use propositional 
logic to more closely examine the situation: 

\[
\begin{align*}
(A \times B) \subseteq (C \times D) \longleftrightarrow (A \subseteq C) \land (B \subseteq D) &= 0 \longleftrightarrow 0 \\
&= 1
\end{align*}
\]
{{% /notice %}}

In Example 5.3.8 and Example 5.3.9, we saw that only making one of four sets 
empty, the proposition 

$$(A \times B) \subseteq (C \times D) \longleftrightarrow (A \subseteq C) \land (B \subseteq D)$$

still evaluated to true. Let's examine one more example where more than one set is 
empty.

{{% notice style="example" title="Example 5.3.10" %}}
Consider the sets 

\[
\begin{align*}
A &= \{1, 2\} \\
B &= \emptyset \\
C &= \emptyset \\
D &= \{a, b\}
\end{align*}
\]

We can immediately see that $A \nsubseteq C$ and that $B \subseteq D$.

Computing $A \times B$ and $C \times D$ is easy since $B = D = \emptyset$:

\[
\begin{align*}
A \times B &= \{1, 2\} \times \emptyset \\
&= \emptyset \\ \\
C \times D &= \emptyset \times \{a, b\} \\
&= \emptyset
\end{align*}
\]

Of course we have that $\emptyset \subseteq \emptyset$.

Again, we can examine this more closely using propositional logic:

\[
\begin{align*}
(A \times B) \land (C \times D) \longleftrightarrow (A \subseteq C) \land (B \subseteq D) &= 1 \longleftrightarrow 0 \\
&= 0
\end{align*}
\]

So, having two empty sets is enough to make the proposition false, meaning we 
finally "broke" Theorem 5.3.4.
{{% /notice %}}

Theorem 5.3.4 requires all involved sets need to be non-empty. Even if some of 
the sets are empty, both $(A \times B) \land (C \times D)$ and 
$(A \subseteq C) \land (B \subseteq D)$ can evaluate to the same logical 
value, but Theorem 5.3.4 does not apply in those situations. Instead, other 
methods must be employed, such as verifying by hand.

{{% notice style="important" title="Experiment with Theorem Premises" %}}
Always pay careful attention to the premises of any theorem you are working 
with. If even one premise is not met, then the theorem does not apply. It's 
still possible that the conclusion of the theorem could be true, but not 
because of the theorem itself. Instead, other theorems, definitions, or axioms 
must be used to establish the conclusion's truth.

It's good practice to experiment and come up with scenarios where not all of 
the theorem's premises are true. Trying to "break" a theorem is a great way to 
understand why a theorem is true.
{{% /notice %}}


## $\times$ Distributes Over - and $\triangle$

There are two more operators to discuss. First, we'll look at how $\times$ 
interacts with set differences.

{{% notice style="theorem" title="Theorem 5.3.5" %}}
For any sets A, B, and C, we have that 

$$A \times (B - C) = (A \times B) - (A \times C)$$
{{% /notice %}}

{{% expand title="Proof 5.3.5" expanded=false %}}
_Gelneral Strategy: The proof is relatively straight-forward, relying mainly 
on the definitions of various set operators. The actual proof will be an 
element argument._

Let (a, x) be an arbitrarily picked element from $A \times (B - C)$.

\[
\begin{array}{ r l l }
& \mathbf{(a, x) \in A \times (B - C)} & \textbf{Reason} \\
\Longleftrightarrow & (a \in A) \land (x \in B) \land (x \notin C) & \textit{Definition of Cartesian Product} \\
\Longleftrightarrow & (a \in A) \land (a \in A) \land (x \in B) \land (x \notin C) & \textit{Idempotent Law of } \land \\
\Longleftrightarrow & (a \in A) \land (x \in B) \land (a \in A) \land (x \notin C) & \textit{Commutative Law of } \land \\
\Longleftrightarrow & \bigl[(a \in A) \land (x \in B)\bigr] \land \bigl[(a \in A) \land (x \notin C)\bigr] & \textit{Associative Law of } \land \\
\Longleftrightarrow & (a, x) \in (A \times B) \land (a, x) \notin (A \times C) & \textit{Definition of Cartesian Product}
\end{array}
\]

Showing that $(a, x) \in A \times (B - C) \Longleftrightarrow (a, x) \in (A \times B) - (A \times C)$ 
is of course equivalent to showing that 

\[
\begin{align*}
(a, x) \in A \times (B - C) &\implies (a, x) \in (A \times B) - (A \times C) \\
(a, x) \in (A \times B) - (A \times C) &\implies (a, x) \in A \times (B - C)
\end{align*}
\]

which (by definition of subset) means we have also shown that 

\[
\begin{align*}
A \times (B - C) &\subseteq (A \times B) - (A \times C) \\
(A \times B) - (A \times C) &\subseteq A \times (B - C)
\end{align*}
\]

This means that we have shown that 

$$A \times (B - C) = (A \times B) - (A \times C)$$

If we can't pick an arbitrary element from $A \times (B - C)$, then 
$A \times (B - C)$ would have to be empty, meaning either $A = \emptyset$ or 
$B - C = \emptyset$.

If $A = \emptyset$, then we would have that 

\[
\begin{align*}
(A \times B) - (A \times C) &= (\emptyset \times B) - (\emptyset \times C) \\
&= \emptyset - \emptyset \\
&= \emptyset \\
&= \emptyset \times (B - C) \\
&= A \times (B - C)
\end{align*}
\]

If $B - C = \emptyset$, then we would have that $B \subseteq C$. Furthermore, 
since $A \subseteq A$, Theorem 5.3.4 tells us that 
$(A \times B) \subseteq (A \times C)$, meaning we have that 

\[
\begin{align*}
(A \times B) - (A \times C) &= \emptyset \\
&= A \times \emptyset \\
&= A \times (B - C)
\end{align*}
\]

Whether $A \times (B - C)$ is empty or not, we see that we always get that 

$$A \times (B - C) = (A \times B) - (A \times C)$$

as desired.

---
{{% /expand %}}

We can use Theorem 5.3.5 to help us prove the next theorem.

{{% notice style="theorem" title="Theorem 5.3.6" %}}
For any sets A, B, C, we have that 

$$A \times (B\ \triangle\ C) = (A \times B)\ \triangle\ (A \times C)$$
{{% /notice %}}

{{% expand title="Proof 5.3.6" expanded=false %}}
_General Strategy: We'll use a bunch of previous theorems and definitions to 
directly establish equality. This will allow us to avoid having to use an 
element argument._

\[
\begin{array}{ r l l }
& A \times (B\ \triangle\ C) & \textbf{Reason} \\
= & A \times \bigl[ (B - C) \cup (C - B) \bigr] & \textit{Definition of Symmetric Difference} \\
= & \bigl[ A \times (B - C) \bigr] \cup \bigl[ A \times (C - B) \bigr] & \textit{Theorem 5.3.2} \\
= & \bigl[ (A \times B) - (A \times C) \bigr] \cup \bigl[ (A \times C) - (A \times B) \bigr] & \textit{Theorem 5.3.5} \\
= & (A \times B)\ \triangle\ (A \times C) & \textit{Definition of Symmetric Difference}
\end{array}
\]

Thus, we have just shown that 

$$A \times (B\ \triangle\ C) = (A \times B)\ \triangle\ (A \times C)$$

as desired.

---
{{% /expand %}}

Let's see some examples.

{{% notice style="example" title="Example 5.3.11" %}}
Consider the sets 

\[
\begin{align*}
A &= \{x, y, z\} \\
B &= \{1, 2, 3\} \\
C &= \{1, 4\} 
\end{align*}
\]

According to Theorem 5.3.5, we'd expect to see that 
$A \times (B - C) = (A \times B) - (A \times C)$, so let's verify that is the 
case.

First, we compute $A \times (B - C)$:

\[
\begin{align*}
A \times (B - C) &= \{x, y, z\} \times \bigl(\{1, 2, 3\} - \{1, 4\}\bigr) \\
&= \{x, y, z\} \times \{2, 3\} \\
&= \{(x, 2), (x, 3), (y, 2), (y, 3), (z, 2), (z, 3)\}
\end{align*}
\]

Next, we compute $(A \times B) - (A \times C)$. First, we compute 
$A \times B$. Next we compute $A \times C$.

\[
\begin{align*}
A \times B &= \{x, y, z\} \times \{1, 2, 3\} \\
&= \{(x, 1), (x, 2), (x, 3), (y, 1), (y, 2), (y, 3), (z, 1), (z, 2), (z, 3)\} \\ \\
A \times C &= \{x, y, z\} \times \{1, 4\} \\
&= \{(x, 1), (x, 4), (y, 1), (y, 4), (z, 1), (z, 4)\}
\end{align*}
\]

We can see that since $A \times B$ and $A \times C$ both contain the elements 
(x, 1), (y, 1), and (z, 1), those ordered pairs will not appear in the set 
difference:

\[
\begin{align*}
(A \times B) - (A \times C) &= (A \times B) \\
&= \{(x, 2), (x, 3), (y, 2), (y, 3), (z, 2), (z, 3)\} \\
&= A \times (B - C)
\end{align*}
\]

Thus we see that Theorem 5.3.5 holds.
{{% /notice %}}

{{% notice style="example" title="Example 5.3.12" %}}
Reconsider the sets from Example 5.3.11: 

\[
\begin{align*}
A &= \{x, y, z\} \\
B &= \{1, 2, 3\} \\
C &= \{1, 4\} 
\end{align*}
\]

Theorem 5.3.6 says that the two sets $A \times (B\ \triangle\ C)$ and 
$(A \times B)\ \triangle\ (A \times C)$ are equal. Let's verify that is the 
case by first computing $A \times (B\ \triangle\ C)$:

\[
\begin{align*}
A \times (B\ \triangle\ C) &= \{x, y, z\} \times \bigl(\{1, 2, 3\}\ \triangle\ \{1, 4\}\bigr) \\
&= \{x, y, z\} \times \{2, 3, 4\} \\
&= \{(x, 2), (x, 3), (x, 4), (y, 2), (y, 3), (y, 4), (z, 2), (z, 3), (z, 4)\}
\end{align*}
\]

Now we compute $(A \times B)\ \triangle\ (A \times C)$:

\[
\begin{align*}
A \times B &= \{x, y, z\} \times \{1, 2, 3\} \\
&= \{(x, 1), (x, 2), (x, 3), (y, 1), (y, 2), (y, 3), (z, 1), (z, 2), (z, 3)\} \\ \\
A \times C &= \{x, y, z\} \times \{1, 4\} \\
&= \{(x, 1), (x, 4), (y, 1), (y, 4), (z, 1), (z, 4)\} \\ \\
(A \times B)\ \triangle\ (A \times C) &= \{(x, 2), (x, 3), (x, 4), (y, 2), (y, 3), (y, 4), (z, 2), (z, 3), (z, 4)\} \\
&= A \times (B\ \triangle\ C)
\end{align*}
\]

And so it appears that Theorem 5.3.6 has come through. Of course, it looks 
like if we ever need to compute $(A \times B)\ \triangle\ (A \times C)$ for 
whatever reason, we can save a lot of work by computing 
$A \times (B\ \triangle\ C)$ instead.
{{% /notice %}}

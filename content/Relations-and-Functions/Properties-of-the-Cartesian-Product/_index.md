+++
date = '2024-12-20T16:23:38-05:00'
draft = true
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

{{% notice style="example" title="Example 4.3.1" %}}
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
---

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
---

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
Example 4.3.1. This deserves special emphasis.

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

{{% notice style="theorem" title="Theorem 4.3.1" %}}
For any arbitrary set A, we have that 

$$A \times \emptyset = \emptyset$$
$$\emptyset \times A = \emptyset$$
{{% /notice %}}

{{% expand expanded=false title="Proof 4.3.1" %}}
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

Hence, our presupposition that $A \times \emptyset$ is non-empty lead to a 
contradiction, meaning we must have that 

$$A \times \emptyset = \emptyset$$

as desired.

Showing that $\ \emptyset \times A = \emptyset$ is nearly identical.

---
{{% /expand %}}

## $\times$ Distributes Over $\cup$ and $\cap$

Here, we'll see some of the distributive properties of the Cartesian Product.

{{% notice style="theorem" title="Theorem 4.3.2" %}}
For arbitrary sets A, B, C, we have that 

\[
\begin{align*}
A \times (B \cup C) &= (A \times B) \cup (A \times C) \\
(A \cup B) \times C &= (A \times C) \cup (B \times C)
\end{align*}
\]
{{% /notice %}}

{{% expand expanded=false title="Proof 4.3.2" %}}
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

Let's see an example of Theorem 4.3.2 in action.

{{% notice style="example" title="Example 4.3.1" %}}
Consider the sets 

\[
\begin{align*}
A &= \{1, 2, 3\} \\
B &= \{a, b\} \\
C &= \{\alpha, \beta\}
\end{align*}
\]

According to Theorem 4.3.2, the two sets 

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

In Theorem 4.3.2, we mentioned that A, B, C can be any arbitrary sets. This 
means any of the sets could be the empty set.

{{% notice style="example" title="Example 4.3.2" %}}
Consider the sets 

\[
\begin{align*}
A &= \{1, 2, 3\} \\
B &= \emptyset = \{\ \} \\
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

According to Theorem 4.3.1, we have that $A \times \emptyset = \emptyset$. 
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

{{% notice style="theorem" title="Theorem 4.3.3" %}}
For any arbitrary sets A, B, C, we have that 

\[
\begin{align*}
A \times (B \cap C) &= (A \times B) \cap (A \times C) \\
(A \cap B) \times C &= (A \times C) \cap (B \times C)
\end{align*}
\]
{{% /notice %}}

{{% expand expanded=false title="Proof 4.3.3" %}}
_General Strategy: We'll adopt a similar strategy we used in the proof of 
Theorem 4.3.2, except we'll use logical equivalencies with 
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

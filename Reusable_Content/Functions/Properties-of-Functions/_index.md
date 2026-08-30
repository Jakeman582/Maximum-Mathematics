+++
date = '2025-03-31T02:16:45-04:00'
draft = false
title = 'Properties of Functions'
weight = 3
+++

In the last section, we talked about certain kinds of functions that have properties not had by other functions. Surjective functions have properties not shared with injective functions, and vice-versa. In this section, we swing back to talking about properties that all functions have, though the last property we talk about is a bit more refined when the underlying function is injective.

## Empty Inputs Produce Empty Outputs

One classic analogy mathematicians use to talk about functions is that of a machine. Simply put, a machine is a device that takes in some input, operates on that input, and produces an output. Like machines, a function takes in an input, and based on how the function is defined, produces an output.

The machine analogy provides some useful insight into how functions work. For example, what happens if *nothing* is put into a machine? We'd expect that with no input, the machine can't produce anything because if there is no input, then there is nothing for the machine to operate on.

The next theorem formalizes this idea to work with our more rigorous definition of function.

{{% notice style="theorem" title="Theorem 6.3.1" %}}
Let $f: A \rightarrow B$ be an arbitrary function.

Then we have that 

$$f(\emptyset) = \emptyset$$
{{% /notice %}}

{{% expand expanded=false title="Proof 6.3.1" %}}
*General Strategy: We'll use a proof by contradiction to show that if there is an image in $f(\emptyset)$, then the empty set would be non-empty!*

Presume - for the purpose of showing a contradiction - that $y \in B$ such that $y \in f(\emptyset)$.

\[
\begin{array}{ r l l }
& y \in f(\emptyset) & \textbf{Reason} \\
\Longleftrightarrow & \exists x\ [x \in \emptyset\ \land\ y = f(x)] & \text{Definition of Image} \\
\implies & \exists x\ [x \in \emptyset] & \text{Rule of Conjunctive Simplification} \\
\Rightarrow\Leftarrow & |\emptyset| = 0 & \text{Definition of Empty Set}
\end{array}
\]

Because the presupposition that $\exists y \in f(\emptyset)$ yields a contradiction, we must then have that 

$$\cancel{\exists} y \in f(\emptyset)$$

which is the same thing as saying 

$$f(\emptyset) = \emptyset$$

as desired.

---
{{% /expand %}}

We'll use this theorem in some of the upcoming examples.

## A Union of Subsets

Consider an arbitrary function $f: A \rightarrow B$, along with two subsets of the domain $A_1, A_2 \subseteq A$. Since $A_1$ and $A_2$ are subsets of the domain of $f$, we can consider their respective image sets $f(A_1)$ and $f(A_2)$.

Suppose that we first take the union $A_1 \cup A_2$, and then form the image set $f(A_1 \cup A_2)$. Is that the same thing as taking the union of the two image sets $f(A_1) \cup f(A_2)$?

{{% notice style="theorem" title="Theorem 6.3.2" %}}
Let $f: A \rightarrow B$ be an arbitrary function, with $A_1 \subseteq A$ and $A_2 \subseteq A$.

Then we have that 

$$f(A_1 \cup A_2) = f(A_1)\ \cup\ f(A_2)$$
{{% /notice %}}

{{% expand expanded=false title="Proof 6.3.1" %}}

*General Strategy: Here, we really just need to appeal to the definitions for image, and union. We'll use those definitions, as well as some logical equivalencies involving the Existential Quantifier, inside an element argument.*


Suppose we pick an arbitrary element $y$ from the image set $f(A_1 \cup A_2)$:

\[
\begin{array}{ r l l }
& y \in f(A_1 \cup A_2) & \textbf{Reason} \\
\Longleftrightarrow & \exists x \in (A_1 \cup A_2)\ [y = f(x)] & \text{Definition of Image} \\
\Longleftrightarrow & \exists x\ \bigl[\bigl(x \in A_1 \cup A_2\bigr) \land \bigl(y = f(x)\bigr)\bigr] & \exists x \in \mathcal{U}\ [p(x)] \Leftrightarrow \exists x\ [x \in \mathcal{U} \land p(x)] \\
\Longleftrightarrow & \exists x\ \bigl[\bigl(x \in A_1 \lor x \in A_2\bigr) \land \bigl(y = f(x)\bigr)\bigr] & \text{Definition of Union} \\
\Longleftrightarrow & \exists x\ \bigl[\bigl(x \in A_1 \land y = f(x)\bigr) \lor \bigl(x \in A_2 \land y = f(x)\bigr)\bigr] & \text{Distribution of } \land \text { over } \lor \\
\Longleftrightarrow & \bigl(\exists x\ [x \in A_1 \land y = f(x)]\bigr) \lor \bigl(\exists x\ [x \in A_2 \land y = f(x)]\bigr) & \text{Distribution of } \exists \text{ over } \lor \\
\Longleftrightarrow & \bigl(\exists x \in A_1\ [y = f(x)]\bigr) \lor \bigl(\exists x \in A_2\ [y = f(x)]\bigr) & \exists x \in \mathcal{U}\ [p(x)] \Leftrightarrow \exists x\ [x \in \mathcal{U} \land p(x)] \\
\Longleftrightarrow & \bigl(y \in f(A_1)\bigr) \lor \bigl(y \in f(A_2)\bigr) & \text{Definition of Image} \\
\Longleftrightarrow & y \in f(A_1) \cup f(A_2) & \text{Definition of Union}
\end{array}
\]

Since we've just shown that 

$$y \in f(A_1 \cup A_2) \Longleftrightarrow y \in f(A_1)\ \cup\ f(A_2)$$

we also have that 

$$f(A_1 \cup A_2) = f(A_1)\ \cup\ f(A_2)$$

as desired.

---
{{% /expand %}}

Let's look at a couple of examples of this theorem in action.

{{< notice style="example" title="Example 6.3.1" >}}
For the sets $A = \{1, 2, 3, 4, 5\}$ and $B = \{a, b, c, d, e\}$, consider the function $f_1: A \rightarrow B$ where 

\[
\begin{align*}
f(1) &= b \\
f(2) &= b \\
f(3) &= b \\
f(4) &= e \\
f(5) &= e 
\end{align*}
\]

depicted below as an arrow diagram:

{{< figure
    src="1.svg"
    alt="An arrow diagram for $f_1: A \rightarrow B$"
    caption="**Figure 6.3.1**"
>}}

Suppose we let

\[
\begin{align*}
A_1 &= \{1, 2, 3\} \\
A_2 &= \{3, 4, 5\}
\end{align*}
\]

We have that $A_1,A_2 \subseteq A$. Let's verify that $f(A_1 \cup A_2) = f(A_1) \cup f(A_2)$.

$$~$$

First, we calculate $f(A_1 \cup A_2)$. We start by calculating $A_1 \cup A_2$:

\[
\begin{align*}
A_1 \cup A_2 &= \{1, 2, 3\} \cup \{3, 4, 5\} \\
&= \{1, 2, 3, 4, 5\}
\end{align*}
\]

Now, we can calculate $f(A_1 \cup A_2)$:

\[
\begin{align*}
f(A_1 \cup A_2) &= f(\{1, 2, 3, 4, 5\}) \\
&= \{b, e\}
\end{align*}
\]

Second, we calculate $f(A_1)\ \cup\ f(A_2)$:

\[
\begin{align*}
f(A_1)\ \cup\ f(A_2) &= f(\{1, 2, 3\}) \cup f(\{3, 4, 5\}) \\
&= \{b\} \cup \{b, e\} \\
&= \{b, e\}
\end{align*}
\]

Thus, we have that 

$$f(A_1 \cup A_2) = f(A_1) \cup f(A_2) = \{b, e\}$$

as asserted by Theorem 6.3.1.
{{< /notice >}}

{{% notice style="example" title="Example 6.3.2" %}}
Consider the function $f_2: \{1, 2, 3, 4, 5\} \rightarrow \{a, b, c, d, e\}$ where 

\[
\begin{align*}
f_2(1) &= a \\
f_2(2) &= b \\
f_2(3) &= d \\
f_2(4) &= c \\
f_2(5) &= b
\end{align*}
\]

Suppose we wanted to calculate $f_2(\{1, 3\})\ \cup\ f_2(\{4\})$. We know that $\{1, 3\} \subseteq \text{Dom}(f_2)$ and $\{4\} \subseteq \text{Dom}(f_2)$. Thus, we can use Theorem 6.3.1 to simplify our work a little bit:

\[
\begin{align*}
f_2(\{1, 3\})\ \cup\ f_2(\{4\}) &= f_2(\{1, 3\} \cup \{4\}) \\
&= f_2(\{1, 3, 4\}) \\ 
&= \{a, c, d\}
\end{align*}
\]
{{% /notice %}}

## An Intersection of Subsets

We may expect we have a similar result when considering the intersection $A_1 \cap A_2$, but there is a slight hiccup.

{{% notice style="theorem" title="Theorem 6.3.3" %}}
Let $f: A \rightarrow B$ be an arbitrary function with $A_1,A_2 \subseteq A$.

Then we have that 

$$f(A_1 \cap A_2) \subseteq f(A_1)\ \cap\ f(A_2)$$
{{% /notice %}}

{{% expand expanded=false title="Proof 6.3.2" %}}
*General Strategy: Here, we'll use another element argument similar to the one used in Proof 6.3.1. Of course, we'll appeal to the definition of intersection instead of union.*

Let $y$ be an arbitrarily picked element in $f(A_1 \cap A_2)$.

\[
\begin{array}{ r l l }
& y \in f(A_1 \cap A_2) & \textbf{Reason} \\
\Longleftrightarrow & \exists x \in (A_1 \cap A_2)\ [y = f(x)] & \text{Definition of Image} \\
\Longleftrightarrow & \exists x\ \bigl[\bigl(x \in (A_1 \cap A_2)\bigr) \land \bigl(y = f(x)\bigr)\bigr] & \exists x \in \mathcal{U}\ [p(x)] \Leftrightarrow \exists x\ [x \in \mathcal{U} \land p(x)] \\
\Longleftrightarrow & \exists x\ \bigl[(x \in A_1) \land (x \in A_2) \land (y = f(x))\bigr] & \text{Definition of Intersection} \\
\Longleftrightarrow & \exists x\ \bigl[(x \in A_1) \land (x \in A_2) \land (y = f(x)) \land (y = f(x))\bigr] & \text{Idempotent Law of } \land \\
\Longleftrightarrow & \exists x\ \bigl[(x \in A_1) \land (y = f(x)) \land (x \in A_2) \land (y = f(x))\bigr] & \text{Commutative Law of } \land \\
\implies & \exists x\ \bigl[(x \in A_1) \land (y = f(x))\bigr] \land \exists x\ \bigl[(x \in A_2) \land (y = f(x))\bigr] & \text{One-sided Distribution of } \exists \text{ over } \land \\
\Longleftrightarrow & \exists x \in A_1\ \bigl[y = f(x)\bigr] \land \exists x \in A_2\ \bigl[y = f(x)\bigr] & \exists x \in \mathcal{U}\ [p(x)] \Leftrightarrow \exists x\ [x \in \mathcal{U} \land p(x)] \\
\Longleftrightarrow & \bigl[y \in f(A_1)\bigr] \land \bigl[y \in f(A_2)\bigr] & \text{Definition of Image} \\
\Longleftrightarrow & y \in A_1 \cap A_2 & \text{Definition of Intersection}
\end{array}
\]

Note the use of the single-sided logical implication $\implies$ instead of the double-sided logical equivalence $\Longleftrightarrow$ in the seventh row of the above sequence of steps. Because that single step required a logical implication, and not a logical equivalency, what we've shown is that 

$$y \in f(A_1 \cap A_2) \implies y \in A_1 \cap A_2$$

which means we've shown that 

$$f(A_1 \cap A_2) \subseteq f(A_1) \cap f(A_2)$$

as desired.

---
{{% /expand %}}

Proof 6.3.2 required a logical implication because of the way the Existential Quantifier distributes over the conjunction operator $\land$. This is why Theorem 6.3.2 uses subset $\subseteq$ instead of equality $=$.

The logic used was abstract, but we can look at some concrete examples to drive the point home.

{{< notice style="example" title="Example 6.3.3" >}}
Consider the function $g_1: \{1, 2, 3, 4, 5\} \rightarrow \{a, b, c, d, e\}$ depicted below:

{{< figure
    src="2.svg"
    alt="A case where the intersection results in a proper subset."
    caption="**Figure 6.3.2**"
>}}

Let's consider the subsets $A_1 = \{1, 2\}$ and $A_2 = \{3, 4, 5\}$. We see that $A_1 \cap A_2 = \emptyset$; as such, 

$$g_1(A_1 \cap A_2) = g_1(\emptyset) = \emptyset$$

Now we compute $g_1(A_1) \cap g_1(A_2)$:

$$g_1(A_1) \cap g_1(A_2) = \{b, c\} \cap \{c, d, e\} = \{c\}$$

In this case, since $g_1(A_1 \cap A_2) = \emptyset$ and $g_1(A_1) \cap g_1(A_2) = \{c\}$, we have a proper subset relationship:

$$g_1(A_1 \cap A_2) \subset g_1(A_1)\ \cap\ g_1(A_2)$$
{{< /notice >}}

{{< notice style="example" title="Example 6.3.4" >}}
Consider the function $g_2: \{1, 2, 3, 4, 5\} \rightarrow \{a, b, c, d, e\}$ shown below:

{{< figure
    src="3.svg"
    alt="A case where the intersection yields set equality."
    caption="**Figure 6.3.3**"
>}}

Letting $A_1 = \{1, 2\}$ and $A_2 = \{4, 5\}$, we get the following:

\[
\begin{align*}
g_2(A_1 \cap A_2) &= g_2(\emptyset) \\
&= \emptyset\ \\
&= \{a\} \cap \{d, e\} \\
&= g_2(A_1)\ \cap\ g_2(A_2)
\end{align*}
\]

Here, we have set equality: $g_2(A_1 \cap A_2) = g_2(A_1)\ \cap\ g_2(A_2)$.
{{< /notice >}}

The previous examples relied on splitting up a function's domain into disjoint subsets. This is an easy way to demonstrate the validity of Theorem 6.3.2 because the mpty set is a subset of every set. Because the empty set was present in both of the previous examples, we were also able to use Theorem 6.3.1 in our calculations as well.

The next few examples will not split up the function's domain into disjoint subsets.

{{< notice style="example" title="Example 6.3.5" >}}
Consider the function $g_3: \{1, 2, 3, 4, 5\} \rightarrow \{a, b, c, d, e\}$ pictured below:

{{< figure
    src="4.svg"
    alt="Another demonstration of Theorem 6.3.2."
    caption="**Figure 6.3.4**"
>}}

Using this function, we see that 

\[
\begin{align*}
g_3(\{1, 2, 3\} \cap \{3, 4, 5\}) &= g_3(\{3\}) \\
&= \{e\} \\
&\subset \{c, e\} \\
&= \{a, c, e\} \cap \{c, d, e\} \\
&= g_3(\{1, 2, 3\})\ \cap\ g_3(\{3, 4, 5\})
\end{align*}
\]

So here, we have a proper subset: $g_3(\{1, 2, 3\} \cap \{3, 4, 5\}) \subset g_3(\{1, 2, 3\})\ \cap\ g_3(\{3, 4, 5\})$.
{{< /notice >}}

{{< notice style="example" title="Example 6.3.6" >}}
Consider the function $g_4: \{1, 2, 3, 4, 5\} \rightarrow \{a, b, c, d, e, f\}$ depicted below:

{{< figure
    src="5.svg"
    alt="This function is injective."
    caption="**Figure 6.3.5**"
>}}

We consider the subsets $\{1, 2, 3\}$ and $\{3, 4, 5\}$ of the domain again, and proceed as usual:

\[
\begin{align*}
g_4(\{1, 2, 3\} \cap \{3, 4, 5\}) &= g_4(\{3\}) \\
&= \{b\} \\
&= \{a, b, c\} \cap \{b, d, e\} \\
&= g_4(\{1, 2, 3\}) \cap g_4(3, 4, 5)
\end{align*}
\]

This time, we have set equality: $g_4(\{1, 2, 3\} \cap \{3, 4, 5\}) = g_4(\{1, 2, 3\}) \cap g_4(3, 4, 5)$.
{{< /notice >}}

Examples 6.3.3 and 6.3.4 showed functions that were neither injective nor surjective. Even though both domains were split up into disjoint sets, Example 6.3.3 yielded a proper subset while Example 6.3.4 yielded two equal sets. This means that splitting up the domain of a function $f$ into disjoint subsets is not enough to guarantee that $f(A_1 \cap A_2) = f(A_1) \cap f(A_2)$.

The function in Example 6.3.5 was also neither injective nor surjective, and its domain was split up into two subsets that shared an element. Still, we got that $g_3(A_1 \cap A_2) \subset g_3(A_1)\ \cap\ g_3(A_2)$.

Now consider the function in Example 6.3.6. That function was injective, but not surjective, and when we split up the domain, we did get equal subsets $g_4(A_1 \cap A_2) = g_4(A_1)\ \cap\ g_4(A_2)$.

## Subsets of an Injective Function's Domain

For two sets $A, B$, the set $A \cap B$ depends on what elements are shared between $A$ and $B$. As such, it stands to reason that in order to guarantee that $f(A_1 \cap A_2) = f(A_1) \cap f(A_2)$, we need to focus on what elements are shared between image sets. This is addressed by determining if a function is injective.

As was shown in Example 6.3.6, $f: A \rightarrow B$ being injective may be enough to guarantee that $f(A_1 \cap A_2) = f(A_1) \cap f(A_2)$.

However, Example 6.3.4 shows that just because $f(A_1 \cap A_2) = f(A_1) \cap f(A_2)$, that does not tell us if $f: A \rightarrow B$ is injective.

This pair of observations yields the following theorem:

{{% notice style="theorem" title="Theorem 6.3.4" %}}
Let $f: A \rightarrow B$ be an injective, but otherwise arbitrary, function with $A_1,A_2 \subseteq A$.

Then we have that 

$$f(A_1 \cap A_2) = f(A_1) \cap f(A_2)$$
{{% /notice %}}

{{% expand expanded=false title="Proof 6.3.3" %}}
*General Strategy: We'll proceed in the same way as we did in Proof 6.3.2. This time, we'll use the fact that $f$ is injective instead of the one-sided distribution of the Existential Quantifier. This will let us use logical equivalence instead of logical implication.*

Let $y$ be an arbitrarily picked element in $f(A_1)\ \cap\ f(A_2)$.

\[
\begin{array}{ r l l }
& y \in f(A_1)\ \cap\ f(A_2) & \textbf{Reason} \\
\Longleftrightarrow & \bigl[y \in f(A_1)\bigr]\ \land\ \bigl[y \in f(A_2)\bigr] & \text{Definition of Intersection} \\
\Longleftrightarrow & \exists x_1,x_2\ \bigl[x_1 \in A_1\ \land\ y = f(x_1)\ \land\ x_2 \in A_2\ \land\ y = f(x_2)\bigr] & \text{Definition of Image} \\
\Longleftrightarrow & \exists x_1\ \bigl[x_1 \in A_1\ \land\ y = f(x_1)\ \land\ x_1 \in A_2\ \land\ y = f(x_1)\bigr] & x_1 = x_2 \text{ since } f(x_1) = f(x_2) \text{ and } f \text{ is Injective} \\
\Longleftrightarrow & \exists x_1\ \bigl[x_1 \in A_1\ \land\ x_1 \in A_2\ \land\ y = f(x_1)\ \land\ y = f(x_1)\bigr] & \text{Commutative Law of } \land \\
\Longleftrightarrow & \exists x_1\ \bigl[x_1 \in A_1\ \land\ x_1 \in A_2\ \land\ y = f(x_1)\ \bigr] & \text{Idempotent Law of } \land \\
\Longleftrightarrow & \exists x_1\ \bigl[x_1 \in A_1 \cap A_2\ \land\ y = f(x_1)\ \bigr] & \text{Definition of Intersection} \\
\Longleftrightarrow & y \in f(A_1 \cap A_2) & \text{Definition of Image}
\end{array}
\]

We've just shown that 

$$y \in f(A_1 \cap A_2) \Longleftrightarrow y \in A_1 \cap A_2$$

which means we've shown that 

$$f(A_1 \cap A_2) = f(A_1) \cap f(A_2)$$

as desired.

---
{{% /expand %}}

Theorem 6.3.4 is useful for calculating certain sets that come from intersections of image sets because we have equality. With Theorem 6.3.3, we don't have equality, but a sort of "upper bound" on what the result could be because without an injective function, all we have is a subset relationship.

{{< notice style="example" title="Example 6.3.7" >}}
Consider the function $h: \{1, 2, 3, 4, 5\} \rightarrow \{a, b, c, d, e, f\}$ depicted below:

{{< figure
    src="6.svg"
    alt="Another injective, but not surjective, function."
    caption="**Figure 6.3.6**"
>}}

Suppose we wanted to calculate $h(\{1, 4, 5\})\ \cap\ h(\{2, 3, 5\})$. We see that $\{1, 4, 5\} \subseteq \text{Dom}(h)$ and $\{2, 3, 5\} \subseteq \text{Dom}(h)$, and that $h$ is injective. This means we can apply Theorem 6.3.3 to simplify our calculation:

\[
\begin{align*}
h(\{1, 4, 5\})\ \cap\ h(\{2, 3, 5\}) &= h(\{1, 4, 5\} \cap \{2, 3, 5\}) \\
&= h(\{5\}) \\
&= \{c\}
\end{align*}
\]
{{< /notice >}}


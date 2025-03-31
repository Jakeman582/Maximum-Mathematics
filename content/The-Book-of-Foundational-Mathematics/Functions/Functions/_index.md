+++
date = '2025-01-25T21:39:58-05:00'
draft = false
title = 'Functions'
weight = 1
+++

In this chapter's introduction, we mentioned that a function is a specific kind of relation, which means there are additional requirements for a relation to be a function that extend beyond simply being a subset of some cross product $A \times B$. Before we give the definition, let's look at some relations that behave differently from one another to get a more intuitive sense of what we're looking for in a function.

## Three Examples
{{< notice style="example" title="Example 6.1.1" >}}
Consider the relation $\mathcal{R}_1 \subseteq \{1, 2, 3, 4\} \times \{a, b, c, d\}$ where 

$$\mathcal{R}_1 = \{(2, d), (3, b), (4, b)\}$$

{{< figure
    src="1.svg"
    caption="**Figure 6.1.1**"
>}}

Notice that elements $2, 3, 4$ are related to elements from $\{a, b, c, d\}$, but what about the element $1$? Even though $\mathcal{R}_1$ is a legitimate relation, we may want to have a way to relate <i>all</i> elements in $\{1, 2, 3, 4\}$.
{{< /notice >}}

{{< notice style="example" title="Example 6.1.2" >}}
Consider the relation $\mathcal{R}_2 \subseteq \{1, 2, 3, 4\} \times \{a, b, c, d\}$ where 

$$\mathcal{R}_2 = \{(1, d), (2, c), (2, a), (3, b), (4, a)\}$$

{{< figure
    src="2.svg"
    caption="**Figure 6.1.2**"
>}}

Here, we have related every element in $\{1, 2, 3, 4\}$ to at least one element in $\{a, b, c, d\}$. However, the element $2$ is related to two different elements: $a, c$. Again, this is a valid relation, but perhaps we want to limit how many elements can be related to some given element.

$$~$$

For example, suppose we needed to pick an element related to $2$. How would we choose between $a$ and $c$? It's ambiguous unless we have some heuristic to settle the matter. However, if $2$ was only related to one element, then the choice is automatic and not ambiguous.
{{< /notice >}}

{{< notice style="example" title="Example 6.1.3" >}}
Consider the relation $\mathcal{R}_3 \subseteq \{1, 2, 3, 4\} \times \{a, b, c, d\}$ where 

$$\mathcal{R}_3 = \{(1, a), (2, c), (3, d), (4, c)\}$$

{{< figure
    src="3.svg"
    caption="**Figure 6.1.3**"
>}}

Here, every element in $\{1, 2, 3, 4\}$ is related to some element in $\{a, b, c, d\}$, and each element in $\{1, 2, 3, 4\}$ is related to exactly one element in $\{a, b, c, d\}$. This avoids the problems that $\mathcal{R}_1$ and $\mathcal{R}_2$ have in Example 6.1.1 and Example 6.1.2 above.
{{< /notice >}}

## Defining What a Function Is

We define functions in a way to avoid all of the shortcomings present in the relations defined in Example 6.1.1 and Example 6.1.2. Before we give the definition though, we introduce one more quantifier.

Remember that quantifiers are used in conjunction with propositions that have variables. In addition to the Universal Quantifier and the Existential Quantifier, we also have the *Uniqueness Quantifier*, which we denote using the notation $\exists!$, which is just the Existential Quantifier with an exclamation mark tacked on. The Uniqueness Quantifier is used to specify that a given proposition is true for exactly one element $x$ from the underlying universe $\mathcal{U}$. We write this as 

$$\exists! x \in \mathcal{U}\ [p(x)]$$

{{% notice style="example" title="Example 6.1.4" %}}
Reconsider the relation $\mathcal{R}_3$ from Example 6.1.3. We have that

$$\exists!\ x \in \{1, 2, 3, 4\}\ [x\ \mathcal{R}_3\ a] = 1$$

because there is a value of $x$ (namely $1$) such that $(x, a) \in \mathcal{R}_3$, and that value is the *only* value of $x$ such that $(x, a) \in \mathcal{R}_3$. This is because $2\ \mathcal{R}_3\ c, 3\ \mathcal{R}_3\ d, 4\ \mathcal{R}_3\ c$.

Similarly, we have that 

$$\exists!\ x \in \{1, 2, 3, 4\}\ [x\ \mathcal{R}_3\ d] = 1$$

because only one element in $\{1, 2, 3, 4\}$ is related to $d$.

However, note that 

$$\exists!\ x \in \{1, 2, 3, 4\}\ [x\ \mathcal{R}_3\ c] = 0$$

because there is *more than one* element in \{1, 2, 3, 4\} that is related to $c$. Those values are $2, 4$.

Furthermore, we also have that 


$$\exists!\ x \in \{1, 2, 3, 4\}\ [x\ \mathcal{R}_3\ b] = 0$$

because no element is related to $b$.
{{% /notice %}}

Now we formally state the definition of function:

{{% notice style="definition" title="Function, Mapping" %}}
Let $A$ and $B$ be arbitrary sets, and let $f$ be an arbitrary relation defined on $A \times B$. $f$ is called a **function** (also sometimes a **mapping**) from $A$ to $B$, and we write 

$$f: A \rightarrow B$$

if (and only if) every element in $A$ is related to exactly one element in $B$ under $f$. Logically, we write 

$$\forall a \in A\ \exists! b \in B\ [(a, b) \in f]$$
{{% /notice %}}

Notice that the definition applies with arbitrary sets. Both $A, B$ could be the Empty set, in which case  we'd have $f: \emptyset \rightarrow \emptyset$, which is commonly called the *empty function*. If only one of $A, B$ were the empty set, then the only function possible would be the empty function (as a matter of fact, the only relation that could be defined would be the empty relation).

{{% notice style="example" title="Example 6.1.5" %}}
Reconsider the sets $A = \{1, 2, 3, 4\}$ and $B = \{a, b, c, d\}$ from the previous examples.

### a.) $\mathcal{R}_1 = \{(2, d), (3, b), (4, b)\}$

The definition of function says that every element in $\{1, 2, 3, 4\}$ must be related to exactly one element in $\{a, b, c, d\}$. We need to examine the proposition $\exists!y \in B\ [(x, y) \in \mathcal{R}_1]$ for each $x \in A$. We'll tabulate our results in the following list:

1. $\exists!y \in B\ [(1, y) \in \mathcal{R}_1] = 0\ $ ($1$ is not related to any element in $\{a, b, c, d\}$)
2. $\exists!y \in B\ [(2, y) \in \mathcal{R}_1] = 1$
3. $\exists!y \in B\ [(3, y) \in \mathcal{R}_1] = 1$
4. $\exists!y \in B\ [(4, y) \in \mathcal{R}_1] = 1$

One of the above propositions evaluated to 0, meaning not all elements in $\{1, 2, 3, 4\}$ are related to exactly one element from $\{a, b, c, d\}$. Hence, $\mathcal{R}_1$ is not a function.

### b.) $\mathcal{R}_2 = \{(1, d), (2, c), (2, a), (3, b), (4, a)\}$

We can tabulate the propositions to check in another list:

1. $\exists!y \in B\ [(1, y) \in \mathcal{R}_2] = 1$
2. $\exists!y \in B\ [(2, y) \in \mathcal{R}_2] = 0\ $ ($2$ is related to more than one element in $\{a, b, c, d\}$)
3. $\exists!y \in B\ [(3, y) \in \mathcal{R}_2] = 1$
4. $\exists!y \in B\ [(4, y) \in \mathcal{R}_2] = 1$

Again, one of the above propositions evaluated to false, so $\mathcal{R}_2$ is not a function.

### c.) $\mathcal{R}_3 = \{(1, a), (2, c), (3, d), (4, c)\}$

Let's check all the necessary propositions:

1. $\exists!y \in B\ [(1, y) \in \mathcal{R}_3] = 1$
2. $\exists!y \in B\ [(2, y) \in \mathcal{R}_3] = 1$
3. $\exists!y \in B\ [(3, y) \in \mathcal{R}_3] = 1$
4. $\exists!y \in B\ [(4, y) \in \mathcal{R}_3] = 1$

Since the proposition $\exists!y \in B\ [(x, y) \in \mathcal{R}_3]$ was true for all $x \in \{1, 2, 3, 4\}$, we have that 

$$\forall x \in A\ \exists! y \in B\ [(x, y) \in \mathcal{R}_3] = 1$$

meaning $\mathcal{R}_3$ is a function.
{{% /notice %}}

Because functions are special types of relations, all of the normal notations we used for relations also apply to functions. For example, for some arbitrary function $f: A \rightarrow B$, if $a \in A$ is related to $b \in B$ under $f$, we can write $(a, b) \in f$, and $a\ f\ b$.

When it comes to functions specifically, we introduce a new notation to signal that element $a \in A$ is related to element $b \in B$:

$$f(a) = b$$

This notation is very common, and will be adopted in this book henceforth.

We also introduce new terminology to refer to $a$ and $b$ which will come in handy from time to time:

{{% notice style="definition" title="Image, Preimage" %}}
Let $f: A \rightarrow B$ be an arbitrary function with $a \in A$ and $b \in B$ where $f(a) = b$.

The element $b$ is called the **image** of element $a$ *under $f$*. The element $a$ is the **preimage** of element $b$ *under $f$*.
{{% /notice %}}

We also have a few terms to describe the sets over which functions are defined.

{{% notice style="definition" title="Domain, Codomain, Range" %}}
Let $f: A \rightarrow B$ be an arbitrary function.

The set $A$ is referred to as the **domain** of $f$ and is often written as $\text{Dom}(f)$.

The set $B$ is referred to as the **codomain** of $f$ and is often written as $\text{Cod}(f)$.

The subset of $B$ consisting of all the images from the elements of $A$ under $f$ is called the **range** of $f$ and is written as $\text{Rng}(f)$.
{{% /notice %}}

{{% notice style="example" title="Example 6.1.6" %}}
Consider the function $f: \{1, 2, 3, 4\} \rightarrow \{a, b, c, d\}$ where 

\[
\begin{align*}
f(1) &= c \\
f(2) &= b \\
f(3) &= d \\
f(4) &= a
\end{align*}
\]

The image of $1$ under $f$ is the element $c$. The preimage of element $a$ under $f$ is the element $4$.

We can also see that 

\[
\begin{align*}
\text{Dom}(f) &= \{1, 2, 3, 4\} \\
\text{Cod}(f) &= \{a, b, c, d\} \\
\end{align*}
\]

Finally, we observe that every element in $B$ is an image under $f$, meaning we have 

$$\text{Rng}(f) = \{a, b, c, d\} = B$$
{{% /notice %}}

{{% notice style="example" title="Example 6.1.7" %}}
Reconsider the relation $\mathcal{R}_3 \subseteq \{1, 2, 3, 4\} \times \{a, b, c, d\}$ from Example 6.1.3 where 

$$\mathcal{R}_3 = \{(1, a), (2, c), (3, d), (4, c)\}$$

Since $\mathcal{R}_3$ is a function, we'll use a lowercase letter to refer to it. This time, we'll use the letter $g$ just for the sake of variety:

\[
\begin{align*}
g(1) &= a \\
g(2) &= c \\
g(3) &= d \\
g(4) &= c
\end{align*}
\]

Here, we see that $d$ is the image of $3$ under $g$, and that $1$ is the preimage of $a$ under $g$.

We see that we have the same domain and codomain as function $f$ from Example 6.1.6:

\[
\begin{align*}
\text{Dom}(g) &= \{1, 2, 3, 4\} \\
\text{Cod}(g) &= \{a, b, c, d\}
\end{align*}
\]

This time however, the element $b$ is not the image of some element in $\{1, 2, 3, 4\}$ under $g$. Thus we have that 

$$\text{Rng}(g) = \{a, c, d\} \subset \{a, b, c, d\} = B$$
{{% /notice %}}

If we were only interested in the images of some particular subset of a function's domain, we could collect them in their own set.

{{% notice style="definition" title="Image Set" %}}
Let $f: A \rightarrow B$ be an arbitrary function, and let $A_1 \subseteq A$.

The set 

$$f(A_1) = \{f(a)\ |\ a \in A_1\}$$

is called the **image set** of $A_1$ *under $f$*.
{{% /notice %}}

Based on the definitions given, we see that the range of a function is equal to the image set of that function's domain; in other words, 

$$\text{Rng}(f) = f(\text{Dom}(f))$$

{{% notice style="example" title="Example 6.1.8" %}}
Consider the function $f: \{1, 2, 3, 4\} \rightarrow \{a, b, c, d\}$ where 

\[
\begin{align*}
f(1) &= b \\
f(2) &= d \\
f(3) &= a \\
f(4) &= c
\end{align*}
\]

The image set of \{1, 3\} would be 

$$f(\{1, 3\}) = \{b, a\}$$
{{% /notice %}}

## Subsets and Supersets of a Function's Domain

Notice that a function is defined based in part on it's domain. This means we can easily make new functions by simply taking subsets and supersets of the original function's domain.

{{% notice style="definition" title="Restriction" %}}
Let $f: A \rightarrow B$ be an arbitrary function, and let $A_1 \subseteq A$.

The function $f|_{A_1}: A_1 \rightarrow B$ is called the **restriction** of $f$ to $A_1$ if (and only if) 

$$\forall a \in A_1\ [f|_{A_1}(a) = f(a)]$$
{{% /notice %}}

{{% notice style="definition" title="Extension" %}}
Let $f: A_1 \rightarrow B$ be an arbitrary function, and let $A_1 \subseteq A$.

The function $g: A \rightarrow B$ is called the **extension** of $f$ to $A$ if (and only if) 

$$\forall a \in A_1\ [g(a) = f(a)]$$
{{% /notice %}}

Essentially, a restriction of a function is simply a new function defined on a subset of the original function's domain while keeping the original function intact within the new function. Extensions are simply new functions defined on a superset of the original function's domain.

{{% notice style="example" title="Example 6.1.9" %}}
Consider the function $f: \{1, 2, 3, 4\} \rightarrow \{a, b, c, d\}$ where 

\[
\begin{align*}
f(1) &= b \\
f(2) &= a \\
f(3) &= d \\
f(4) &= c
\end{align*}
\]

One restriction we could define from $f$ is on the subset $\{1, 3, 4\}$, which we'll call $g$:

\[
\begin{align*}
g(1) &= b \\
g(3) &= d \\
g(4) &= c
\end{align*}
\]

One extension we could define on $f$, which we'll call $h$, will have domain $\{1, 2, 3, 4, 5\}$:

\[
\begin{align*}
h(1) &= b \\
h(2) &= a \\
h(3) &= d \\
h(4) &= c \\
h(5) &= d
\end{align*}
\]
{{% /notice %}}
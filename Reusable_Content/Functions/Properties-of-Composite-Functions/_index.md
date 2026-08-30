+++
date = '2025-12-16T00:09:50-05:00'
draft = false
title = 'Properties of Composite Functions'
weight = 6
+++

Composite functions are still functions, meaning we can ask some of the same questions we can ask about "normal" functions: does order matter (commutativity), does regrouping matter (associativity), and what happens to injectivity and surjectivity when functions are chained together? In this section we explore when a composite might share these properties - or fail to - based on the functions we compose.

## Commutativity

Start with two functions $f: A \to B$ and $g: B \to C$. The composite $g \circ f$ is immediately valid because the outputs of $f$ live in $B$, exactly the inputs $g$ expects. If we reverse the order, though, $f \circ g$ would require outputs of $g$ (in $C$) to be valid inputs for $f$ (in $A$). Because $A$ and $C$ are generally different sets, that reversed composite is often not even defined. Composition is therefore not generally commutative: some functions can be safely composed in either order, but care must be taken to check that each composition actually makes sense.

## Associativity

Consider chaining three functions

\[
\begin{align*}
f &: \text{A} \to \text{B} \\
g &: \text{B} \to \text{C} \\ 
h &: \text{C} \to \text{D}
\end{align*}
\]

 Any input $a \in A$ first travels through $f$, then $g$, then $h$, regardless of how we parenthesize the chain. Since each step is a function (no ambiguity, one output for each input), we should expect that regrouping the parentheses does not change the final output after all three have been applied.

Let's look at an example.

{{< notice style="example" title="Example 6.6.1" >}}
Consider the following four sets:

\[
\begin{array}{ l l }
\text{A} = \{d, h, p, s, w\} & \text{B} = \{a, e, i, o, u\} \\
\text{C} = \{c, l, n, r, t\} & \text{D} = \{d, g, k, n, p\}
\end{array}
\]

along with the following three functions defined on those sets:

\[
\begin{align*}
f &: \text{A} \to \text{B} \\
g &: \text{B} \to \text{C} \\
h &: \text{C} \to \text{D}
\end{align*}
\]

The functions are defined according to the arrow diagram below:

{{< figure
    src="1.svg"
    caption="**Figure 6.6.1**"
    alt="Defining three functions on four sets."
>}}

Based on these definitions, we see that, ultimately, 

\[
\begin{align*}
&d \overset{f}{\to} a \overset{g}{\to} r \overset{h}{\to} k \\
&h \overset{f}{\to} e \overset{g}{\to} l \overset{h}{\to} p \\
&p \overset{f}{\to} a \overset{g}{\to} r \overset{h}{\to} k \\
&s \overset{f}{\to} o \overset{g}{\to} n \overset{h}{\to} g \\
&w \overset{f}{\to} i \overset{g}{\to} c \overset{h}{\to} k
\end{align*}
\]

Because the sets $\text{B}$ and $\text{C}$ are shared between functions $f$, $g$, and $h$, we can form their composition: $[h \circ g \circ f]$.

We would like to condense the functions shown above into a single function composition. There are two ways we could proceed:
\[
\begin{align*}
[(h \circ g) \circ f] \\
[h \circ (g \circ f)]
\end{align*}
\]

The following image shows what happens when we first compose $h$ and $g$, and then compose the result with $f$:

{{< figure
    src="2.svg"
    caption="**Figure 6.6.2**"
    alt="This arrow diagram shows the results of functions g and h being composed."
>}}

Combining the composed function depicted in Figure 6.6.2 with $f$ yields the following:

{{< figure
    src="3.svg"
    caption="**Figure 6.6.3**"
    alt="This arrow diagram shows the results of composing h and g first, then composing with f."
>}}

We get the same result we got when we just looked at the three arrow diagrams in sequence:

\[
\begin{align*}
&[(h \circ g) \circ f](d) = k \\
&[(h \circ g) \circ f](h) = p \\
&[(h \circ g) \circ f](p) = k \\
&[(h \circ g) \circ f](s) = g \\
&[(h \circ g) \circ f](w) = k \\
\end{align*}
\]

We could compose $f$ and $g$ first, which yields a result depicted in the following image:

{{< figure
    src="4.svg"
    caption="**Figure 6.6.4**"
    alt="This arrow diagram shows funcions f and g, as well as their composition."
>}}
{{< /notice >}}

## Injective and Surjective Functions

- **Injective:** If $f: A \to B$ and $g: B \to C$ are both injective, then their composite $g \circ f$ is injective. Proof idea: if $(g \circ f)(a_1) = (g \circ f)(a_2)$, injectivity of $g$ forces $f(a_1) = f(a_2)$, and injectivity of $f$ then forces $a_1 = a_2$. If only one function is injective, the composite can fail to be one-to-one.

- **Surjective:** If $f: A \to B$ and $g: B \to C$ are both surjective, then $g \circ f$ is surjective. Every $c \in C$ is hit by some $b \in B$ with $g(b) = c$, and that $b$ is hit by some $a \in A$ with $f(a) = b$, so $(g \circ f)(a) = c$. If either $f$ or $g$ misses outputs, the composite will miss them too.

- **Bijective:** If $f$ and $g$ are bijections, then $g \circ f$ is also bijective, and its inverse satisfies $(g \circ f)^{-1} = f^{-1} \circ g^{-1}$.

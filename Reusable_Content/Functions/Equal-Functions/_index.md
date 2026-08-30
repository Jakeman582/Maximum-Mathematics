+++
date = '2025-04-06T02:51:54-04:00'
draft = false
title = 'Equal Functions'
weight = 4
+++

We've previously discussed when two sets are considered equal, and when two ordered pairs are equal. We then extended the idea of set equality to see when two Cartesian products were considered equal (because Cartesian products are simply sets of ordered pairs).

However, we have not yet discussed when two relations are equal. As we saw in Section 5.6 Characterizing Relations, the sets on which a relation is defined can drastically alter that relation's properties. A relation $\mathcal{R}$ may be reflexive on $A^2$, but may not be reflexive on $B^2$ even though $\mathcal{R}$ is the same set in each case.

As an example, even though, the *set* $\{(1, 1)\}$ remains the same, the *relations* $\{(1, 1)\} \subseteq \{1\}^2$ and $\{(1, 1)\} \subseteq \{1, 2\}^2$ are different because 

$$\{(1, 1)\} \subseteq \{1\}^2$$

is a reflexive relation whereas 

$$\{(1, 1)\} \subseteq \{1, 2\}^2$$

is not a reflexive relation. How can two relations be equal to each other if one is reflexive and the other is not? The answer is that they can't be.

In this section, we define what it means for two functions $f: A \rightarrow B$ and $g: C \rightarrow D$ to be equal.

## Equal Functions Should Have Equal Domains

If functions accept different kinds of inputs, then it stands to reason that those functions operate in different ways in order to produce similar outputs.

{{% notice style="example" title="Example 6.4.1" %}}
Consider the two functions 

\[
\begin{align*}
&f_1: \{a, b, c, d, e\} \rightarrow \{1, 2, 3, 4, 5\} \\
&f_2: \{\alpha, \beta, \gamma, \delta, \epsilon\} \rightarrow \{1, 2, 3, 4, 5\}
\end{align*}
\]

where 

\[
\begin{array}{ c c }
f_1(a) = 1 & f_2(\alpha) = 1 \\
f_1(b) = 2 & f_2(\beta) = 2 \\
f_1(c) = 3 & f_2(\gamma) = 3 \\
f_1(d) = 4 & f_2(\delta) = 4 \\
f_1(e) = 5 & f_2(\epsilon) = 5
\end{array}
\]

Here, $f_1$ is a function that maps the lower case English letters to their positions in the English alphabet. Similarly, $f_2$ is a function that maps the lower case Greek letters to their positions in the Greek alphabet.

Because $f_1$ and $f_2$ operate on different types of letters, they are obviously different functions.
{{% /notice %}}

{{% notice style="example" title="Example 6.4.2" %}}
Consider the two functions 

\[
\begin{align*}
&g_1: \{a, b, c, d, e\} \rightarrow \{1, 2, 3, 4, 5, 6\} \\
&g_2: \{a, b, c, d, e, f\} \rightarrow \{1, 2, 3, 4, 5, 6\}
\end{align*}
\]

where 

\[
\begin{array}{ c c }
g_1(a) = 1 & g_2(a) = 1 \\
g_1(b) = 2 & g_2(b) = 2 \\
g_1(c) = 3 & g_2(c) = 3 \\
g_1(d) = 4 & g_2(d) = 4 \\
g_1(e) = 5 & g_2(e) = 5 \\
& g_2(f) = 6
\end{array}
\]

Here, $g_1$ is a function that maps the lower case English letters to their positions in the English alphabet. $g_2$ does the same thing. However, $g_2$ also maps the element $f$ to the element $6$. Thus, even though $g_2$ maps the elements in $\{a, b, c, d, e\}$ to $\{1, 2, 3, 4, 5, 6\}$ in the same way as $g_1$, we see that $g_2$ has the ability to map elements that $g_1$ can't map.

Thus, because $g_2$ has different capabilities than $g_1$ ($g_2$ can operate on elements that $g_1$ can't), they must be different functions.
{{% /notice %}}

## Equal Functions Should Have Equal Codomains

Just like with domains, if two functions have different codomains (the kinds of outputs they can produce), then those two functions must be different, and thus not equal.

{{% notice style="example" title="Example 6.4.3" %}}
Consider the two functions 

\[
\begin{align*}
&h_1: \{1, 2, 3, 4, 5\} \rightarrow \{a, b, c, d, e\} \\
&h_2: \{1, 2, 3, 4, 5\} \rightarrow \{\alpha, \beta, \gamma, \delta, \epsilon\}
\end{align*}
\]

where 

\[
\begin{array}{ c c }
h_1(1) = a & h_2(1) = \alpha \\
h_1(2) = b & h_2(2) = \beta \\
h_1(3) = c & h_2(3) = \gamma \\
h_1(4) = d & h_2(4) = \delta \\
h_1(5) = e & h_2(5) = \epsilon
\end{array}
\]

Here, both $h_1$ and $h_2$ map the first five natural numbers to the first five letters of the English alphabet and Greek alphabet respectively. Of course, there are differences in how these mappings have to take place, so naturally $h_1$ and $h_2$ are not equal functions.
{{% /notice %}}

{{% notice style="example" title="Example 6.4.4" %}}
Consider the two functions 

\[
\begin{align*}
&s_1: \{1, 2, 3, 4, 5\} \rightarrow \{a, b, c, d, e\} \\
&s_2: \{1, 2, 3, 4, 5\} \rightarrow \{a, b, c, d, e, f\}
\end{align*}
\]

where 

\[
\begin{array}{ c c }
s_1(1) = a & s_2(1) = a \\
s_1(2) = b & s_2(2) = b \\
s_1(3) = c & s_2(3) = c \\
s_1(4) = d & s_2(4) = d \\
s_1(5) = e & s_2(5) = e
\end{array}
\]

The functions $s_1$ and $s_2$ appear to be the same function. But it's important to bear in mind that while no input exists such that $s_2$ outputs $f$, $s_2$ still has the *ability* to output $f$ even if it will not produce it. Simply having equal ranges is not enough to achieve function equality.

Thus, because $s_1$ and $s_2$ have different capabilities, they are not equal.
{{% /notice %}}

## Equal Functions Should Have Equal Mappings

Even with equal domains and equal codomains, we still don't necessarily know that two functions are equal. If those functions operate on elements in their domains differently, then they can't possibly be equal.

{{% notice style="example" title="Example 6.4.4" %}}
Consider the two functions 

\[
\begin{align*}
&p_1: \{a, b, c, d, e, f\} \rightarrow \{\alpha, \beta, \gamma, \delta, \epsilon, \zeta\} \\
&p_2: \{a, b, c, d, e, f\} \rightarrow \{\alpha, \beta, \gamma, \delta, \epsilon, \zeta\}
\end{align*}
\]

where 

\[
\begin{array}{ c c }
p_1(a) = \beta & p_2(a) = \gamma \\
p_1(b) = \alpha & p_2(b) = \alpha \\
p_1(c) = \delta & p_2(c) = \beta \\
p_1(d) = \gamma & p_2(d) = \zeta \\
p_1(e) = \zeta & p_2(e) = \delta \\
p_1(f) = \epsilon & p_2(f) = \epsilon
\end{array}
\]

Here, even though $\text{Dom}(p_1) = \text{Dom}(p_2)$ and $\text{Cod}(p_1) = \text{Cod}(p_2)$, the functions have very different behavior. Hence, they are not equal.
{{% /notice %}}

{{% notice style="example" title="Example 6.4.4" %}}
Consider the two functions 

\[
\begin{align*}
&q_1: \{a, b, c, d, e, f\} \rightarrow \{\alpha, \beta, \gamma, \delta, \epsilon, \zeta\} \\
&q_2: \{a, b, c, d, e, f\} \rightarrow \{\alpha, \beta, \gamma, \delta, \epsilon, \zeta\}
\end{align*}
\]

where 

\[
\begin{align*}
q_1(a) &= q_2(a) = \gamma \\
q_1(b) &= q_2(b) = \alpha \\
q_1(c) &= q_2(c) = \beta \\
q_1(d) &= q_2(d) = \zeta \\
q_1(e) &= q_2(e) = \delta \\
q_1(f) &= q_2(f) = \epsilon
\end{align*}
\]

Here, we have that $\text{Dom}(q_1) = \text{Dom}(q_2), \text{Cod}(p_1) = \text{Cod}(p_2)$. Furthermore, the functions have identical behavior.

The functions are doing the same things, to the same inputs, and producing the same outputs. Hence, we feel that $q_1$ and $q_2$ are indeed equal functions.
{{% /notice %}}

## The Definition of Equal Functions

The point of all the previous examples was to highlight that even subtle differences between domains, codomains, and mappings yield different functions. Essentially, we want two functions to be considered equal when they behave in the exact same way on the exact same inputs to produce the exact same outputs. As such, we define function equality based on that desire.

{{% notice style="definition" title="Equal" %}}
Two functions $f: A \rightarrow B$ and $g: C \rightarrow D$ are called **equal**, and we write $f = g$ when the following conditions hold:

- $\text{Dom}(f) = \text{Dom}(g)$ (meaning $A = C$)
- $\text{Cod}(f) = \text{Cod}(g)$ (meaning $B = D$)
- $\forall x \in \text{Dom}(f)\ [f(x) = g(x)]$

If $f$ and $g$ are not equal, we write $f \neq g$.
{{% /notice %}}

{{% notice style="example" title="Example 6.4.5" %}}
Based on the above examples, and definition of function equality, we have that 

- $f_1 \neq f_2\ $ because $\ \text{Dom}(f_1) \neq \text{Dom}(f_2)$
- $g_1 \neq g_2\ $ because $\ \text{Dom}(g_1) \neq \text{Dom}(g_2)$
- $h_1 \neq h_2\ $ because $\ \text{Cod}(f_1) \neq \text{Cod}(f_2)$
- $s_1 \neq s_2\ $ because $\ \text{Cod}(f_1) \neq \text{Cod}(f_2)$
- $p_1 \neq p_2\ $ because $\ p_1(a) = \beta \neq \gamma = p_2(a)$

However, we do have that $q_1 = q_2$.
{{% /notice %}}
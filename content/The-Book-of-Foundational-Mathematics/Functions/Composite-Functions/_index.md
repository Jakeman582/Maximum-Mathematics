+++
date = '2025-01-25T21:40:20-05:00'
draft = false
title = 'Composite Functions'
weight = 5
+++

In some sense, a function $f: A \rightarrow B$ is a rule that takes each element in $A$, and assigns it some element in $B$. In other words, if we have some element  $a \in A$, then $f$ will assign some element $b \in B$ to $a$. Suppose we also had some other function $g: B \rightarrow C$. Since $g$ assigns elements from $C$ to elements in $B$, we would be able to assign some element $c \in C$ to that element $b$ we got from using function $f$. What we've done is daisy-chain the outputs of functions $f$ and $g$ to assign to element $a \in A$ some element $c \in C$, even though we don't explicitly have some other function that has domain $A$ and codomain $C$.

Just as we can combine real numbers together by adding or multiplying them, and like we can combine sets together using union and intersection, we can combine functions together using the daisy chaining concept to form a new function. In this section, we learn about *function composition*, the technical term for daisy chaining functions together.

## An Example

Conceptually understanding how daisy-chaining functions together can be made a lot easier by examining an example using arrow diagrams.

{{< notice style="example" title="Example 6.5.1" >}}
There are several large cities and towns scattered throughout the United States. Some are located further south, closer to the Equator, while others are located farther north. In general, the closer you get to the Equator (your latitude gets close to 0), the warmer the average temperature will be. The farther north (or south) you go (your latitude gets larger), the colder the average temperature will be.

One way to determine whether a city or town will generally have higher or lower temperatures is to look at their latitudes. Suppose we are interested in looking at the average temperatures of the towns Anchorage, Chicago, Denver, and Miami. Looking at a map of the United States, we may make the following arrow diagrams.

{{< figure
    src="1.svg"
    caption="**Figure 6.5.1**"
    alt="Two arrow diagrams, the first of which defines a function from the set of cities to the set of latitude measures, and the second of which defines a function from the set of latitude measures to temperature values."
>}}

In Figure 6.5.1(a), we see a function from Towns to their respective latitudes. In Figure 6.5.1(b), we see a function from latitudes to their average temperatures. Since the set of latitudes is shared between both arrow diagrams, we could compress both arrow diagrams into one by simply listing the latitude set elements once, as depicted in Figure 6.5.2 below.

{{< figure
    src="2.svg"
    caption="**Figure 6.5.2**"
    alt="We can combine two arrow diagrams into one as long as the first diagram's codomain set is the same set used as the domain set in the second diagram."
 >}}

 In some sense, we don't really care about the city's latitude. We may just want to know the temperature. This means we can disregard the middle set, and just focus on what temperature a city is mapped to. We see the result of ignoring the latitude set in the arrow diagram below.

 $$~$$

 For example, Anchorage has a high altitude, and high altitudes generally have colder temperatures. This means we can form a new relation by assigning to Anchorage it's average temperature value of "Cold" directly, without listing it's latitude. Visually, all we're doing is following the arrows from Anchorage to see what it "ultimately" gets mapped to it, in this case it's the value "Cold". We can do the same thing for every city in the set.

 {{< figure
    src="3.svg"
    caption="**Figure 6.5.3**"
    alt="This image shows what happens when the shared set between two relations is bypassed, yielding a new relation."
 >}}
{{< /notice >}}

Using arrow diagrams, we can simply follow the path laid out by the arrows at the left end of the diagram (the start) to the right end of the diagram (the end). By looking at what the start and end values, we can form a new function that cuts out all of the intermediate steps.

## A Formal Definition of Function Composition

Just like any other function, a composite function has a domain and codomain, and every element in the domain must map exactly to one element of the codomain. With composite functions, there are intermediary sets that act as a middleman between the domain and codomain.

{{% notice style="definition" title="Composite Function" %}}
Consider the two arbitrary functions 

$$f: A \rightarrow B$$
$$g: B \rightarrow C$$

The **composite function** $h: A \rightarrow C$ is the function where 

$$\forall a \in A \bigl[h(a) = g(f(a))\bigr]$$

Typically, we write

$$h = g \circ f$$

to show that $h$ is the composite of $f$ and $g$, and we would write something like 

\[
\begin{align*}
h(x) &= [g \circ f](x) \\
&= g(f(x))
\end{align*}
\]

when we're trying to evaluate the function for some $x \in \text{Dom}(h)$.
{{% /notice %}}

Let's look at a small example to get more comfortable with the above notation.

{{< notice style="example" title="Example 6.5.2" >}}
Consider the arrow diagram depicted below in Figure 6.5.4.

{{< figure
    src="4.svg"
    caption="**Figure 6.5.4**"
    alt="The first function maps one set of four numbers to a second set of four other numbers, and the second function maps the second set of four numbers to a set of three different numbers."
>}}

The diagram depicts two functions:

$$f: A \rightarrow B$$
$$g: B \rightarrow C$$

We can consider the composite function $g \circ f$, which we'll denote $h$, which has domain $A$ and codomain $C$.

In order to calculate the value $h(1)$, we can do the following:

\[
\begin{align*}
h(1) &= [g \circ f](1) \\
&= g(f(1)) \\
&= g(20) \\
&= 99
\end{align*}
\]
{{< /notice >}}

## The Domain, Codomain, and Range of Composite Functions

Based on the definition of composite functions, and the examples we've seen, it would seem that whatever set is used as the domain of the first function in the composition will also be the domain of the composite function itself. After all, whatever can be an input into the first function can also be put into the composite function.

We can make a similar observation for the domain of composite functions. As such, we immediately see that the following facts about composite functions are true by definition of composite functions:

\[
\begin{align*}
\text{Dom}(g \circ f) &= \text{Dom}(f) \\
\text{Cod}(g \circ f) &= \text{Cod}(g)
\end{align*}
\]

Can we make a similar observation about the range of a composite function?

{{< notice style="example" title="Example 6.5.3" >}}
Consider the following arrow diagram showing two functions.

{{< figure
    src="5.svg"
    caption="**Figure 6.5.5**"
    alt="An arrow diagram showing that the composite function's range is not simply the same range as the last function used in the composition."
>}}

In Figure 6.5.5, we see two functions being composed together:

\[
\begin{align*}
&f: \text{X} \rightarrow \text{Y} \\
&g: \text{Y} \rightarrow \text{Z}
\end{align*}
\]

where 
\[
\begin{align*}
\text{X} &= \{1, 2, 3, 4\} \\
\text{Y} &= \{\text{a}, \text{b}, \text{c}\} \\
\text{Z} &= \{\Phi, \chi, \Psi\}
\end{align*}
\]

Here we see that $\text{Rng}(g \circ f) = \{\chi, \Psi\}$. However, just  examining the function $g$, we see that $\text{Rng}(g) = \{\Phi, \chi, \Psi\}$. Clearly then, we see that $\text{Rng}(g \circ f) \subseteq \text{Rng}(g)$.

$$~$$

The issue is that the only element in $\text{Y}$ that gets mapped to $\Phi$ under $g$ is $\text{a}$. Because $f$ doesn't map any element to $\text{a}$, that means the composite will never map any element in $\text{X}$ to $\Phi$.
{{< /notice >}}

As the previous example demonstrates, when some elements of the intermediate set are missed, then the range of the composite function may only contain some - but not all - elements of the range of the last function used in the composition.

Of course when the first function uses all elements of the intermediate set in its range, then we won't have to worry about some elements being left out of the composite's range. In other words, when the first function is surjective, then we expect the range of the composite to be equal to the range of the last function used in the composition.

{{% notice style="theorem" title="Proof 6.5.1" %}}
Suppose for arbitrary sets $\text{A}$, $\text{B}$, and $\text{C}$, and for arbitrary functions 

\[
\begin{align*}
f: \text{A} \rightarrow \text{B} \\
g: \text{B} \rightarrow \text{C}
\end{align*}
\]

If $f$ is surjective, meaning $\text{Rng}(f) = \text{Dom}(g)$, then we have that

$$\text{Rng}(g \circ f) = \text{Rng}(g)$$
{{% /notice %}}

{{% expand expanded="false" title="Proof 6.5.1" %}}
*General Strategy: We'll use the typical strategy of showing that both sets are subsets of each other.*

### Step 1: $\text{Rng}(g \circ f) \subseteq \text{Rng}(g)$
Let $c \in \text{Rng}(g \circ f)$, then by definition of range, we have that

$$\exists a \in A\ \bigl[c = g\bigl(f(a)\bigr)\bigr]$$

and thus, we also have by definition of domain that $f(a) \in \text{Dom}(g)$.

Thus, since there is some element in the domain of $g$ that gets mapped to $c \in \text{Cod}(g)$, we have that 

$$c \in \text{Rng}(g)$$

Thus, we have that 

$$\text{Rng}(g \circ f) \subseteq \text{Rng}(g)$$

### Step 2: $\text{Rng}(g) \subseteq \text{Rng}(g \circ f)$
Here, let $c = \text{Rng}(g)$, then by definition of range, we have that 

$$\exists b \in B\ \bigl[c = g(b)\bigr]$$

Note that because $f: \text{A} \rightarrow \text{B}$ is surjective, that means that 

$$\exists a \in A\ \bigl[b = f(a)\bigr]$$

for that same element $b$. This means we've just shown that 

$$\exists a \in A\ \bigl[c = g\bigl(f(a)\bigr)\bigl]$$

which by definition of range means that we have 

$$c \in \text{Rng}(g \circ f)$$

and so we've shown that 

$$\text{Rng}(g) \subseteq \text{g \circ f}$$

as well.

### Conclusion: $\text{Rng}(g \circ f) = \text{Rng}(g)$
Since we've shown that both

\[
\begin{align*}
\text{Rng}(g \circ f) &\subseteq \text{Rng}(g) \\
\text{Rng}(g) &\subseteq \text{Rng}(g \circ f)
\end{align*}
\]

we then have that 

$$\text{Rng}(g \circ f) = \text{Rng}(g)$$

as desired.

---
{{% /expand %}}

## Multiple functions

We used the analogy of daisy-chaining to convey the idea of function composition. The analogy continues by acknowledging that in theory, daisy chains can extend beyond two, three, four, or more components.

Likewise, we can have any number of functions composed together with any number of sets. For example, we could compose three functions together:

\[
\begin{align*}
f: \text{A} \rightarrow \text{B} \\
g: \text{B} \rightarrow \text{C} \\
h: \text{C} \rightarrow \text{D}
\end{align*}
\]

With these three functions, we could form the composite function $j$ like so:

$$j: \text{A} \rightarrow \text{D};\ j(x) = [h \circ g \circ f](x),\ x \in \text{A}$$

{{< notice style="example" title="Example 6.5.4" >}}
Let's take a look at the following four functions:

\[
\begin{align*}
f: \text{A} \rightarrow \text{B} \\
g: \text{B} \rightarrow \text{C} \\
h: \text{C} \rightarrow \text{D} \\
j: \text{D} \rightarrow \text{E} \\
\end{align*}
\]

where we have that 

\[
\begin{align*}
\text{A} &= \{\text{m}, \text{o}, \text{s}\} \\
\text{B} &= \{\text{a}, \text{n}, \text{w}\} \\
\text{C} &= \{\text{a}, \text{g}, \text{i}\} \\
\text{D} &= \{\text{i}, \text{m}, \text{o}\} \\
\text{E} &= \{\text{c}, \text{n}, \text{p}\} \\
\end{align*}
\]

Suppose the functions were defined as depicted in the following arrow diagram:

{{< figure
    src="6.svg"
    caption="**Figure 6.5.6**"
    alt="An arrow diagram depicting functions f, g, h, and j."
>}}

We want to construct the composite function so we don't have to parse out all of the intermediate results. In order to do this, we'll follow all the arrows to see what elements in $\text{E}$ get mapped to the elements in $\text{A}$.

$$~$$

To make our work a little bit more compact, let's introduce the following notation, where the name of the function lies on top of an arrow that points from an element in the function's domain to an element in that function's codomain. Here is the new notation for function $f: \text{A} \rightarrow \text{B}$:

\[
\begin{align*}
\text{m} \overset{f}{\rightarrow} \text{a} \\\\
\text{o} \overset{f}{\rightarrow} \text{n} \\\\
\text{s} \overset{f}{\rightarrow} \text{w} 
\end{align*}
\]

Now, we extend the notation across all four functions and five sets like so:

\[
\begin{align*}
&\text{m} \overset{f}{\rightarrow} \text{a} \overset{g}{\rightarrow} \text{g} \overset{h}{\rightarrow} \text{i} \overset{j}{\rightarrow} \text{c} \\\\
&\text{o} \overset{f}{\rightarrow} \text{n} \overset{g}{\rightarrow} \text{i} \overset{h}{\rightarrow} \text{o} \overset{j}{\rightarrow} \text{n} \\\\
&\text{s} \overset{f}{\rightarrow} \text{w} \overset{g}{\rightarrow} \text{a} \overset{h}{\rightarrow} \text{m} \overset{j}{\rightarrow} \text{p} \\\\
\end{align*}
\]

Ultimately, we see that under the composition, 

\[
\begin{align*}
&[j \circ h \circ g \circ f](\text{m}) = \text{c} \\
&[j \circ h \circ g \circ f](\text{o}) = \text{n} \\
&[j \circ h \circ g \circ f](\text{s}) = \text{p}
\end{align*}
\]
{{< /notice >}}
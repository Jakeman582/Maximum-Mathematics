+++
date = '2025-01-25T21:40:09-05:00'
draft = true
title = 'Special Functions'
weight = 2
+++

We have defined functions basically as special types of relations. We can go further and recognize that some functions have special properties different than other functions. In this section, we examine three properties that tend to be useful when working on various problems all throughout mathematics.

## Surjective Functions

{{< notice style="example" title="Example" >}}

Consider the sets $A = \{1, 2, 3, 4, 5, 6, 7, 8\}$ and $B = \{a, b, c, d, e, f\}$. In Figure 6.2.1 below, we use an arrow diagram to define two functions from $A$ to $B$.

{{< figure 
    src="1.svg"
    caption="**Figure 6.2.1**: In (a), we see a function where *every* element in $B$ is used. In (b) however, element $c$ is left out."
    alt="Two functions, one of which uses every element in the codomain. The other function does not use every element in the codomain."
>}}

One nice property of the function depicted in Figure 6.2.1 (a) is that we don't have to worry about which elements in the codomain are left out. In (b), we do have to keep track, which can be tricky to work with. Another way to think about this situation is that we are always guaranteed to be able to produce a preimage for every element in $B$ with the function in (a), whereas we do not have such a guarantee with the function in (b).

{{< /notice >}}

The function depicted in Figure 6.2.1 (a) uses every element in its codomain, whereas the function depicted in (b) does not. We often find ourselves in situations where we need to be able to generate preimages under a function for specific elements (something we'll need to do later in this chapter). Thus, having that guarantee will prove to be useful. Without that guarantee, we have to do additional work to determine if such an element in $B$ exists.

{{% notice style="definition" title="Surjective, Onto" %}}
Let $f: A \rightarrow B$ be an arbitrary function.

We say that $f$ is a **surjective** function if (and only if) every element in $B$ is the image of at least one element $a \in A$.

In other words, 

$$\forall b \in B\ \exists a \in A\ [f(a) = b]$$

Sometimes, we call such a function **onto**.
{{% /notice %}}
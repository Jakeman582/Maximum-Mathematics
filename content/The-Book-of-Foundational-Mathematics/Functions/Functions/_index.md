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
    caption="Figure 6.1.1"
>}}

Notice that elements $2, 3, 4$ are related to elements from $\{a, b, c, d\}$, but what about the element $1$? Even though $\mathcal{R}_1$ is a legitimate relation, we may want to have a way to relate <i>all</i> elements in $\{1, 2, 3, 4\}$.
{{< /notice >}}

{{< notice style="example" title="Example 6.1.2" >}}
Consider the relation $\mathcal{R}_2 \subseteq \{1, 2, 3, 4\} \times \{a, b, c, d\}$ where 

$$\mathcal{R}_2 = \{(1, d), (2, c), (2, a), (3, b), (4, a)\}$$

{{< figure
    src="2.svg"
    caption="Figure 6.1.2"
>}}

Here, we have related every element in $\{1, 2, 3, 4\}$ to at least one element in $\{a, b, c, d\}$. However, the element $2$ is related to two different elements: $a, c$. Again, this is a valid relation, but perhaps we want to limit how many elements can be related to some given element.

$$~$$

For example, suppose we needed to pick an element related to $2$. How would we choose between $a$ and $c$? It's ambiguous unless we have some hueristic to settle the matter. However, if $2$ was only related to one element, then the choice is automatic and not ambiguous.
{{< /notice >}}

{{< notice style="example" title="Example 6.1.3" >}}
Consider the relation $\mathcal{R}_3 \subseteq \{1, 2, 3, 4\} \times \{a, b, c, d\}$ where 

$$\mathcal{R}_3 = \{(1, a), (2, c), (3, d), (4, c)\}$$

{{< figure
    src="3.svg"
    caption="Figure 6.1.3"
>}}

Here, every element in $\{1, 2, 3, 4\}$ is related to some element in $\{a, b, c, d\}$, and each element in $\{1, 2, 3, 4\}$ is related to exactly one element in $\{a, b, c, d\}$. This avois the problems that $\mathcal{R}_1$ and $\mathcal{R}_2$ have in Example 6.1.1 and Example 6.1.2 above.
{{< /notice >}}
+++
date = '2025-01-25T21:40:09-05:00'
draft = false
title = 'Special Functions'
weight = 2
+++

We have defined functions basically as special types of relations. We can go further and recognize that some functions have special properties different than other functions. In this section, we examine three properties that tend to be useful when working on various problems all throughout mathematics.

## Surjective Functions

{{< notice style="example" title="Example 6.2.1" >}}

Consider the sets $A = \{1, 2, 3, 4, 5\}$ and $B = \{\alpha, \beta, \gamma, \delta\}$. In Figure 6.2.1 below, we use an arrow diagram to define two functions $f_1$ and $f_2$ from $A$ to $B$.

{{< figure 
    src="1.svg"
    caption="**Figure 6.2.1**"
    alt="Two functions, one of which uses every element in the codomain. The other function does not use every element in the codomain."
>}}

One nice property of the function depicted in Figure 6.2.1 (a) is that we don't have to worry about which elements in the codomain are left out. In (b), we do have to keep track, which can be tricky to work with. Another way to think about this situation is that we are always guaranteed to be able to produce a preimage for every element in $B$ with the function in (a), whereas we do not have such a guarantee with the function in (b).

{{< /notice >}}

The function depicted in Figure 6.2.1 (a) uses every element in its codomain, whereas the function depicted in (b) does not. We often find ourselves in situations where we need to be able to generate preimages under a function for specific elements (something we'll need to do later in this chapter). Thus, having that guarantee will prove to be useful. 

{{% notice style="definition" title="Surjective, Onto" %}}
Let $f: A \rightarrow B$ be an arbitrary function.

We say that $f$ is a **surjective** function if (and only if) every element in $B$ is the image of at least one element $a \in A$.

In other words, 

$$\forall b \in B\ \exists a \in A\ [b = f(a)]$$

Sometimes, we call such a function **onto**.
{{% /notice %}}

{{% notice style="example" title="Example 6.2.2" %}}
Reconsider the function depicted in Figure 6.2.1 (a) again. The arrow diagram is enough to prove that $f_1$ is surjective, but we can also appeal to the definition as well. We need to check if 

$$\forall b \in B\ \exists a \in A\ [b = f_1(a)] = 1$$

So, let's check each element $b \in B$, and see if there exists some element $a \in A$ such that $b = f_1(a)$:

- $\alpha = f_1(1)$ (we also have that $\alpha = f_1(3)$, but we only need one preimage)
- $\beta = f_1(5)$
- $\gamma = f_1(4)$
- $\delta = f_1(2)$

Every element in $\{\alpha, \beta, \gamma, \delta\}$ has a preimage under $f_1$, meaning $f_1$ is surjective.
{{% /notice %}}

{{% notice style="example" title="Example 6.2.3" %}}
Reconsider the function shown in Figure 6.2.1 (b). Let's make a new function $f_3$ using those same mappings but let's only use subsets of the domain and codomain:

$$f_3: \{1, 3, 4, 5\} \rightarrow \{\alpha, \gamma, \delta\}$$

where 

\[
\begin{align*}
f_3(1) &= \alpha \\
f_3(3) &= \alpha \\
f_3(4) &= \gamma \\
f_3(5) &= \delta
\end{align*}
\]

Even though the function shown in Figure 6.2.1 (b) is not surjective, we were able to form a surjective function using the same mappings for the elements $\{1, 3, 4, 5\}$. We did this by choosing the subset $\{\alpha, \gamma, \delta\}$ of the original function's codomain to act as the new function's codomain. 
{{% /notice %}}

{{% notice style="example" title="Example 6.2.4" %}}
Reconsider the function shown in Figure 6.2.1 (b). Let's make a new function $f_4$ using those same mappings but unlike in Example 6.2.3, we'll use a superset of the domain \{1, 2, 3, 4, 5\}. We'll use the same codomain:

$$f_4: \{1, 2, 3, 4, 5, 6\} \rightarrow \{\alpha, \beta, \gamma, \delta\}$$

where 

\[
\begin{align*}
f_4(1) &= \alpha \\
f_4(2) &= \delta \\
f_4(3) &= \alpha \\
f_4(4) &= \gamma \\
f_4(5) &= \delta \\
f_4(6) &= \beta
\end{align*}
\]

Even though the function shown in Figure 6.2.1 (b) is not surjective, we were able to form a surjective function using the same mappings for the elements $\{1, 2, 3, 4, 5\}$. We did this by ensuring that the new element added to the domain got mapped to the element not used in the original function.
{{% /notice %}}

As demonstrated in Example 6.2.3 and Example 6.2.4, the sets that make up a function's domain and codomain play a role in determining whether or not that function is surjective or not. The same is true for the next property of functions we examine.

## Injective Functions

{{< notice style="example" title="Example 6.2.5" >}}
Consider the sets $A = \{1, 2, 3, 4, 5\}$ and $B = \{\alpha, \beta, \gamma, \delta, \varepsilon, \zeta\}$ In Figure 6.2.2 below, we depict two more functions from $A$ to $B$ using arrow diagrams.

{{< figure
    src="2.svg"
    caption="**Figure 6.2.2**"
    alt="Two functions, one of which maps some elements to the same output, and the other one of which does not."
>}}

Look at the function depicted in (b). Suppose we needed to pick one of the preimages of $\zeta$. Do we choose $3$, or do we choose $4$? Because there is more than one preimage, it's not clear which one should be taken if we are ever in a situation where we needed to choose (again, this will happen later in this chapter) unless we had some additional information. We don't have this problem with the function in (a) since there is only ever at most one preimage for each element in $B$.
{{< /notice >}}

As noted in Example 6.2.5, we can run into problems if different elements in $A$ get mapped to the same element in $B$ because choosing specific preimages now becomes ambiguous. However, if there is never more than one preimage for each element in $B$, then the choice is automatic.

{{% notice style="definition" title="Injective, One-to-one" %}}
Let $f: A \rightarrow B$ be an arbitrary function.

We call $f$ an **injective** function if (and only if) every element in $B$ has no more than one preimage in $A$.

Logically, we write this as 

$$\forall a_1, a_2 \in A\ [f(a_1) = f(a_2) \implies a_1 = a_2]$$

Often, we describe such functions as being **one-to-one**.
{{% /notice %}}

Initially, the quantified proposition looks like it has nothing to with saying that every element in a function's codomain has no more than one preimage, but the reason why we use this as the definition will be clearer after looking at some examples.

{{% notice style="example" title="Example 6.2.6" %}}

Let's look at the function depicted in Figure 6.2.2 (a). Visually, we see that no element in $B$ has more than one preimage. Let's go through and quickly count the number of preimages as well:

- $\alpha \in B$ has $1$ preimage $\color{\green}{\checkmark}$
- $\beta \in B$ has $1$ preimage $\color{\green}{\checkmark}$
- $\gamma \in B$ has $1$ preimage $\color{\green}{\checkmark}$
- $\delta \in B$ has $0$ preimages $\color{\green}{\checkmark}$
- $\varepsilon \in B$ has $1$ preimage $\color{\green}{\checkmark}$
- $\zeta \in B$ has $1$ preimage $\color{\green}{\checkmark}$

The function depicted in (a) is injective.

We can do the same thing for the function depicted in (b):

- $\alpha \in B$ has $1$ preimage $\color{\green}{\checkmark}$
- $\beta \in B$ has $1$ preimage $\color{\green}{\checkmark}$
- $\gamma \in B$ has $1$ preimage $\color{\green}{\checkmark}$
- $\delta \in B$ has $0$ preimages $\color{\green}{\checkmark}$
- $\varepsilon \in B$ has $0$ preimages $\color{\green}{\checkmark}$
- $\zeta \in B$ has $2$ preimages $\color{\red}{\times}$

Thus, the function depicted in (b) is not injective.
{{% /notice %}}

{{% notice style="example" title="Example 6.2.7" %}}
Now, let's use the quantified proposition to determine if each of the functions shown in Figure 6.2.2 are injective.

### a.) Figure 6.2.2 (a)

We need to check all pairwise elements in $A$, and ensure the necessary implications are all true. Just like we did when examining relations, we'll use a modified truth table to organize our checking. First, we'll use the first two columns to list each pair of elements from $A$. The next two columns will show the images of the elements listed in the first two columns. The remaining columns will show the values of the necessary propositions.

We won't list rows like $a_1 = 3,\ a_2 = 1$ since that will be the exact same row as $a_1 = 1,\ a_2 = 3$. We eliminate a lot of redundant rows in the table by doing this.

|$a_1$|$a_2$|$g_1(a_1)$|$g_1(a_2)$|$g_1(a_1) = g_1(a_2)$|$a_1 = a_2$|$g_1(a_1) = g_1(a_2) \rightarrow a_1 = a_2$|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|**1**|**1**|$\beta$|$\beta$|1|1|1|
|**1**|**2**|$\beta$|$\alpha$|0|0|1|
|**1**|**3**|$\beta$|$\zeta$|0|0|1|
|**1**|**4**|$\beta$|$\varepsilon$|0|0|1|
|**1**|**5**|$\beta$|$\gamma$|0|0|1|
|**2**|**2**|$\alpha$|$\alpha$|1|1|1|
|**2**|**3**|$\alpha$|$\zeta$|0|0|1|
|**2**|**4**|$\alpha$|$\varepsilon$|0|0|1|
|**2**|**5**|$\alpha$|$\gamma$|0|0|1|
|**3**|**3**|$\zeta$|$\zeta$|1|1|1|
|**3**|**4**|$\zeta$|$\varepsilon$|0|0|1|
|**3**|**5**|$\zeta$|$\gamma$|0|0|1|
|**4**|**4**|$\varepsilon$|$\varepsilon$|1|1|1|
|**4**|**5**|$\varepsilon$|$\gamma$|0|0|1|
|**5**|**5**|$\gamma$|$\gamma$|1|1|1|

We see that all of the truth values in the last column are all 1s, which means that for every pair of elements in $A$, the necessary implication is true. Thus, by definition, the function shown in Figure 6.2.2 (a) is injective.

Notice that when the two function evaluations were equal (shown in the fifth column), the inputs to those functions were always referring to the same element, and when those function evaluations were different, the inputs were also different.

Look closely at the rows where $a_1 = a_2$. Even though they are different variables, they are still referring to the same element in $B$. This is why we phrased the definition of injective function the way we did. We want to ensure that if two inputs to a function result in the same image, then those two inputs are referring to the same element. In other words, only that one element in $A$ produces that specific element from $B$.

### b.) Figure 6.2.2 (b)

We'll construct one more table similar to the one above for $g_2$:

|$a_1$|$a_2$|$g_2(a_1)$|$g_2(a_2)$|$g_2(a_1) = g_2(a_2)$|$a_1 = a_2$|$g_2(a_1) = g_2(a_2) \rightarrow a_1 = a_2$|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|**1**|**1**|$\beta$|$\beta$|1|1|1|
|**1**|**2**|$\beta$|$\alpha$|0|0|1|
|**1**|**3**|$\beta$|$\zeta$|0|0|1|
|**1**|**4**|$\beta$|$\zeta$|0|0|1|
|**1**|**5**|$\beta$|$\gamma$|0|0|1|
|**2**|**2**|$\alpha$|$\alpha$|1|1|1|
|**2**|**3**|$\alpha$|$\zeta$|0|0|1|
|**2**|**4**|$\alpha$|$\zeta$|0|0|1|
|**2**|**5**|$\alpha$|$\gamma$|0|0|1|
|**3**|**3**|$\zeta$|$\zeta$|1|1|1|
|**3**|**4**|$\zeta$|$\zeta$|1|0|0|
|**3**|**5**|$\zeta$|$\gamma$|0|0|1|
|**4**|**4**|$\zeta$|$\zeta$|1|1|1|
|**4**|**5**|$\zeta$|$\gamma$|0|0|1|
|**5**|**5**|$\gamma$|$\gamma$|1|1|1|

Here, not all truth values in the last column are 1, thus $g_2$ is not injective. Look at the row corresponding to $a_1 = 3, a_2 = 4$. We see that $a_1 \neq a_2$, yet $g_2(a_1) = g_2(a_2) = \zeta$.

One thing we notice with $a_1 = a_2 = 3$, we also have that $g_2(a_1) = g_2(a_2) = \zeta$. This is expected since $a_1$ and $a_2$ are referring to the same element, even though they are different variables.
{{% /notice %}}

## Bijective Functions

We've already talked about two properties a function can have: being surjective, and being injective. Naturally, we may ask whether or not a function can be both surjective and injective at the same time.

{{< notice style="example" title="Example 6.2.7" >}}
Consider the sets $A = \{1, 2, 3, 4, 5\}$ and $B = \{\alpha, \beta, \gamma, \delta, \varepsilon\}$ In Figure 6.2.3 below, we depict the functions $h_1: A \rightarrow B$ in (a) and $h_2: A \rightarrow B$ in (B) using arrow diagrams.

{{< figure
    src="3.svg"
    caption="**Figure 6.2.3**"
    alt="Two functions, one of which is both surjective and injective, and the other one which is neither surjective nor injective."
>}}

Here, we see that $h_1$ is both surjective and injective, while $h_2$ is neither surjective nor injective.
{{< /notice >}}

{{% notice style="definition" title="Bijective" %}}
Let $f: A \rightarrow B$ be an arbitrary function.

We call $f$ a **bijective** function if (and only if) $f$ is surjective and injective.
{{% /notice %}}

We've seen examples of functions that are neither surjective nor injective, functions that are one without being the other, and one function that is both.

{{% notice style="example" title="Example 6.2.8" %}}
From Figure 6.2.1, we see that $f_1$ is surjective, but it is not injective, meaning $f_1$ is not bijective. $f_2$ is neither surjective nor injective, and is also not bijective.

From Figure 6.2.2, we see that $g_1$ is injective, but it is not surjective, and so $g_1$ is not bijective. We also see that $g_2$ is neither injective nor surjective, so it isn't bijective either.
{{% /notice %}}

Because bijective functions have both of these really nice properties, they will be especially helpful to us later in this chapter, and in later chapters.

It is common to refer to a bijective function as a *one-to-one correspondence*, and you'll see this in many texts. However, this sounds very similar to *one-to-one*, which refers to injective functions, not bijective functions. We avoid the term one-to-one correspondence in this book to mitigate any potential confusion.
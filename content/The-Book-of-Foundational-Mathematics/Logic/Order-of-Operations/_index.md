+++
date = '2025-04-06T13:40:59-04:00'
draft = false
title = 'Order of Operations'
weight = 4
+++

When we're trying to calculate arithmetic expressions like 

$$8 \div 2((2 + 2) * 3)$$

we need to know which parts of the expression need to be dealt with first.

One scheme is **PEMDAS** which stands for *Parenthesis Exponents Multiplication Division Addition Subtraction*. The order the operations are listed specifies which parts are to be done first. The order is a little misleading though since multiplication and division are performed left-to-right instead of in sequence. Addition and subtraction are also done left-to-right instead of in sequence. If a number is written next to parenthesis without an explicit operator, then the implicit operator being used is multiplication.

1. Parenthesis (multiplication is implied when no operator is used next to parentheses)
2. Exponents
3. Multiplication and Division (left-to-right)
4. Addition and Subtraction (left-to-right)

Following this scheme, we would evaluate $8 \div 2((2 + 2) * 3)$ like so:

\[
\begin{align*}
8 \div 2((2 + 2) * 3) &= 8 \div 2 * ((2 + 2) * 3) \\
&= 8 \div 2 * ((4) * 3) \\
&= 8 \div 2 * (4 * 3) \\
&= 8 \div 2 * (12) \\
&= 8 \div 2 * 12 \\
&= 4 * 12 \\
&= 48
\end{align*}
\]
 
 There are other schemes to specify in what order operations should be done, such as **BOMDAS** which stands for *Brackets Orders/Indices/Exponents Division Multiplication Addition Subtraction*.

 We can do the same thing for the logical operators discussed in the previous three sections.

 ## Why Order Matters

 To see why we would need to know which operators to prioritize, let's look at the following example.

{{< notice style="example" title="Example 1.4.1" >}}
Consider the expression 

$$p \lor q \land r$$

Should we evaluate $p \lor q$ first, or do we evaluate $q \land r$ first? Let's use a truth table to compare $(p \lor q) \land r$ and $p \lor (q \land r)$:

{{< figure
    src="1.svg"
    alt="Comparing truth values of $(p \lor q) \land r$ and $p \lor (q \land r)$."
>}}

Examining the truth table we see there are two rows where $(p \lor q) \land r$ and $p \lor (q \land r)$ are different. Let's highlight those rows:

{{< figure
    src="2.svg"
    alt="Highlighting rows where $(p \lor q) \land r$ and $p \lor (q \land r)$ are different."
>}}

So, the order does matter.
{{< /notice >}}

To avoid situations like in Example 1.4.1, we need some way of knowing which parts of complicated expressions to evaluate first.

## The Order of Operations for Logical Operators

There are slight deviations depending on which source you're using, but the following scheme is widely adopted.

1. Parentheses ()
2. Negation $\neg$
3. Conjunction $\land$
4. Disjunction $\lor$
5. Implication $\rightarrow$
6. Biconditional $\leftrightarrow$

Note that we still use parentheses to prioritize parts of an expression we want evaluated first. Also, there are no left-to-right specifications, so this order is strict. Furthermore, none of these operators are said to be implicit. This means that we can't have a truth value next to parentheses, there *must* be an operator between parentheses and other truth values.

{{% notice style="example" title="Example 1.4.2" %}}
We evaluate the expression 

$$\neg 1 \lor 0$$

using the above order of operations as follows:

\[
\begin{align*}
\neg 1 \lor 0 &= 0 \lor 0 \\
&= 0
\end{align*}
\]
{{% /notice %}}

{{% notice style="example" title="Example 1.4.3" %}}
We evaluate the expression 

$$(1 \rightarrow 0) \land 0 \leftrightarrow 1$$

using the above order of operations as follows:

\[
\begin{align*}
(1 \rightarrow 0) \land 0 \leftrightarrow 1 &=  (0) \land 0 \leftrightarrow 1 \\
&= 0 \land 0 \leftrightarrow 1 \\
&= 0 \leftrightarrow 1 \\
&= 0
\end{align*}
\]
{{% /notice %}}

{{% notice style="example" title="Example 1.4.4" %}}
We evaluate the expression 

$$((1 \land 0) \leftrightarrow (\neg 1 \land 1)) \leftrightarrow 0 \rightarrow 1$$

using the above order of operations as follows:

\[
\begin{align*}
((1 \land 0) \leftrightarrow (\neg 1 \land 1)) \leftrightarrow 0 \rightarrow 1 &= ((0) \leftrightarrow (\neg 1 \land 1)) \leftrightarrow 0 \rightarrow 1 \\
&= (0 \leftrightarrow (\neg 1 \land 1)) \leftrightarrow 0 \rightarrow 1 \\
&= (0 \leftrightarrow (0 \land 1)) \leftrightarrow 0 \rightarrow 1 \\
&= (0 \leftrightarrow (0)) \leftrightarrow 0 \rightarrow 1 \\
&= (0 \leftrightarrow 0) \leftrightarrow 0 \rightarrow 1 \\
&= (1) \leftrightarrow 0 \rightarrow 1 \\
&= 1 \leftrightarrow 0 \rightarrow 1 \\
&= 1 \leftrightarrow 1 \\
&= 1
\end{align*}
\]
{{% /notice %}}
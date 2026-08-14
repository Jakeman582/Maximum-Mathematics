+++
title = 'Logical Order of Operations'
type = 'chapter'
weight = 3

[params]
  section = 3
+++

Just like in the arithmetic of real numbers, there is an order we should
follow when evaluating logical expressions.

For instance, in the arithmetic of real numbers, we abide by the following
rules:

1. Parentheses $()$
2. Exponents
3. Multiplication and division (left to right)
4. Addition and subtraction (left to right)

Using this scheme for evaluating arithmetic expressions, we do the
following:

\[
\begin{align*}
2 - 3^2 \cdot (4 + 6 \div 2) &= 2 - 3^2 \cdot (4 + 3) \\
&= 2 - 3^2 \cdot 7 \\
&= 2 - 9 \cdot 7 \\
&= 2 - 63 \\
&= -61
\end{align*}
\]

Here we introduce a scheme to help us determine which operations should be
done in order to achieve the correct final result.

## Why Order Matters
---

Consider the following example.

{{< example title="Evaluating $p \land q \lor r$" >}}
There are two ways to evaluate this expression.

++Method 1: $(p \land q) \lor r$++

<!-- TODO(image): truth table for Method 1, atomic propositions p, q, r in the usual
     dial order (p slowest, r fastest). Columns: p, q, r, p \land q (intermediary),
     (p \land q) \lor r.
     Rows: (0,0,0)->p∧q=0->0; (0,0,1)->0->1; (0,1,0)->0->0; (0,1,1)->0->1;
           (1,0,0)->0->0; (1,0,1)->0->1; (1,1,0)->1->1; (1,1,1)->1->1
     Embed with plain Markdown image syntax, not the figure shortcode (nested
     inside an example box — see CLAUDE.md). -->

++Method 2: $p \land (q \lor r)$++

<!-- TODO(image): truth table for Method 2, atomic propositions p, q, r in the usual
     dial order (p slowest, r fastest). Columns: p, q, r, q \lor r (intermediary),
     p \land (q \lor r).
     Rows: (0,0,0)->q∨r=0->0; (0,0,1)->1->0; (0,1,0)->1->0; (0,1,1)->1->0;
           (1,0,0)->0->0; (1,0,1)->1->1; (1,1,0)->1->1; (1,1,1)->1->1
     Same as above: embed with plain Markdown image syntax. -->

Note that from what we see,

$$(p \land q) \lor r \neq p \land (q \lor r)$$

when $p = 0$, $q = 0$, $r = 1$, and when $p = 0$, $q = 1$, $r = 1$.

Based on this calculation, we see that the expression

$$p \land q \lor r$$

is ambiguous — we don't know how to evaluate it until parentheses are
added, or until some inherent order of operations is established.
{{< /example >}}

## Establishing an Order of Operations
---

The following is a commonly used scheme for an order of operations:

1. Parentheses $()$
2. Negation $\neg$
3. Conjunction $\land$
4. Disjunction $\lor$
5. Exclusive-or $\veebar$
6. Implication $\longrightarrow$
7. Biconditional $\longleftrightarrow$

Using this order, we remove any ambiguity from logical expressions.

{{< example title="Re-evaluating $p \land q \lor r$" >}}
Using the previously established order of operations, we see that the
expression

$$p \land q \lor r$$

is equivalent to the expression

$$(p \land q) \lor r$$

Suppose we had that $p = 1$, $q = 0$, $r = 1$. Then we'd have that

\[
\begin{align*}
(p \land q) \lor r &= (1 \land 0) \lor 1 \\
&= 0 \lor 1 \\
&= 1
\end{align*}
\]

If we wanted to evaluate the disjunction first, we'd have to use
parentheses, since

$$p \land (q \lor r)$$

is not equivalent to the expression $p \land q \lor r$.
{{< /example >}}

## Using the Order of Operations
---

With the order of operations, we remove any ambiguity, and do not have to
rely on parentheses unless we want to give precedence to operations lower
in the order.

{{< example title="Evaluating a large expression" >}}
\[
\begin{align*}
0 \land 1 \to 0 \leftrightarrow 1 \lor (1 \veebar 1) \land 0 \to (1 \to \neg 1 \land (0 \lor 0))
&= 0 \land 1 \to 0 \leftrightarrow 1 \lor 0 \land 0 \to (1 \to \neg 1 \land 0) \\
&= 0 \land 1 \to 0 \leftrightarrow 1 \lor 0 \land 0 \to (1 \to 0 \land 0) \\
&= 0 \to 0 \leftrightarrow 1 \lor 0 \to 0 \\
&= 0 \to 0 \leftrightarrow 1 \to 0 \\
&= 1 \leftrightarrow 0 \\
&= 0
\end{align*}
\]

The final simplification reveals the final, overall truth value to be $0$.
{{< /example >}}

## A Note on Conventions
---

In this book, we adopt the above order of operations, but will only make
shallow use of it. Basically, what this effectively means is that we will
make very liberal use of parentheses, even when they aren't strictly
necessary.

While the relative order between $\neg$, $\land$, $\lor$, $\longrightarrow$,
and $\longleftrightarrow$ is *somewhat* standardized (heavy emphasis on the
word "somewhat"), it is hardly universal. This is especially true when
using $\veebar$ as well.

Many texts liberally just use $()$ as well. In some ways, the
order of operations presented here was entirely engineered to meet this
book's needs, and this order's scope is only contained within this book.

This is why, going forward, we will hardly rely on this order of
operations, and instead opt to use the standard trick of using $()$ to
indicate which operations take precedence over others.

## A Note on Organizing Arithmetic
---

A blank piece of paper allows one to express an idea anywhere on the page,
in any arrangement. But following a chain of arithmetic is much easier when
it's laid out in a consistent, organized manner.

In this book, any arithmetic (based on real numbers, logic, or some other
system) will generally be shown in a tabular format. There will be two
benefits to this:

1. Relatively easy to follow from one step to the next.
2. Justification for each step can be explicitly shown.

Let's see an example.

{{< example title="Re-evaluating a complicated expression" >}}
\[
\begin{array}{lll}
 & \boldsymbol{0 \land 1 \to 0 \leftrightarrow 1 \lor (1 \veebar 1) \land 0 \to (1 \to \neg 1 \land (0 \lor 0))} & \textbf{Reason} \\
= & 0 \land 1 \to 0 \leftrightarrow 1 \lor 0 \land 0 \to (1 \to \neg 1 \land 0) & \textit{Evaluate the parenthesized expressions.} \\
= & 0 \land 1 \to 0 \leftrightarrow 1 \lor 0 \land 0 \to (1 \to 0 \land 0) & \textit{Evaluate the negation.} \\
= & 0 \to 0 \leftrightarrow 1 \lor 0 \to 0 & \textit{Evaluate every conjunction.} \\
= & 0 \to 0 \leftrightarrow 1 \to 0 & \textit{Evaluate the disjunction.} \\
= & 1 \leftrightarrow 0 & \textit{Evaluate every implication.} \\
= & 0 & \textit{Evaluate the biconditional.}
\end{array}
\]
{{< /example >}}

There is a slightly different format we'll use for expressions that don't
already appear in a large, single block.

{{< example title="Evaluating another expression" >}}
\[
\begin{array}{llll}
\boldsymbol{0 \land (\neg 1 \to \neg 0) \veebar 1 \leftrightarrow 0 \lor 1} & = & 0 \land 1 \veebar 1 \leftrightarrow 0 \lor 1 & \textit{Evaluate the parenthesized implication.} \\
& = & 0 \veebar 1 \leftrightarrow 0 \lor 1 & \textit{Evaluate the conjunction.} \\
& = & 0 \veebar 1 \leftrightarrow 1 & \textit{Evaluate the disjunction.} \\
& = & 1 \leftrightarrow 1 & \textit{Evaluate the exclusive-or.} \\
& = & 1 & \textit{Evaluate the biconditional.}
\end{array}
\]
{{< /example >}}

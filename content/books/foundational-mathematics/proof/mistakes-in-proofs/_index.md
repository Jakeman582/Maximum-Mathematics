+++
title = 'Mistakes in Proofs'
type = 'chapter'
weight = 16

[params]
  section = 16
+++

So far, we've seen three different proof techniques: one direct, and
two indirect. Applying any of them requires close adherence to the
rules of inference discussed throughout this chapter.

However, if we make an argument that uses an invalid inference rule, we
have an invalid argument, and hence an invalid proof. In this section,
we discuss a few of the most common types of errors that can be made.

## Violating Hypotheses of a Theorem or Axiom
---

Remember that a theorem guarantees some result holds when a certain
collection of premises are satisfied. If even one premise fails to hold
in a given scenario, the theorem no longer applies — its conclusion may
still happen to be true, but not because of the theorem itself. Consider
the following "proof" that $1 = 2$:

Let $a$ and $b$ be real numbers such that $a = b$.

\[
\begin{array}{lll}
 & \boldsymbol{a = b} & \textbf{Reason} \\
\Longleftrightarrow & ab = b^2 & \text{Multiply both sides by } b. \\
\Longleftrightarrow & 0 = ab - b^2 & \text{Move } b^2 \text{ to the other side.} \\
\Longleftrightarrow & ab = 2ab - b^2 & \text{Add } ab \text{ to both sides.} \\
\Longleftrightarrow & ab - b^2 = 2ab - 2b^2 & \text{Subtract } b^2 \text{ from both sides.} \\
\Longleftrightarrow & b(a - b) = 2ab - 2b^2 & \text{Factor } b \text{ from the left-hand side.} \\
\Longleftrightarrow & b(a - b) = 2b(a - b) & \text{Factor } 2b \text{ from the right-hand side.} \\
\Longleftrightarrow & b = 2b & \text{Cancel the common } (a - b) \text{ term.} \\
\Longleftrightarrow & 1 = 2 & \text{Cancel the common } b \text{ term.}
\end{array}
\]

Clearly something went wrong somewhere, since obviously $1 \neq 2$.

The first thing to do is check the arithmetic on each line — in this
case, the arithmetic checks out, so that's not the issue. Take a close
look at the second-to-last step, where we went from $b(a-b) = 2b(a-b)$
to $b = 2b$ by canceling the common $(a-b)$ term — which we did by
dividing both sides by $(a-b)$.

{{< warning title="Dividing by zero" >}}
Remember that division by $0$ is undefined — how would we divide $100$
objects into $0$ groups? Always be sure any expression you divide by
isn't equal to $0$.
{{< /warning >}}

The problem is that we initially said $a = b$, meaning $a - b = 0$. So
when we divided both sides by $(a - b)$, we were really dividing by
$0$ — an invalid arithmetical manipulation, even though the arithmetic
was performed "correctly" once that division was allowed.

It's common when solving equations to cancel out like terms, and
there's a theorem to help with this:

{{< theorem title="The Cancellation Law" >}}
If $a \neq 0$, and $ab = ac$, then $b = c$.
{{< /theorem >}}

{{< proof >}}
When $a \neq 0$, the result comes about by simply dividing both sides
of the equation by $a$ and simplifying.
{{< /proof >}}

This theorem has two premises: $p_1 : a \neq 0$ and $p_2 : ab = ac$. If
both are true, the theorem guarantees the conclusion $c : b = c$. Now,
what happens when we try to apply this theorem to the flawed proof
above? There, $p_1 : a - b \neq 0$ and $p_2 : b(a - b) = 2b(a - b)$.
Premise $p_1$ is false — so this theorem does *not* guarantee $b = 2b$.

To be clear, it may still be the case that $b = 2b$ in some
instances — like when $b = 0$, since $0 = 2(0)$. But the truth of $b =
2b$ isn't guaranteed by the Cancellation Law; we'd have to appeal to an
entirely different theorem to establish it.

## Arguing by the Converse or Inverse
---

As described earlier in this chapter, an implication isn't in general
logically equivalent to its converse or inverse (though in some cases it
may be). Thus, we can't in general deduce the truth of a proposition by
examining the truth of its converse or inverse.

{{< example title="A positive square doesn't guarantee a positive base" >}}
Suppose we knew that $n^2 > 0$. Can we conclude $n > 0$?

We know that if $n > 0$, then $n^2 > 0$ (the converse) — a positive
number times a positive number is positive. But can we go the other
direction? No — a negative number times a negative number is also
positive. If $n = -1$, then $n^2 = 1 > 0$. This is a counter example to
$n^2 > 0 \to n > 0$, so $n^2 > 0 \not\Longrightarrow n > 0$.
{{< /example >}}

{{< example title="A negative base doesn't guarantee a negative square" >}}
Suppose we know $n < 0$. Can we conclude $n^2 < 0$? We know that when $n
\geq 0$, then $n^2 \geq 0$ (the inverse) — but as discussed above,
multiplying a negative number by a negative number always yields a
positive number. So $n^2$ is always greater than or equal to $0$ — there
is no real number $x$ such that $x^2 < 0$. For a counter example,
consider $n = -1$: $n^2 = (-1)(-1) = 1$, which certainly isn't negative.
{{< /example >}}

## Circular Reasoning
---

One particular error that occasionally occurs is implicitly assuming
the truth of the conclusion, instead of deducing its truth from the
premises. It sounds silly to prematurely assume the truth of a
conclusion, but many proofs require multiple paragraphs of carefully
written logic — and it can be easy to mistake the conclusion for a
premise, and start working out faulty results. It's a subtle mistake,
but a mistake nonetheless.

{{< example title="An invalid 'proof' that assumes its own conclusion" >}}
Consider the following flawed "proof" of the claim $n^2 \text{ is even}
\Longrightarrow n \text{ is even}$.

Suppose $n^2$ is even — this means there exists some integer $k$ such
that $n^2 = 2k$. Let $n = 2\ell$ for some integer $\ell$; then

\[
\begin{array}{lll}
\boldsymbol{n^2} & = & n \cdot n \\
                  & = & (2\ell)(2\ell) \\
                  & = & 4\ell^2 \\
                  & = & 2(2\ell^2) \\
                  & = & 2k
\end{array}
\]

Thus we must have $k = 2\ell^2$. Since $n = 2\ell$ where $\ell$ is an
integer, $n$ is even by definition, as desired.

This result may seem convincing — we've supposedly shown $n$ is double
some other integer. But after noting $n^2 = 2k$ (invoking the
definition of even), we asserted $n = 2\ell$ for some integer $\ell$ —
but that's exactly what we're trying to show in the first place! We
assumed $n$ was even, and arrived at the conclusion that $n$ was
even — which is meaningless, since it relies on an assumption about $n$
that was never logically justified.

It's worth pointing out that it *is* true that if $n^2$ is even, then
$n$ is even — this can be proven, just not by the "proof" given here.
{{< /example >}}

As this example demonstrates, one way this error occurs is that the
assumption is stated quickly, and then a bunch of results are derived
afterward. When reading an attempted proof, we may gloss over the
assumptions being made and focus on the results derived from them —
which is exactly where we might miss the fact that we're assuming the
truth of the conclusion. Always be on the lookout for unwarranted
assumptions in proposed proofs of a statement.

## Abusing Universal Generalization
---

Universal Generalization proves a universally quantified statement is
true by taking a specific, but arbitrarily chosen, element from the
universe of discourse, and manipulating it to show some result. Since
that element was arbitrarily chosen, any derived results hold for
whatever element we pick, and hence hold for all elements in the
universe.

Typically, we use a variable to represent the arbitrarily chosen
element — since its value is unknown, the only thing we know about it is
what's known about every element in the universe.

{{< example title="A legitimate use of an arbitrary variable" >}}
Suppose we want to prove a result true of all even integers. We can use
$n$ as a placeholder for any even integer we might pick, and since $n$
is even, there's some integer $k$ such that $n = 2k$. But which even
integer is $n$? It could be $2$, or $4$, or $788$, or $-100918$ — we
don't know, because $n$ is arbitrarily chosen. All we know is that $n$
is double some other integer $k$, which may be even or odd, but is just
*some* integer. Any manipulation of $k$ that works for all integers is
valid.
{{< /example >}}

Problems arise when the element we pick is *not* arbitrarily chosen.

{{< example title="An invalid 'proof' using a non-arbitrary choice" >}}
Consider the following invalid "proof" that for all integers $n$, $n =
n^2$.

Consider $n = 0$: $0 = 0^2$. Since the element we picked satisfies $n =
n^2$, the result holds by invoking Universal Generalization, as desired.

Note we could also pick $n = 1$, since $1 = 1^2$. Was our choice for $n$
arbitrary? No — we used knowledge about the number $0$ (and, as it
happens, $1$) that isn't shared by any other integer. The fact that $0 =
0^2$ and $1 = 1^2$ doesn't show that all integers equal their own
square — for example, $2 \neq 2^2 = 4$. Not every integer $n$ has the
property $n = n^2$, so we can't use that property when invoking
Universal Generalization. What we do with $n$ must be true for *all*
integers, not just $0$ and $1$.
{{< /example >}}

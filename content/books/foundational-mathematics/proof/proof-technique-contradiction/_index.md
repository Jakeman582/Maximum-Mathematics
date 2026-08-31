+++
title = 'Proof Technique: Contradiction'
type = 'chapter'
weight = 15
draft = true

[params]
  section = 15
+++

As discussed in the previous section, when trying to prove a statement
like $p \to q$, we can take an indirect approach by proving
some other statement, logically equivalent to $p \to q$, is true. There,
the indirect method we used was the contrapositive. In this section, we
use the Rule of Contradiction to arrive at another indirect proof
method.

## The Underlying Argument
---

Consider some arbitrary statement $p$. Since the implication $(\neg p
\to F_0) \to p$ is always true (as we saw in the
section on Rules of Inference), we can write $(\neg p \to
F_0) \Longrightarrow p$ — meaning it's a valid rule of inference,
representing the valid argument

\[
\begin{array}{l}
\neg p \to F_0 \\
\hline
\therefore p
\end{array}
\]

Now suppose we're trying to prove $p \to q$. What happens if
we assume $p = 1$ and $q = 0$ (meaning $\neg q = 1$)? The implication $p
\to q$ would be false. Let's look at what happens in an argument where
we assume both $p$ and $\neg q$ as premises: a truth table confirms that

$$[(p \land \neg q) \to F_0] \Longleftrightarrow (p \to q),$$

which means the argument

\[
\begin{array}{l}
p \\
\neg q \\
\hline
\therefore F_0
\end{array}
\]

is logically equivalent to the argument

\[
\begin{array}{l}
p \\
\hline
\therefore q
\end{array}
\]

Thus, in order to show $p \Longrightarrow q$, we could instead show $(p
\land \neg q) \Longrightarrow F_0$. This is the idea behind ==proof by
contradiction==: assume the negation of the desired conclusion as an
additional premise, then show that doing so yields a contradiction.

## Revisiting a Previous Theorem
---

Let's once again revisit Theorem 2.13.11: "If $n^2$ is odd, then $n$ is
odd." To prove this by contradiction, we first identify our premises.
$n^2$ being odd is one; but in a proof by contradiction, we also have
the negation of the conclusion as a premise. Since the conclusion is "$n$
is odd," its negation is "$n$ is not odd" — that is, "$n$ is even." So
our premises are:

$$n^2 \text{ is odd} \qquad n \text{ is even.}$$

Using the definitions of even and odd as usual: there's an integer $a$
such that $n = 2a$. Squaring $n$:

\[
\begin{array}{lll}
\boldsymbol{n^2} & = & (2a)^2 \\
                  & = & 4a^2 \\
                  & = & 2(2a^2) \\
                  & = & 2b
\end{array}
\]

Since $n^2$ is double whatever integer $b$ happens to be, $n^2$ is even.
But this directly contradicts our premise that $n^2$ is odd! Thus,
assuming $n$ is even yields a contradiction whenever we assume $n^2$ is
odd — so $n$ can't be even, and must be odd, as desired.

{{< theorem title="If n² is odd, then n is odd (by contradiction)" >}}
If $n^2$ is odd, then $n$ is odd.
{{< /theorem >}}

{{< proof >}}
Presume (for the purpose of showing a contradiction) that $n$ is even.
Then there's some integer $k$ such that $n = 2k$. Squaring $n$:

\[
\begin{array}{lll}
\boldsymbol{n^2} & = & (2k)^2 \\
                  & = & 4k^2 \\
                  & = & 2(2k^2) \\
                  & = & 2b
\end{array}
\]

showing $n^2$ is even. However, this contradicts the premise that $n^2$
is odd. Thus, our assumption that $n$ is even yields a contradiction, so
we must have that $n$ is odd, as desired.
{{< /proof >}}

Over the past three sections, we've proven "if $n^2$ is odd, then $n$ is
odd" in three different ways — directly, indirectly via the
contrapositive, and indirectly via a contradiction. This is the
versatility of mathematical logic: if we're ever stuck trying to prove a
theorem one way, we can try another tactic.

Some theorems are established in so many ways it's hard to keep track of
how many proofs exist — there are entire books dedicated to proofs of
the Pythagorean Theorem alone. But not every theorem is so easily
established in a variety of ways. Perhaps most infamous is Fermat's Last
Theorem: for over 350 years, mathematicians tried to either establish or
disprove the statement that when $n > 2$, there are no integers $a$,
$b$, $c$ (with $abc \neq 0$) satisfying $a^n + b^n = c^n$. A proof was
eventually given by Andrew Wiles in the mid-1990s, requiring such
abstract and sophisticated methods that there are entire graduate
courses dedicated to studying it.

As you study more mathematics, you'll collect ever more tools for
proving theorems, or providing counter-examples. For now, let's show
some more results using the method of contradiction.

## Numbers Can't Be Both Even and Odd
---

Notice that in some of our previous proofs, we used the fact that if $n$
isn't even, it must be odd. For example, the contrapositive proof that
$n^2$ odd implies $n$ odd required us to assume that $n$ not being odd
meant $n$ was even. We haven't actually proven this — are there numbers
that are both even and odd? Most readers already know none exist, and
now we can prove it.

{{< theorem title="An even integer is never odd" >}}
If $n$ is even, then $n$ is not odd.
{{< /theorem >}}

{{< proof >}}
By hypothesis, $n$ is even, so there's some integer $a$ such that $n =
2a$. Presume (for the purpose of showing a contradiction) that $n$ also
happened to be odd — meaning there's some integer $b$ such that $n = 2b
+ 1$.

Since we're assuming it's simultaneously true that $n = 2a$ and $n = 2b
+ 1$, we must have

\[
\begin{array}{lll}
 & \boldsymbol{2a = 2b + 1} & \textbf{Reason} \\
\Longleftrightarrow & 2a - 2b = 1 & \text{Subtract } 2b \text{ from both sides.} \\
\Longleftrightarrow & 2(a - b) = 1 & \text{Factor out the 2.} \\
\Longleftrightarrow & 2c = 1 & \text{Substitute } c = a - b.
\end{array}
\]

Thus, by assuming $n$ is both even and odd, we've shown there's some
integer $c$ such that $1 = 2c$, meaning $1$ is even. But the integer $1$
is known to not be even. Thus, assuming $n$ is odd while also assuming
$n$ is even yields a contradiction.

Hence, $n$ must not be odd, as desired.
{{< /proof >}}

A few things worth pointing out about this proof. First, notice we used
the letter $a$ when assuming $n$ was even, and $b$ when assuming $n$ was
odd — not the same letter for both, since $n$ can't simultaneously equal
$2a$ *and* $2a + 1$ for the same value of $a$ (that would mean two
consecutive integers are equal, which is absurd).

Second, when we reached the contradiction, we asserted it was the
assumption of $n$ being odd that was the problem, not the assumption of
$n$ being even. Remember, the hypothesis of the theorem is that $n$ is
even — we're only considering even integers, and testing what happens if
$n$ was *also* assumed odd. Once we reach a contradiction, either the
"even" assumption or the "odd" assumption must be faulty — but since $n$
being even is the hypothesis we're given, it must be the "odd"
assumption that's at fault.

Finally, notice the contradiction we arrived at had nothing to do with
$n$ being even or odd at all — it was about the number $1$. When using
the contradiction method, the contradiction we arrive at may be about
the hypothesis of the proposition being examined, or it might be some
piece of previous knowledge that happens to show up. In some sense,
every piece of knowledge we have can be used as a premise, it's just
that we don't necessarily need — or want — to explicitly lay out every
premise, or the statements of our theorems would become unwieldy.

## Another Example
---

{{< theorem title="If m + n is even, m and n have the same parity" >}}
Let $m$ and $n$ be integers where $m + n$ is even. Then either $m$ and
$n$ are both even, or $m$ and $n$ are both odd.
{{< /theorem >}}

{{< proof >}}
By hypothesis, $m$ and $n$ are integers where $m + n$ is even, meaning
there's some integer $a$ such that $m + n = 2a$.

Presume (for the purpose of showing a contradiction) that $m$ is even
and $n$ is odd (the proof is nearly identical if $m$ is odd and $n$ is
even). Thus $m = 2b$ and $n = 2c + 1$ for some integers $b$ and $c$.
Adding $m$ and $n$ together:

\[
\begin{array}{lll}
\boldsymbol{m + n} & = & (2b) + (2c + 1) \\
                    & = & 2b + 2c + 1 \\
                    & = & 2(b + c) + 1 \\
                    & = & 2d + 1
\end{array}
\]

Since $b$ and $c$ are integers, $b + c$ is an integer too, meaning $m +
n$ is odd by definition. However, this contradicts our premise that $m
+ n$ must be even. Hence, $m$ and $n$ can't have different parity — as
such, they must have the same parity, as desired.
{{< /proof >}}

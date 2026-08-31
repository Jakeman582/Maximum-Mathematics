+++
title = 'Proof Technique: Direct Proofs'
type = 'chapter'
weight = 13
draft = true

[params]
  section = 13
+++

At this point, we've talked a lot about mathematical logic, arguments,
and some common terminology. In this section, we introduce a method for
providing a proof for a proposition — the most straightforward
technique we have at our disposal.

## The Underlying Argument
---

Consider a statement such as $p \to q$. How would we show
this implication is always true — that is, that $p \Longrightarrow q$?
Suppose we (somehow) knew that $p \Longrightarrow r$ and $r \Longrightarrow q$.
This reduces to the Law of the Syllogism: since $p \to r$ and $r \to q$
are always true,

\[
\begin{array}{l}
p \\
p \to r \\
r \to q \\
\hline
\therefore q
\end{array}
\]

The argument

\[
\begin{array}{l}
p \\
p \to r \\
r \to q \\
\hline
\therefore p \to q
\end{array}
\]

is the basis for any ==direct proof==. This strategy is called a direct
proof because the proposition we're trying to show has $p$ as the
hypothesis and $q$ as the conclusion — the first premise has $p$ as the
hypothesis, and the last premise has $q$ as the conclusion. We're
essentially chaining a bunch of implications together to get from $p$ to
$q$.

## An In-Depth Example
---

Let's break down a simple example of a proof for a mathematical
proposition. Since we're providing a proof, we can call the proposition
a theorem.

Consider the statement "If $n$ is an even integer, then $n + 1$ is an
odd integer." Since the hypothesis and conclusion are both about
integers, our universe of discourse is $\mathbb{Z}$. Implicit as usual
is the universal quantifier, so this rewrites as $\forall n\ [e(n)
\to o(n + 1)]$ (we don't write $\forall n \in \mathbb{Z}$
explicitly, since it's clear from context that we're only considering
integers).

So, how do we show $e(n) \Longrightarrow o(n + 1)$? We can appeal to the
definitions of even and odd. Since we're asserting $n$ is even (if it
weren't, the implication would be trivially true), there's some integer
$k$ such that $n = 2k$. But if $n = 2k$, then $n + 1 = 2k + 1$ — always
true, since we can substitute $2k$ for $n$ wherever it appears. Now,
$2k + 1$ satisfies the definition of odd. Since $n + 1 = 2k + 1$, and
$2k + 1$ is odd, $n + 1$ is odd. We don't know exactly which integer $k$
or $n$ is, except that $n$ must be even — but everything we did applies
to *all* even integers, meaning adding one to an even integer always
gives an odd integer.

Written out formally, with $e(n)$, $o(n)$, $p(n) : \exists k\ [n = 2k]$,
and $q(n) : \exists k\ [n = 2k + 1]$, and picking a specific but
arbitrary integer $n_0$ where $e(n_0)$ is assumed as a premise:

\[
\begin{array}{lll}
\textbf{Step} & \textbf{Proposition} & \textbf{Reason} \\
(1) & \forall n\ [e(n) \leftrightarrow p(n)] & \text{Definition of Even Integer} \\
(2) & e(n_0) \leftrightarrow p(n_0) & \text{Universal Specification on (1)} \\
(3) & (e(n_0) \to p(n_0)) \land (p(n_0) \to e(n_0)) & (p \leftrightarrow q) \Longleftrightarrow (p \to q) \land (q \to p) \\
(4) & e(n_0) \to p(n_0) & \text{Conjunctive Simplification on (3)} \\
(5) & e(n_0) & \text{Assumed Premise} \\
(6) & p(n_0) & \text{Modus Ponens on (4) and (5)} \\
(7) & \forall n\ [p(n) \to q(n + 1)] & (n = 2k) \Longleftrightarrow (n + 1 = 2k + 1) \text{ for all integers } n \\
(8) & p(n_0) \to q(n_0 + 1) & \text{Universal Specification on (7)} \\
(9) & q(n_0 + 1) & \text{Modus Ponens on (6) and (8)} \\
(10) & \forall n\ [o(n) \leftrightarrow q(n)] & \text{Definition of Odd Integer} \\
(11) & o(n_0 + 1) \leftrightarrow q(n_0 + 1) & \text{Universal Specification on (10)} \\
(12) & (o(n_0 + 1) \to q(n_0 + 1)) \land (q(n_0 + 1) \to o(n_0 + 1)) & (p \leftrightarrow q) \Longleftrightarrow (p \to q) \land (q \to p) \\
(13) & q(n_0 + 1) \to o(n_0 + 1) & \text{Conjunctive Simplification on (12)} \\
(14) & o(n_0 + 1) & \text{Modus Ponens on (9) and (13)} \\
(15) & \therefore \forall n\ [e(n) \to o(n + 1)] & \text{Universal Generalization on (5) and (14)}
\end{array}
\]

One last thing to note: the same placeholder $n_0$ is used throughout —
in the Universal Specification steps and the assumed premise alike —
because we want to show that when *a particular* integer is even, the
integer one more than it is odd. All our manipulations have to happen on
the exact same number, or we wouldn't know the result holds.

And there we have it — a fully worked-out proof for a simple result.
Most of the time, proof-writing uses a mixture of English, arithmetic,
and algebraic manipulation written out in a paragraph format. We showed
this one using formal logic to demonstrate that, if we're ever unsure
whether a proof is correct, we can fall back on the tools of
mathematical logic. From here on, we'll write proofs using this more
conventional, paragraph-style approach instead.

## A Conventionally Written Proof
---

Let's rewrite the previous, very lengthy proof in a more conventional
style.

{{< theorem title="If n is even, then n + 1 is odd" >}}
If $n$ is even, then $n + 1$ is odd.
{{< /theorem >}}

{{< proof >}}
Because $n$ is even, there exists some integer, which we'll call $k$,
such that $n = 2k$. Adding $1$ to both sides yields $n + 1 = 2k + 1$.
But $2k + 1$ is odd by definition, and since $n + 1 = 2k + 1$, we must
have that $n + 1$ is odd, as desired.
{{< /proof >}}

This proof is much more compact, and much easier to follow. Again, if
we're ever unsure whether a proof is correct, we can write out the open
statements, refer to the rules of inference, and lay out an argument in
tabular form. Theorems and their proofs will be presented in specially
marked magenta boxes going forward — if you'd like to try providing a
proof before seeing one (always an excellent exercise), the proof stays
collapsed until you're ready to see it.

## More Theorems and Proofs Regarding Even and Odd Numbers
---

Our next few theorems expand on the idea of even and odd numbers.

{{< theorem title="If n is odd, then n + 1 is even" >}}
If $n$ is odd, then $n + 1$ is even.
{{< /theorem >}}

{{< proof >}}
Because $n$ is odd, there exists some integer $k$ such that $n = 2k +
1$. Adding $1$ to both sides yields $n + 1 = 2k + 1 + 1 = 2k + 2$.
Notice that a factor of $2$ can be brought out on the right-hand side:
$n + 1 = 2(k + 1)$. But $k + 1$ is an integer, which we can refer to as
$\ell$. Thus, there exists some integer $\ell$ such that $n + 1 = 2\ell$,
meaning $n + 1$ is even, as desired.
{{< /proof >}}

{{< theorem title="If n is even, then n + 2 is even" >}}
If $n$ is even, then $n + 2$ is even.
{{< /theorem >}}

{{< proof >}}
By the previous theorem, since $n$ is even, $n + 1$ is odd. Then by the
theorem before that, $(n + 1) + 1$ must be even. Notice that $(n + 1) +
1 = n + 2$, meaning $n + 2$ is even, as desired.
{{< /proof >}}

{{< theorem title="If n is odd, then n + 2 is odd" >}}
If $n$ is odd, then $n + 2$ is odd.
{{< /theorem >}}

{{< proof >}}
This result is proved using nearly identical logic to the previous
theorem.
{{< /proof >}}

Let's quickly discuss the first two theorems above. They may seem
obvious to anyone with a high-school education, but they give us a
chance to practice writing proofs using easy results — meaning we can
easily check the logic used is valid. The main tool in both proofs was
the definitions of even and odd integer, with a little algebra to make
sure the relevant equations stayed balanced after adding $1$ to $n$.

The third theorem had an interesting proof: we used two previous
theorems, which is completely valid, since they're already proven to be
true. The fourth theorem's proof is perhaps the simplest so far — we
could have invoked the second theorem first on $n$, then the third on $n
+ 1$, but the similarity to the third theorem's proof was close enough
that we could almost copy it directly. Sometimes this is warranted;
other times there's enough of a difference to necessitate an original
proof.

Let's expand our understanding of even and odd numbers even further.

{{< theorem title="The sum of two even integers is even" >}}
If $m$ and $n$ are both even, then $m + n$ is even.
{{< /theorem >}}

{{< proof >}}
Since $m$ is even, there exists some integer $a$ such that $m = 2a$.
Likewise, there's some integer $b$ such that $n = 2b$. Thus,

$$m + n = 2a + 2b = 2(a + b).$$

Since $a$ and $b$ are integers, $a + b$ must be an integer too, which
we'll refer to as $c$. Hence $m + n = 2c$, which satisfies the
definition of even. Thus, $m + n$ is even, as desired.
{{< /proof >}}

{{< theorem title="The sum of an even and an odd integer is odd" >}}
If $m$ is even, and $n$ is odd, then $m + n$ is odd.
{{< /theorem >}}

{{< proof >}}
Since $m$ is even and $n$ is odd, there exist integers $a$ and $b$ such
that $m = 2a$ and $n = 2b + 1$. Adding $m$ and $n$ together:

$$m + n = 2a + 2b + 1 = 2(a + b) + 1.$$

Since $a$ and $b$ are integers, $a + b$ is also an integer, which we'll
call $c$. Thus $m + n = 2c + 1$, satisfying the definition of odd. Hence
$m + n$ is odd, as desired.
{{< /proof >}}

{{< theorem title="The sum of two odd integers is even" >}}
If $m$ and $n$ are both odd, then $m + n$ is even.
{{< /theorem >}}

{{< proof >}}
Since $m$ and $n$ are both odd, there exist integers $a$ and $b$ such
that $m = 2a + 1$ and $n = 2b + 1$. Adding $m$ and $n$ together:

\[
\begin{array}{lll}
\boldsymbol{m + n} & = & (2a + 1) + (2b + 1) \\
                    & = & 2a + 2b + 2 \\
                    & = & 2(a + b + 1)
\end{array}
\]

where in the last step, we simply factored a $2$ out of all three
terms. Since $a$, $b$, and $1$ are all integers, $a + b + 1$ is an
integer too, which we'll call $c$ — meaning $m + n = 2c$, so $m + n$ is
even, as desired.
{{< /proof >}}

It's usually a good idea to play around with a theorem to see how it
works in practice.

{{< example title="Applying the addition theorems" >}}
Both $6$ and $18$ are even, and $6 + 18 = 24 = 2 \cdot 12$, so their sum
is also even — matching what we'd expect.

$-3$ is odd and $98$ is even, so the sum should be odd: $-3 + 98 = 95 =
94 + 1 = 2 \cdot 47 + 1$. As predicted.

Both $-17$ and $1983$ are odd, so the sum should be even: $-17 + 1983 =
1966 = 2 \cdot 983$. As predicted.
{{< /example >}}

The next proof involves a product instead of a sum.

{{< theorem title="The product of two odd integers is odd" >}}
If $m$ and $n$ are both odd, then $mn$ is odd.
{{< /theorem >}}

{{< proof >}}
Since $m$ and $n$ are both odd, there exist integers $a$ and $b$ such
that $m = 2a + 1$ and $n = 2b + 1$. Multiplying $m$ and $n$ together:

\[
\begin{array}{lll}
\boldsymbol{mn} & = & (2a + 1)(2b + 1) \\
                & = & 4ab + 2a + 2b + 1 \\
                & = & 2(2ab + a + b) + 1 \\
                & = & 2c + 1
\end{array}
\]

Because there exists an integer $c$ such that $mn = 2c + 1$, $mn$ is
odd by definition, as desired.
{{< /proof >}}

Notice that in the last step, we simply replaced the quantity $2ab + a
+ b$ with the single letter $c$ — since $2$, $a$, and $b$ are integers,
$2ab + a + b$ must be an integer too, so we can just refer to it as $c$
to make the subsequent step easier. Just like we can always make
substitutions in algebra, we can make substitutions for algebraic
expressions in proofs too — we should just make clear what substitution
is being used.

## Theorems and Proofs Involving Square Numbers
---

Let's explore some more theorems involving square numbers, along with
even and odd numbers.

{{< theorem title="If n is even, then n² is even" >}}
If $n$ is even, then $n^2$ is even.
{{< /theorem >}}

{{< proof >}}
Because $n$ is even, there's some integer $k$ such that $n = 2k$.
Squaring $n$:

\[
\begin{array}{lll}
\boldsymbol{n^2} & = & (2k)^2 \\
                  & = & 4k^2 \\
                  & = & 2 \cdot 2k^2
\end{array}
\]

Since $k$ and $2$ are both integers, $2k^2$ is an integer too, which we
can call $k_0$. This means $n^2 = 2k_0$, so $n^2$ is even, as desired.
{{< /proof >}}

The algebra in a proof like this can be handled however you feel
comfortable — simple steps can be omitted or combined, but anything
tricky should be clearly laid out.

{{< theorem title="If n is odd, then n² is odd" >}}
If $n$ is odd, then $n^2$ is odd.
{{< /theorem >}}

{{< proof >}}
Because $n$ is odd, $n^2 = n \cdot n$, a product of two odd integers.
The previous theorem on products of odd integers guarantees $n \cdot n$
is odd, so $n^2$ is odd, as desired.
{{< /proof >}}

This proof is another demonstration of how previous theorems can be
used in the proofs of other theorems.

The next theorem's proof has some tricky algebra, so it'll be laid out
more carefully. This theorem is actually just the converse of the
previous one — and remember, just because a theorem is true doesn't
mean its converse is automatically true.

{{< theorem title="If n² is odd, then n is odd" >}}
If $n^2$ is odd, then $n$ is odd.
{{< /theorem >}}

{{< proof >}}
Since $n^2$ is odd, there's some integer $k$ such that $n^2 = 2k + 1$.
Moving the $1$ to the left-hand side gives $n^2 - 1 = 2k$. We have a
difference of squares (since $1 = 1^2$), so we can factor the left-hand
side:

$$(n - 1)(n + 1) = 2k.$$

Notice that $(n - 1) + 2 = (n + 1)$, meaning $(n-1)$ and $(n+1)$ are
either both even, or both odd. Since $(n-1)(n+1) = 2k$, whatever integer
$(n-1)(n+1)$ equals must be even — meaning at least one of $(n-1)$ and
$(n+1)$ is even. But since both must be even or both must be odd, we
have that both $(n-1)$ and $(n+1)$ are even.

Since $(n-1)$ is even, and $(n-1) + 1 = n$, the theorem stating that an
even integer plus one is odd guarantees that $n$ must be odd. Hence,
$n$ is odd, as desired.
{{< /proof >}}

This proof required a common algebraic trick — factoring a difference of
squares — but just because it's common doesn't mean it's an obvious
step. It also required knowing a bit more about even and odd integers
than what's shown here (though these facts aren't too hard to prove
either). Why that trick specifically, and not one of the myriad other
tricks available?

If we're lucky, or clever enough to squint at the problem just right, we
might have a flash of insight on how to proceed. But we also could have
tried taking the square root of both sides of the first equation:
$n = \sqrt{2k+1}$. What do we do with that? Nothing seems like a good
next step — we're stuck. We do have $n$ isolated on the left-hand side,
which is generally a good strategy in proofs, but here it leaves us with
no way to proceed. Perhaps if we were really good at handling roots in
equations we could push through, but nothing comes to mind immediately.

Sometimes we'll have no choice but to deal with sticky algebraic
expressions — but other times, clever logic can free us from having to
rely on algebra that might be too clever for us to grasp in a timely
manner. One such logical strategy is the subject of the next section.

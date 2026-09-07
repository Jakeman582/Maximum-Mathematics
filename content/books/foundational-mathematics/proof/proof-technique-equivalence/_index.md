+++
title = 'Proof Technique: Equivalence'
type = 'chapter'
weight = 17

[params]
  section = 17
+++

All of the proof techniques we've discussed so far only seem to go one
way. When we provide a proof for $a \Longrightarrow b$, what we're really
saying is that if $a$ is true, then $b$ is true too — but since an
implication isn't generally logically equivalent to its converse, we
can't go the other way: knowing $b$ is true doesn't necessarily tell us
$a$ is also true.

However, just because that's true in general doesn't mean there are
never instances where an implication *is* logically equivalent to its
converse. Consider the statement $n \text{ is even} \Longrightarrow n + 1
\text{ is odd}$. Clearly, its converse is also a logical implication:
$n + 1 \text{ is odd} \Longrightarrow n \text{ is even}$. So, whenever "$n$
is even" is true, "$n + 1$ is odd" is also true — and vice versa. These
propositions are either simultaneously true, or simultaneously false.
Hence, we can write $n \text{ is even} \Longleftrightarrow n + 1 \text{ is
odd}$.

In this section, we demonstrate a technique for proving statements of
the form $a \Longleftrightarrow b$.

## The General Strategy
---

The technique for showing a logical equivalence is based on the fact
that $(p \leftrightarrow q) \Longleftrightarrow (p \to q) \land (q \to p)$.
If we ever want to prove $a \Longleftrightarrow b$, we need to provide a
proof for $a \Longrightarrow b$, and a proof for $b \Longrightarrow a$. As a
reminder: to prove $a \Longrightarrow b$, we assume $a$ is true and deduce
the truth of $b$; to prove $b \Longrightarrow a$, we assume $b$ is true and
deduce the truth of $a$. Of course, any proof technique already
discussed can be used for either direction.

Since a theorem is almost always implicitly universally quantified,
what we're really trying to show is $\forall x\ [p(x) \leftrightarrow
q(x)]$ for every element $x$ within some universe $\mathcal{U}$. The
argument

\[
\begin{array}{l}
\forall x\ [p(x) \to q(x)] \\
\forall x\ [q(x) \to p(x)] \\
\hline
\therefore \forall x\ [p(x) \leftrightarrow q(x)]
\end{array}
\]

is the basis for any proof of logical equivalence: once both
directions have each been established on their own — using whatever
proof technique fits each one — the Law of Mutual Implication combines
them into the desired biconditional.

## Another Result About Even and Odd Numbers
---

{{< theorem title="n is even if and only if n² is even" >}}
$n$ is even if and only if $n^2$ is even.
{{< /theorem >}}

{{< proof >}}
++$n$ is even $\Longrightarrow$ $n^2$ is even++

Suppose $n$ is an even integer. Then there's some integer $k$ such that
$n = 2k$. Squaring $n$:

\[
\begin{array}{lll}
\boldsymbol{n^2} & = & n \cdot n \\
                  & = & (2k)(2k) \\
                  & = & 4k^2 \\
                  & = & 2(2k^2) \\
                  & = & 2\ell
\end{array}
\]

Because $k$ is an integer, $2k^2 = \ell$ is an integer too, meaning
$n^2$ is the double of some integer. Thus, $n^2$ is even, as desired.

++$n$ is even $\Longleftarrow$ $n^2$ is even++

Here, we choose to work with the contrapositive: $n \text{ is odd} \to
n^2 \text{ is odd}$. Supposing $n$ is odd, there's some integer $k$ such
that $n = 2k + 1$. Squaring $n$:

\[
\begin{array}{lll}
\boldsymbol{n^2} & = & n \cdot n \\
                  & = & (2k + 1)(2k + 1) \\
                  & = & 4k^2 + 4k + 1 \\
                  & = & 2(2k^2) + 2(2k) + 1 \\
                  & = & 2(2k^2 + 2k) + 1 \\
                  & = & 2\ell + 1
\end{array}
\]

Because $k$ is an integer, so is $2k^2 + 2k$, meaning $\ell$ is an
integer. Thus, since $n^2 = 2\ell + 1$ for integer $\ell$, $n^2$ is odd.
This proves $n \text{ is odd} \to n^2 \text{ is odd}$, and since this is
logically equivalent to its contrapositive, we've also proven $n^2
\text{ is even} \to n \text{ is even}$, as desired.

++$n$ is even $\Longleftrightarrow$ $n^2$ is even++

Because we've shown $n \text{ is even} \Longrightarrow n^2 \text{ is even}$
and $n \text{ is even} \Longleftarrow n^2 \text{ is even}$, we have $n
\text{ is even} \Longleftrightarrow n^2 \text{ is even}$, as desired.
{{< /proof >}}

In this proof, we clearly delineated which part we were working on with
labeled headers — this keeps things organized, and we finished by
making clear we've shown the logical implication works both ways,
meaning we have a logical equivalency.

Notice also that this theorem uses the "if and only if" construct — as
a reminder, that's how biconditionals are specified. It's also worth
pointing out that we used a direct approach for "$n$ is even
$\Longrightarrow$ $n^2$ is even," but an indirect approach for the reverse
direction. We're allowed to mix and match proof techniques for either
part — all we need is *some* proof, regardless of the technique.

## Multiple Equivalencies
---

Of course, multiple propositions may be logically equivalent to each
other. Suppose we knew $a \Longleftrightarrow b$ and $a \Longleftrightarrow c$.
Can we conclude $b \Longleftrightarrow c$? Since $a \Longleftrightarrow b$ and $a
\Longleftrightarrow c$, we have $b \Longrightarrow a$ and $a \Longrightarrow c$.
Thus, by the Law of the Syllogism, $b \Longrightarrow c$. Similarly, we also
have $c \Longrightarrow a$ and $a \Longrightarrow b$, meaning $c \Longrightarrow b$.
Finally, because we have both $b \Longrightarrow c$ and $c \Longrightarrow b$, we
must also have $b \Longleftrightarrow c$. This means overall,

$$a \Longleftrightarrow b \Longleftrightarrow c.$$

The technique for showing multiple equivalencies is based on the fact
that

$$(p_1 \leftrightarrow p_2 \leftrightarrow p_3) \leftrightarrow [(p_1 \to p_2) \land (p_2 \to p_3) \land (p_3 \to p_1)].$$

The most straightforward way to show $a \Longleftrightarrow b \Longleftrightarrow
c$ is to first show $a \Longrightarrow b$, then $b \Longrightarrow c$, and
finally $c \Longrightarrow a$.

Extending this to three open propositions $p(x)$, $q(x)$, and $r(x)$,
the argument

\[
\begin{array}{l}
\forall x\ [p(x) \to q(x)] \\
\forall x\ [q(x) \to r(x)] \\
\forall x\ [r(x) \to p(x)] \\
\hline
\therefore \forall x\ [p(x) \leftrightarrow q(x) \leftrightarrow r(x)]
\end{array}
\]

is the basis for showing all three are logically equivalent — proving
each implication around the cycle separately is enough to guarantee
$p(x)$, $q(x)$, and $r(x)$ all share the same truth value, for every
$x$.

{{< theorem title="Three equivalent statements about even and odd" >}}
The following statements are all logically equivalent:

- $n$ is odd
- $n + 1$ is even
- $n^2$ is odd
{{< /theorem >}}

{{< proof >}}
++$n$ is odd $\Longrightarrow$ $n + 1$ is even++

This is a theorem we already proved in the section on direct proofs.

++$n + 1$ is even $\Longrightarrow$ $n^2$ is odd++

Since $n + 1$ is even, we know $n$ is odd. Furthermore, because $n$ is
odd, a theorem we already proved guarantees $n^2$ is odd, as desired.

++$n^2$ is odd $\Longrightarrow$ $n$ is odd++

This is a theorem we already proved in the section on indirect proofs.

++$n$ is odd $\Longleftrightarrow$ $n + 1$ is even $\Longleftrightarrow$ $n^2$ is odd++

Because we've shown $n \text{ is odd} \Longrightarrow n + 1 \text{ is
even}$, $n + 1 \text{ is even} \Longrightarrow n^2 \text{ is odd}$, and $n^2
\text{ is odd} \Longrightarrow n \text{ is odd}$, we have

$$n \text{ is odd} \Longleftrightarrow n + 1 \text{ is even} \Longleftrightarrow n^2 \text{ is odd}$$

as desired. This completes the proof.
{{< /proof >}}

Because of all the work we did previously, we were able to make quick
work of this proof — instead of working out every result from first
principles, we simply appealed to previously established theorems to do
all the heavy lifting.

Note that we can extend logical equivalency to as many propositions as
we can logically show. For example, if we wanted to show that some
collection of $n$ propositions were all logically equivalent, we'd make
use of the fact that

\[
\begin{array}{llll}
(p_1 \leftrightarrow p_2 \leftrightarrow \cdots \leftrightarrow p_n) & \Longleftrightarrow & (p_1 \to p_2) & \land \\
 & & (p_2 \to p_3) & \land \\
 & & \vdots & \\
 & & (p_{n-1} \to p_n) & \land \\
 & & (p_n \to p_1) &
\end{array}
\]

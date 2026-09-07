+++
title = 'Proof Technique: Indirect Proofs'
type = 'chapter'
weight = 14

[params]
  section = 14
+++

As seen in the last section, a direct proof is a proof method where we
assume the truth of the hypothesis, and show the truth of the
conclusion. But the last example in that section shows that a direct
proof can sometimes be quite tricky to devise.

If we're ever stuck trying to show a proposition is a theorem by taking
a direct approach, we can use mathematical logic to prove an equivalent
implication instead. Since we're not proving the original implication to
be a logical implication, but rather showing a logically equivalent one
is, this is called an **indirect** approach.

## The Underlying Argument
---

Suppose we're trying to show $p \to q$ is a logical implication for
every element of some universe $\mathcal{U}$ — that is, $\forall x\
[p(x) \Longrightarrow q(x)]$, meaning the argument

\[
\begin{array}{l}
p(x_0) \\
\hline
\therefore \forall x\ [p(x) \to q(x)]
\end{array}
\]

is valid, where $x_0$ is an arbitrarily chosen element of $\mathcal{U}$.
Remember that an implication is logically equivalent to its
contrapositive: $(p \to q) \Longleftrightarrow (\neg q \to \neg p)$. As
such, this argument is logically equivalent to

\[
\begin{array}{l}
\neg q(x_0) \\
\hline
\therefore \forall x\ [\neg q(x) \to \neg p(x)]
\end{array}
\]

so if we ever want to prove a statement of the form $\forall x\
[p(x) \to q(x)]$, we can instead prove $\forall x\ [\neg q(x) \to
\neg p(x)]$. This method is also commonly called **Proof by
Contraposition**.

We won't re-derive why these two arguments are equivalent here, since
that's just the logical equivalence of an implication and its
contrapositive from the previous chapter — instead, we want to get
comfortable taking the contrapositive of a given implication, and
showing that the contrapositive is always true.

## Revisiting a Previous Proof
---

Recall Theorem 2.13.11, whose proof required some tricky algebra. Let's
revisit it with a different proof. Restating the theorem: "If $n^2$ is
odd, then $n$ is odd." The hypothesis is "$n^2$ is odd"; the conclusion
is "$n$ is odd." Since we want to give an indirect proof using the
contrapositive, the statement we want to prove is "If $n$ is not odd,
then $n^2$ is not odd."

We may already know that if an integer isn't odd, it's even (we'll
prove this fact later, though the reader is probably already familiar
with it) — so let's rewrite the statement as "If $n$ is even, then $n^2$
is even."

Now we proceed as if giving a direct proof: start by assuming $n$ is
even. Since $n$ is even, there's some integer $k$ such that $n = 2k$.
Squaring $n$:

\[
\begin{array}{lll}
\boldsymbol{n^2} & = & (2k)^2 \\
                  & = & 4k^2 \\
                  & = & 2 \cdot 2k^2
\end{array}
\]

Since $k$ is an integer, $2k^2$ is an integer too, which we can call
$c$. So there exists an integer $c$ such that $n^2 = 2c$, meaning $n^2$
is even, as desired.

So, by assuming $n$ is even, we can deduce $n^2$ is even, meaning $n
\text{ is even} \Longrightarrow n^2 \text{ is even}$. Finally, since the
contrapositive is logically equivalent to the original implication, we
now also have $n^2 \text{ is odd} \Longrightarrow n \text{ is odd}$, as
desired.

Let's recap what we did, before formally writing a proof — this proof
technique breaks down into three steps.

++Step 1: Write the contrapositive++

For an indirect proof of $p \to q$, start by writing the
contrapositive $\neg q \to \neg p$.

++Step 2: Proceed with a direct proof on the contrapositive++

Assume $\neg q$ is true. Using the rules of inference, the laws of
logic, any available axioms or definitions, and any previously proven
theorems, deduce the truth of $\neg p$ if possible.

++Step 3: Invoke the logical equivalence of the contrapositive++

Once $\neg p$ is deduced from assuming $\neg q$, we have $\neg q
\Longrightarrow \neg p$. Since an implication is always logically equivalent
to its contrapositive, we also have $p \Longrightarrow q$ — it's almost like
getting two theorems for the price of one!

Now let's present a formal proof of Theorem 2.13.11, using this indirect
technique.

{{< theorem title="If n² is odd, then n is odd (revisited)" >}}
If $n^2$ is odd, then $n$ is odd.
{{< /theorem >}}

{{< proof >}}
The contrapositive of this implication is "$n$ is even $\to$
$n^2$ is even." Since $n$ is even, there's some integer $k$ such that $n
= 2k$. Squaring $n$:

\[
\begin{array}{lll}
\boldsymbol{n^2} & = & (2k)^2 \\
                  & = & 4k^2 \\
                  & = & 2 \cdot 2k^2
\end{array}
\]

Since $n^2$ is double whatever integer $2k^2$ happens to be, $n^2$ must
be even. This tells us $n \text{ is even} \Longrightarrow n^2 \text{ is
even}$, meaning we also have $n^2 \text{ is odd} \Longrightarrow n \text{ is
odd}$, as desired.
{{< /proof >}}

## More Examples
---

{{< theorem title="If n² is even, then n is even" >}}
If $n^2$ is even, then $n$ is even.
{{< /theorem >}}

{{< proof >}}
We start by assuming $n$ is odd, so there exists some integer $k$ such
that $n = 2k + 1$. Squaring $n$:

\[
\begin{array}{lll}
\boldsymbol{n^2} & = & (2k + 1)^2 \\
                  & = & 4k^2 + 4k + 1 \\
                  & = & 2(2k^2 + 2k) + 1 \\
                  & = & 2c + 1
\end{array}
\]

Since $2$ and $k$ are integers, $2k^2 + 2k$ is an integer too, meaning
$c$ is an integer. Thus, since there's an integer $c$ such that $n^2 =
2c + 1$, $n^2$ is odd by definition. This proves the contrapositive of
the stated theorem, thus proving the desired result.
{{< /proof >}}

Notice that in this proof, we didn't explicitly state what the
contrapositive was — we just started by assuming the conclusion was
false, meaning $n$ must have been odd, then showed $n^2$ is odd as a
result. Not all proofs will explicitly state the contrapositive, though
it's good practice, and something we'll do frequently. It's also worth
noting we introduced the new variable $c$ to refer to the more
complicated expression $2k^2 + 2k$ — a very common practice to improve
clarity.

Our next theorem eschews even and odd integers, and instead deals with
all real numbers and inequalities.

{{< theorem title="If xy > 100, then x > 10 or y > 10" >}}
Suppose $x$ and $y$ are two real, non-negative numbers (meaning they're
greater than or equal to $0$).

If $xy > 100$, then $x > 10$ or $y > 10$.
{{< /theorem >}}

{{< proof >}}
Rewriting the statement using mathematical logic notation, we get

$$(xy > 100) \to [(x > 10) \lor (y > 10)].$$

The contrapositive of this statement is

\[
\begin{array}{lll}
 & \boldsymbol{\neg[(x > 10) \lor (y > 10)] \to \neg(xy > 100)} & \textbf{Reason} \\
\Longleftrightarrow & [\neg(x > 10) \land \neg(y > 10)] \to \neg(xy > 100) & \text{DeMorgan's Law} \\
\Longleftrightarrow & [(0 \leq x \leq 10) \land \neg(y > 10)] \to \neg(xy > 100) & \neg(x > 10) \Longleftrightarrow (0 \leq x \leq 10) \text{ for } x \geq 0 \\
\Longleftrightarrow & [(0 \leq x \leq 10) \land (0 \leq y \leq 10)] \to \neg(xy > 100) & \neg(y > 10) \Longleftrightarrow (0 \leq y \leq 10) \text{ for } y \geq 0 \\
\Longleftrightarrow & [(0 \leq x \leq 10) \land (0 \leq y \leq 10)] \to (0 \leq xy \leq 100) & \neg(xy > 100) \Longleftrightarrow (0 \leq xy \leq 100) \text{ for } xy \geq 0
\end{array}
\]

So, the largest value $xy$ can have when $0 \leq x \leq 10$ and $0 \leq y
\leq 10$ is when $x = 10$ and $y = 10$: $xy \leq 10 \cdot 10 = 100$.
Similarly, the smallest value $xy$ can have is when $x = 0$ and $y = 0$:
$0 = 0 \cdot 0 \leq xy$.

Thus, when $0 \leq x \leq 10$ and $0 \leq y \leq 10$, we have $0 \leq xy
\leq 100$. This proves the contrapositive, and so the original claim is
proven as desired.
{{< /proof >}}

There are a couple of things worth pointing out about this proof.
First, $\neg(x > 10)$ evaluated to $0 \leq x \leq 10$, rather than just
$x \leq 10$ (and likewise for $y$ and $xy$) — this is because our
universe is all *non-negative* real numbers, so we're not considering
negative numbers at all, and $0$ is a natural lower bound. Second, we
used DeMorgan's Law to distribute the negation into the parenthesized
expression — a law used so frequently that its use often goes
unmentioned. It's usually a good idea to mention which logical laws
you're using, but plenty of writing doesn't explicitly do so — it's
something we'll simply have to get used to.

The contrapositive isn't the only indirect method we have for proving
theorems. The next section details another very common one.

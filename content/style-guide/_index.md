+++
title = 'Style Guide'
description = 'What each notice box on this site means.'
weight = 30
chapter = 1
section = 1

# Kept out of the main sidebar tree; reached via the shortcut at the bottom
# of the sidebar instead (see config/_default/menus.toml).
[params]
  hidden = true
+++

Every book on this site uses the same small set of boxes for the same
purposes, every time. Here's what each one means when you see it.

## Definition

Introduces one or more terms — shown by name, in capitals, so it reads like a
dictionary entry. A term highlighted in blue elsewhere on the page always
refers back to one of these.

{{< definition terms="prime number" >}}
A natural number greater than 1 with no positive divisors other than 1 and
itself.
{{< /definition >}}

A definition can introduce more than one term at once:

{{< definition terms="injective, surjective, bijective" >}}
A function $f: A \to B$ is ==injective== if distinct inputs always map to
distinct outputs, ==surjective== if every element of $B$ is hit by some
input, and ==bijective== if it is both.
{{< /definition >}}

## Theorem and Proof

States a result. The number identifies exactly where it falls in the
book — Theorem 1.1.1 is the first theorem in Section 1 of Chapter 1 — so you
can refer back to it precisely later. Its proof sits right below it, folded
up until you click to read it.

{{< theorem title="Every prime greater than 2 is odd" >}}
If $p$ is prime and $p > 2$, then $p$ is odd.
{{< /theorem >}}
{{< proof >}}
Suppose, for contradiction, that $p$ is even. Then $2 \mid p$, so $p$ has a
positive divisor other than 1 and itself — contradicting that $p$ is prime.
{{< /proof >}}

## Example

A worked example. Numbered the same way as Theorem — Example 1.1.1 is the
first example in Section 1 of Chapter 1 — and titled by what it
demonstrates, so you can find the one you're after at a glance.

{{< example title="Tossing two fair six-sided dice" >}}
The sample space is the 36 ordered pairs $(i, j)$ with $i, j \in \{1, ..., 6\}$.
The event "the sum is 7" contains 6 of them — $(1,6), (2,5), ..., (6,1)$ —
so its probability is $6/36 = 1/6$.
{{< /example >}}

## Star

An observation worth keeping in mind — not a formal result (that's a
theorem) and not a mistake to avoid (that's a warning), just something worth
having front of mind going forward.

{{< star title="Every convergent sequence is bounded" >}}
The converse is false: boundedness alone does not imply convergence — the
sequence $(-1)^n$ is bounded but never converges.
{{< /star >}}

## Warning

A common mistake, and how to avoid making it.

{{< warning title="Confusing a sequence with its limit" >}}
Writing $a_n = L$ instead of $\lim_{n \to \infty} a_n = L$ silently claims
that *every* term of the sequence equals $L$, not just that the sequence
approaches it. The two statements are rarely both true.
{{< /warning >}}

## Question and Answer

A numbered practice problem. The solution sits right below it, folded up
until you click to reveal it — so you can try the problem yourself first.

{{< question >}}
Compute the probability of rolling a sum of 7 with two fair six-sided dice.
{{< /question >}}
{{< answer >}}
There are 6 favorable outcomes out of 36 possible outcomes, so
$P(\text{sum} = 7) = 6/36 = 1/6$.
{{< /answer >}}

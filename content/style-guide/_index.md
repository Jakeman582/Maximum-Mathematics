+++
title = 'Style Guide'
description = 'The notice types used throughout Maximum Mathematics, and when to use each.'
weight = 30

# Kept out of the main sidebar tree; reached via the shortcut at the bottom
# of the sidebar instead (see config/_default/menus.toml).
[params]
  hidden = true
+++

Every book on this site uses the same small set of notice boxes for the same
purposes throughout. This page shows each one and explains what it's for.
The same conventions are documented in this project's `CLAUDE.md`, so they
stay consistent across writing sessions.

## Definition

Introduces one or more terms. The title bar shows only the term itself, in
capitals — nothing else — so it reads like a dictionary entry. Reference the
term again later in running text by wrapping it in `==double equals signs==`,
which colours it to match.

{{< definition terms="prime number" >}}
A natural number greater than 1 with no positive divisors other than 1 and
itself.
{{< /definition >}}

```markdown
{{</* definition terms="prime number" */>}}
A natural number greater than 1 with no positive divisors other than 1 and
itself.
{{</* /definition */>}}
```

A definition can introduce more than one term at once — pass a comma-separated
list:

{{< definition terms="injective, surjective, bijective" >}}
A function $f: A \to B$ is ==injective== if distinct inputs always map to
distinct outputs, ==surjective== if every element of $B$ is hit by some
input, and ==bijective== if it is both.
{{< /definition >}}

## Theorem and Proof

States a result. The title bar is a short sentence fragment describing what
the theorem says — not "Theorem 1" — so a reader scanning the page sees the
actual claims, not just a numbered list. Pair it with `proof` immediately
after, which holds the proof collapsed until clicked.

{{< theorem title="Every prime greater than 2 is odd" >}}
If $p$ is prime and $p > 2$, then $p$ is odd.
{{< /theorem >}}
{{< proof >}}
Suppose, for contradiction, that $p$ is even. Then $2 \mid p$, so $p$ has a
positive divisor other than 1 and itself — contradicting that $p$ is prime.
{{< /proof >}}

```markdown
{{</* theorem title="Every prime greater than 2 is odd" */>}}
If $p$ is prime and $p > 2$, then $p$ is odd.
{{</* /theorem */>}}
{{</* proof */>}}
Suppose, for contradiction, that $p$ is even. Then...
{{</* /proof */>}}
```

## Example

A worked example. The title bar describes what's being done — "Tossing two
dice," "Translating a proposition to English," "Finding the supremum of a
bounded set" — so a reader can find the example they're looking for at a
glance.

{{< example title="Tossing two fair six-sided dice" >}}
The sample space is the 36 ordered pairs $(i, j)$ with $i, j \in \{1, ..., 6\}$.
The event "the sum is 7" contains 6 of them — $(1,6), (2,5), ..., (6,1)$ —
so its probability is $6/36 = 1/6$.
{{< /example >}}

## Star

Flags an important observation worth keeping in mind — not a formal result
(that's a theorem) and not a pitfall (that's a warning), just something worth
having front of mind going forward.

{{< star title="Every convergent sequence is bounded" >}}
The converse is false: boundedness alone does not imply convergence — the
sequence $(-1)^n$ is bounded but never converges.
{{< /star >}}

## Warning

Flags a common mistake. The title bar names the pitfall; the body explains
how the error happens and how to avoid it.

{{< warning title="Confusing a sequence with its limit" >}}
Writing $a_n = L$ instead of $\lim_{n \to \infty} a_n = L$ silently claims
that *every* term of the sequence equals $L$, not just that the sequence
approaches it. The two statements are rarely both true.
{{< /warning >}}

## Question and Answer

A numbered practice problem. The title is just the question number — no
description — since a problem set's own text supplies the context. Pair it
with `answer` immediately after, which holds the solution collapsed until
clicked, exactly like a theorem's proof.

{{< question >}}
Compute the probability of rolling a sum of 7 with two fair six-sided dice.
{{< /question >}}
{{< answer >}}
There are 6 favorable outcomes out of 36 possible outcomes, so
$P(\text{sum} = 7) = 6/36 = 1/6$.
{{< /answer >}}

```markdown
{{</* question */>}}
Compute the probability of rolling a sum of 7 with two fair dice.
{{</* /question */>}}
{{</* answer */>}}
There are 6 favorable outcomes out of 36, so $P = 1/6$.
{{</* /answer */>}}
```

Question numbering restarts at 1 on every page, has its own counter separate
from anything else on the page, and is not affected by how many definitions,
theorems, or examples came before it.

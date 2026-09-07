+++
title = 'A Closer Look at the Implication'
type = 'chapter'
weight = 1

[params]
  section = 1
+++

Out of the two conditional-style connectives we've seen — the
implication $p \to q$ and the biconditional
$p \leftrightarrow q$ — we've given the biconditional a fairly
thorough treatment already. Now we turn back to the implication, to see
what else it has to offer.

Recall from its definition that the implication $p \to q$ is
false exactly when $p$ is true and $q$ is false. In other words,
$\text{true} \to \text{false}$ is a false proposition. This
deserves special emphasis:

{{< star title="Truth Value of an Implication" >}}
\[
\begin{align*}
&\text{false} \to \text{false} \text{ is a true proposition.} \\
&\text{false} \to \text{true} \text{ is a true proposition.} \\
&\text{true} \to \text{false} \text{ is a false proposition.} \\
&\text{true} \to \text{true} \text{ is a true proposition.}
\end{align*}
\]
{{< /star >}}

The reason $\text{true} \to \text{false}$ is a false
proposition is that we don't want true statements leading to false ones
in a logical system.

## Components of an Implication
---

Before going any further, it's worth giving names to the two propositions
that make up an implication.

{{< definition terms="hypothesis, conclusion" >}}
Consider an implication $p \to q$. The proposition $p$ is
called the ==hypothesis== of the implication, and the proposition $q$ is
called the ==conclusion== of the implication.
{{< /definition >}}

The hypothesis is the proposition we're assuming to be true; the
conclusion is what we're claiming follows once that assumption holds.
This is exactly the vocabulary we need to describe the table above in
plain English: an implication is false only when its hypothesis is true
but its conclusion is false. Whenever the hypothesis is false, we get to
declare the implication true no matter what the conclusion happens to
be — there's nothing false about the implication if the assumption
driving it never held in the first place.

We'll lean on this vocabulary constantly going forward, so it's worth
getting comfortable with it now, before we start examining implications
more closely.

## Trvially True Implications
---

Curiously, we consider both $\text{false} \to \text{false}$
and $\text{false} \to \text{true}$ to be true propositions.
This is because if we start with a false hypothesis, the truth of the
conclusion is irrelevant.

{{< definition terms="trivially true" >}}
Implications of the form

\[
\begin{align*}
&\text{false} \to \text{false} \\
&\text{false} \to \text{true}
\end{align*}
\]

are called ==trivially true==.
{{< /definition >}}

{{< example title="Examining an implication case by case" >}}
Suppose Ricardo wants to buy two front-row tickets to a rock concert
so he can take a friend. He decides the easiest way to buy the tickets
is to save enough money by working a summer job. Two front-row tickets
cost \$500.

Consider the following propositions:

\[
\begin{array}{rl}
s\text{: } &\text{Ricardo earns \$500 by working a summer job.} \\
t\text{: } &\text{Ricardo buys two front-row tickets to the rock concert.}
\end{array}
\]

Let's take a closer look at the implication $s \to t$.

++Case 1: $\text{false} \to \text{false}$++

Here, Ricardo doesn't save the \$500 working a summer job, and doesn't
buy two front-row tickets to the rock concert. Because Ricardo was
unable to save the needed money, he didn't go back on his word. As far
as we can tell, Ricardo would have bought the tickets if he'd had the
money — he just wasn't able to save it, and so wasn't able to follow
through.

This is a trivially true implication.

++Case 2: $\text{false} \to \text{true}$++

Here, Ricardo wasn't able to save the \$500, but still bought two
front-row tickets to the rock concert — perhaps he won two front row tickets in a
radio contest, or was gifted money by friends or family. In this case, Ricardo
didn't go back on his word to save money to buy tickets. Again, he may
have bought the tickets if he had saved the money working a summer job.

This is a trivially true implication.

++Case 3: $\text{true} \to \text{false}$++

In this case, Ricardo did save the \$500 working a summer job, but
failed to buy the tickets. Here, Ricardo *did* go back on his word. This
means the proposition $s \to t$ isn't an accurate
description of reality — Ricardo fulfilled the premise, but didn't
follow through with the conclusion.

The implication is a false one.

++Case 4: $\text{true} \to \text{true}$++

In this case, Ricardo saved the \$500 working a summer job, and bought
two front-row tickets to the rock concert. Ricardo kept his word, and
followed through.

This is a true implication, but not a trivially true implication.
{{< /example >}}

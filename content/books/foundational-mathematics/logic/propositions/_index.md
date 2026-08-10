+++
title = 'Propositions'
type = 'chapter'
weight = 1

[params]
  section = 1
+++

In Mathematics, we deal with statements like these:


$$\text{Squares have four equal sides.}$$

$$\text{Quadratic equations have at most two distinct roots.}$$

In life, we deal with statements like these:

$$\text{If you don't pay your parking tickets, then you will go to jail.}$$

$$\text{The rent was paid on the first of the month, and the air conditioner stopped working.}$$

In Math, as in life, some statements are easy to determine if they're true
or false. However, when we encounter more complicated expressions, we
typically need a way to carefully evaluate that statement's truth.

We can start to evaluate these expressions by examining simple expressions,
then simple combinations of expressions, and working our way up, so to
speak, to increasingly more complicated expressions until we finally have
the truth of the desired expression.

In this section, we talk about how to evaluate these simple expressions,
and how to combine those simple expressions.

## Defining Propositions
---

We start by defining what a proposition is:

{{< definition terms="proposition, statement" >}}
A ==proposition== is a declarative sentence that is either true or false.
We also often use the term ==statement== to describe such a sentence.
{{< /definition >}}

Propositions are the building blocks of any logical system. These are what
we evaluate and combine to form larger statements.

{{< example title="Some examples of propositions" >}}
\[
\begin{align*}
w &\text{: H}_2\text{O is a liquid at 70 degrees Fahrenheit and 1 atmosphere.} \\
t &\text{: Mr. T was a mathematics major at Prairie View A&M University.} \\
j &\text{: Thomas Jefferson was the second president of the United States.} \\
b &\text{: Mary Shelley wrote Frankenstein or Alexandre Dumas wrote Moby Dick.} \\
x &\text{: 12 is divisible by 3.} \\
y &\text{: 3 + 3 = 7 and 4 + 4 = 8.} \\
z &\text{: 2 is a solution to the equation } z^2 - 4 = 0 \text{.} \\
\end{align*}
\]
{{< /example >}}

As a convention, we often use lowercase letters to refer to specific
propositions we are working with.

All of the sentences in the previous example have definite truth values.

{{< example title="Looking at the truth values of the previous examples" >}}
\[
\begin{array}{ll}
w\text{: H}_2\text{O is a liquid at 70 degrees Fahrenheit and 1 atmosphere.}  &\text{(true)} \\
t\text{: Mr. T was a mathematics major at Prairie View A&M University.}       &\text{(true)} \\
j\text{: Thomas Jefferson was the second president of the United States.}     &\text{(false)} \\
b\text{: Mary Shelley wrote Frankenstein or Alexandre Dumas wrote Moby Dick.} &\text{(true)} \\
x\text{: 12 is divisible by 3.}                                               &\text{(true)} \\
y\text{: 3 + 3 = 7 and 4 + 4 = 8.}                                            &\text{(false)} \\
z\text{: 2 is a solution to the equation } z^2 - 4 = 0 \text{.}               &\text{(true)}
\end{array}
\]
{{< /example >}}

## Compound Propositions
---

You'll notice that some of the propositions in the previous examples look
like they consist of simpler propositions.

{{< example title="Breaking complex propositions into simple propositions" >}}
Proposition $b$ from the previous two examples is made up of two simpler propositions:
\[
\begin{array}{ll}
b_1\text{: Mary Shelley wrote Frankenstein.}  &\text{(true)}\\
b_2\text{: Alexandre Dumas wrote Moby Dick.} &\text{(false)}
\end{array}
\]
Proposition $y$ from the previous two examples is also made up of simpler propositions:
\[
\begin{array}{ll}
y_1\text{: } 3 + 3 = 7 &\text{(false)} \\
y_2\text{: } 4 + 4 = 8 &\text{(true)}
\end{array}
\]

Notice that there really isn't a way to break up propositions $b_1$, $b_2$,
$y_1$, $y_2$ into anything simpler.
{{< /example >}}

Some propositions can be broken up into simpler propositions. Other
propositions are already expressing a simple claim that isn't a
combination of other simple claims.

{{< definition terms="primitive proposition, compound proposition" >}}
A ==primitive proposition== is a proposition that expresses a simple claim
that cannot be decomposed into any simpler propositions.

A ==compound proposition== is a proposition that is made by combining
simpler propositions together.
{{< /definition >}}

Note that the above definition of a compound proposition does not require
its constituent propositions to themselves be primitive — any combination
of primitive and compound propositions can be combined to form one larger
compound proposition.

There are a large number of ways we can combine propositions, primitive or
compound, together to form more complicated propositions.

## Logical Connectives
---

We start by introducing a very simple way to make a more complicated
proposition from a single proposition.

{{< definition terms="negation" >}}
The ==negation== of a single proposition $p$, denoted $\neg p$, has a truth
value that is opposite of the truth value of $p$.

That is to say, if $p$ is true, then $\neg p$ is false. If $p$ is false,
then $\neg p$ is true.
{{< /definition >}}

The rest of the logical connectives we introduce combine two given
propositions into a proposition.

{{< definition terms="conjunction" >}}
The ==conjunction== of two given propositions $p$ and $q$, denoted
$p \land q$, is true when $p$ and $q$ are both true. Otherwise,
$p \land q$ is false.
{{< /definition >}}

{{< definition terms="disjunction" >}}
The ==disjunction== of two given propositions $p$ and $q$, denoted
$p \lor q$, is true when at least one of $p$ or $q$ is true. Otherwise,
$p \lor q$ is false.
{{< /definition >}}

Note that in this definition, *or* is true when both propositions in the disjunction are also true. Usually in spoken and written English, *or* is used in an
exclusive sense, meaning only one of the propositions is true. In Mathematics, *or* is almost always taken to be inclusive, and will be the case throughout the
rest of these notes. Unless otherwise stated, you should assume the word *or* is being used inclusively.

The following logical connective more closely aligns with what most people normally say when they use the word *or*.

{{< definition terms="exclusive-or" >}}
The ==exclusive-or== of two given propositions $p$ and $q$, denoted
$p \veebar q$, is true when exactly one of $p$ or $q$ is true. Otherwise,
$p \veebar q$ is false.
{{< /definition >}}

{{< definition terms="implication, conditional" >}}
The ==implication== of two given propositions $p$ and $q$, denoted
$p \longrightarrow q$, is false when $p$ is true and $q$ is false.
Otherwise, $p \longrightarrow q$ is true.

An implication is also called a ==conditional==.
{{< /definition >}}

{{< definition terms="biconditional" >}}
The ==biconditional== of two given propositions $p$ and $q$, denoted
$p \longleftrightarrow q$, is true when $p$ and $q$ have the same truth
value — that is, when $p$ and $q$ are both true, or both false. Otherwise,
$p \longleftrightarrow q$ is false.
{{< /definition >}}

## Translating Compound Propositions into English Sentences
---

Knowing how the truth value of a compound proposition relates to the truth values of its constituent propositions will provide 
guidance on how to translate a symbolic logical expression into familiar English sentences.

For starters, note that since $\neg p$ has the opposite truth value of $p$, we can describe the truth value of $\neg p$ as *not* whatever 
$p$ happens to be since $\neg p$ can only be true or false. As such, we usually translate $\neg p$ as "Not $p$".

Next, by our definition of conjunction, we know that a compound proposition such as $p \land q$ is true only when $p$ *and* $q$ are both 
true. Hence, we translate the symbolic expression $p \land q$ as "$p$ and $q$".

Since the mathematical definition of disjunction is inclusive, we can (or probably should) translate the symbolic expression $p \lor q$ as 
"$p$ or $q$, or both" in order to emphasize the inclusive nature of disjunction. Again, based on the definition though, it should be understood 
that the sentence "$p$ or $q$" is the inclusive version of the word *or*.

On the other hand, for the exclusive-or, we do need to indicate in the English sentence that not both must be true. This means when we translate 
an expression such as $p \veebar q$, we do need to translate this roughly as "$p$, or $q$, but not both", or perhaps something similar indicating 
only one of the propositions is true.

The implication is perhaps the most complex expression to translate into English. We won't be able to start appreciating why this is until 
Chapter 2, but note that there are a wide variety of ways we can translate an implication into English. Some of these translations may seem confusing now, 
but should become clear the more we work with implications (again, a detailed discussion of implications will be postponed to Chapter 2). For now, 
here is a large list of possible translations for the logical expression $p \longrightarrow q$:
- "If $p$, then $q$"
- "$p$ implies $q$"
- "$p$ is sufficient for $q$"
- "$p$ is a sufficient condition for $q$"
- "$q$ is necessary for $p$"
- "$q$ is a necessary condition for $p$"
- "$p$ only if $q$"
- "$q$ if $p$"
- "$q$ whenever $p$"

Likewise, the biconditional can also be a bit cumbersome, but we will examine the biconditional in large detail in the upcoming sections. For now, 
here is a list of ways the biconditional $p \longleftrightarrow q$ can be translated into English:
- "$p$ if and only if $q$"
- "$p$ is necessary and sufficient for $q$"

Of course, there may be more elegant ways to translate propositions into English sentences. Having some command over the language gives you more ability 
to translate these into English sentences, but the above methods more than suffice in most instances.

{{< example title="Combining propositions into compound propositions" >}}
Consider the following propositions (disregarding for now whether they are
true or not):

\[
\begin{align*}
i &: \text{Aliens Florp and Flarp invade Earth.} \\
f &: \text{The flying saucer has plenty of plutonium based fuel.} \\
t &: \text{The flying saucer has enough capacity to store and transport three Earth specimens.} \\
s &: \text{Florp and Flarp's invasion of Earth is successful.} \\
\end{align*}
\]

Now we translate each of the following logical expressions into English
sentences:

* $\neg f$ $$\text{The flying saucer is not stocked with plenty of plutonium-based fuel.}$$

* $t \land \neg i$
\[
\begin{align*}
&\text{The flying saucer has enough capacity to store and transport three Earth specimens, and} \\
&\text{Aliens Florp and Flarp do not invade Earth.}
\end{align*}
\]

* $f \lor \neg s$
\[
\begin{align*}
&\text{The flying saucer is stocked with plenty of plutonium-based fuel, or} \\
&\text{Florp and Flarp's invasion of Earth is not successful.}
\end{align*}
\] 

* $f \veebar t$
\[
\begin{align*}
&\text{Either the flying saucer is stocked with plenty of plutonium-based fuel, or} \\
&\text{it has enough capacity to store and transport three Earth specimens,} \\
&\text{but not both}
\end{align*}
\]

* $\neg f \longrightarrow \neg i$
\[
\begin{align*}
&\text{If the flying saucer is not stocked with plenty of plutonium-based fuel, then} \\
&\text{Aliens Florp and Flarp do not invade Earth.}
\end{align*}
\]

* $t \longrightarrow s$
\[
\begin{align*}
&\text{If the flying saucer has enough capacity to store and transport three Earth specimens, then} \\
&\text{Florp and Flarp's invasion of Earth is successful.}
\end{align*}
\] 

* $f \longleftrightarrow i$
\[
\begin{align*}
&\text{The flying saucer is stocked with plenty of plutonium-based fuel if and only if} \\
&\text{Aliens Florp and Flarp invade Earth.}
\end{align*}
\]

{{< /example >}}

## Sentences That Are Not Propositions
---

Of course, not all sentences represent propositions. A sentence is only a proposition if it is true or false (but not both). Any sentence 
that can't be described as true or false is not a proposition.

{{< example title="Sentences that do not represent propositions" >}}
* "What time is it?" This is a question, not a declarative sentence, so it
  can't be assigned a truth value.
* "File your taxes before April 15." This is a command, not a declarative
  sentence — it tells someone to do something rather than asserting a fact
  that is true or false.
* "$x + 3 = 10$." Whether this sentence is true or false depends on the
  value of $x$, which we don't know, so we can't determine its truth
  value.
* "What a gorgeous sunset!" This is an exclamation expressing an opinion,
  not a statement of fact with a definite truth value.
* "This statement is false." This is a self-referential statement. Assuming the statement is true means the 
  statement is false. Assuming the statement is false means it is true. There is no consistent truth value 
  for this sentence, and as such, means it is not a proposition.
{{< /example >}}

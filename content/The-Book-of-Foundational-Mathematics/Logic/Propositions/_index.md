+++
date = '2025-02-11T01:16:36-05:00'
draft = false
title = 'Propositions'
weight = 1
+++

Logic provides a formal framework for expressing truth using precise symbolic 
systems. The most fundamental components of this framework are the statements 
we reason about - declarations that can be judged as being either true or 
false. On their own, these statements capture simple facts. Combining them in 
structured ways, we can express more complex ideas and uncover logical 
relationships.

This section explores the basic building blocks of logical expression and how 
they interact. By understanding these foundations, we lay the groundwork for 
more advanced reasoning - an essential tool in set theory, calculus, modern 
algebra, and combinatorics in addition to logic itself. In these areas, 
precise argumentation and structure play a role.

## Propositions

The types of statements mentioned previously - declarative sentences that are 
either true or false, but *never both* - are the most fundamental component of 
mathematical logic.

{{% notice style="definition" title="Proposition" %}}
A **proposition** is a declarative sentence; that is, a proposition is a 
sentence that is either true or false, but not both.

Sometimes the word *statement* is used.
{{% /notice %}}

It is very common to use lowercase letters as a shorthand for referencing 
various propositions, though other kinds of arbitrary symbols can be used as 
well.

{{% notice style="example" title="Example 1.1.1" %}}
Consider the following propositions: 

\[
\begin{align*}
h &: \text{Hank helps manage a propane store.} \\
t &: \text{Mr. T was a mathematics major.} \\
p &: \text{Thomas Jefferson was the second president of the United States.} \\
x &: 2 + 2 = 4\ \text{and}\ 2 + 3 = 6.
\end{align*}
\]

All of the sentences represented by $h, t, p$, and $x$ are either true or 
false. Here, propositions $h$ and $t$ are both true, while propositions $p$, 
and $x$ are both false. Notice that $x$ looks to be made up of simpler 
propositions: 

\[
\begin{align*}
x_1 &: 2 + 2 = 4. \\
x_2 &: 2 + 3 = 6.
\end{align*}
\]

Here, $x_1$ is a true proposition while $x_2$ is a false proposition.

Determining whether or not a proposition is true or false may take a variety 
of methods. Knowing that $h$ and $t$ are true is a matter of pop culture 
knowledge. Knowing that $p$ is a false proposition requires historical 
knowledge. Knowing the truth values of $x$, $x_1$, and $x_2$ requires 
mathematical knowledge.
{{% /notice %}}

The system of logic we'll build up requires that we work with sentences 
that are either true or false, meaning there are a wide variety of 
sentences that are not propositions.

{{% notice style="example" title="Example 1.1.2" %}}
Consider the following sentences: 


\[
\begin{align*}
& \text{What time is it?} \\
& \text{Are you hungry?} \\
& \text{File your taxes before April 15.} \\
& \text{What a beautiful painting!}
\end{align*}
\]

These sentences can't be described as true or false, so they are not 
propositions. There may be some confusion concerning whether or not we should 
regard *yes* and *no* as the same as *true* and *false* respectively. We 
sidestep this issue by avoiding dealing with questions. Instead, we could try 
and reword sentences to fit the description of a proposition, as in "You are 
hungry.".
{{% /notice %}}

## Compound Propositions

Looking back at Example 1.1.1, we see that proposition $x$ is made up of two 
propositions connected together by the word *and*. When a proposition is made 
up of simpler propositions joined together by connective words like *and*, 
*or*, *if*, and *only if*, the truth value of the proposition will depend on 
the truth values of its constituent parts.

{{% notice style="definition" title="Compound Proposition, Primitive Proposition" %}}
A **compound proposition** is a proposition made up of other propositions that 
are joined together with connectives such as *and*, *or*, and *if then*.

A **primitive proposition** is a proposition that is not made up of other 
propositions, and thus can't be broken up into smaller constituent 
propositions.

Compound propositions are sometimes called *non-primitive*.
{{% /notice %}}

The following are the most commonly used logical connectives: 
- and
- or
- if
- if ... then
- only if
- if and only if
- necessary
- sufficient

All of these connectives affect a compound proposition's truth value in very 
different ways, as we'll see shortly.

{{% notice style="example" title="Example 1.1.3" %}}
Consider the compound proposition 

$$\text{Al sells women's shoes, and Peggy is a housewife.}$$

This proposition is made up of the two primitive propositions 

\[
\begin{align*}
& \text{Al sells women's shoes.} \\
& \text{Peggy is a housewife.}
\end{align*}
\]

using the connective word *and*.
{{% /notice %}}

## Logical Connectives

Compound propositions can be formed by joining together primitive 
propositions, other compound propositions, or a combination of both. Whether 
primitive or compound, we use connective words to join them together. We start 
by describing a simple transformation:

{{% notice style="definition" title="Negation" %}}
Let $p$ be any proposition (it could be primitive or compound).

The **negation** of $p$, denoted $\neg p$, is the proposition "$\text{Not}\ p$", 
or "$\text{It is not the case that}\ p$".

The proposition $\neg p$ is true whenever $p$ is false.
{{% /notice %}}

Negations of primitive statements are not considered primitive.

{{% notice style="definition" title="Conjunction, Disjunction" %}}
Let $p$ and $q$ be any two propositions (primitive or compound).

The **conjunction** of $p$ and $q$, denoted $p \land q$ is the proposition 
"$p\ \text{and}\ q$". The proposition $p \land q$ is true only when *both* $p$ 
and $q$ are true. $p \land q$ is false otherwise.

The **disjunction** of propositions $p$ and $q$, denoted $p \lor q$ is the 
proposition "$p\ \text{or}\ q,\ \text{or both}$". The proposition $p \lor q$ is 
true when $p$ is true, $q$ is true, or both $p$ and $q$ are true.
{{% /notice %}}

Notice that when we talk about the disjunction, we are using the word *or* in 
an inclusive sense. This is the commonly used form of the word *or* in math. 
Unless otherwise stated, assume *or* is being used in the inclusive sense.

{{% notice style="definition" title="Exclusive-or" %}}
Let $p$ and $q$ be any two propositions (primitive or compound).

The **exclusive-or** of $p$ and $q$, denoted $p \veebar q$, is the proposition 
"$p,\ \text{or}\ q,\ \text{but not both}$". The proposition $p \veebar q$ is 
true when $p$ is true and $q$ is false, or $p$ is false and $q$ is true. 
$p \veebar q$ is false when $p$ and $q$ are both false, or when $p$ and $q$ 
are both true.
{{% /notice %}}

With these four connectives, a wealth of propositions can be formed, 
especially when used in conjunction with each other.

{{% notice style="example" title="1.1.4" %}}
Consider the following propositions: 

\[
\begin{align*}
p &: \text{Ricardo saves enough money to buy an AC/DC concert ticket.} \\
q &: \text{Ricardo's parents let him go to the concert.}
\end{align*}
\]

We can translate the statement $\neg (p \lor q)$ as 

\[
\begin{align*}
& \text{It is not the case that Ricardo saved enough money to buy an} \\
& \text{AC/DC concert ticket or his parents will let him go to the concert.}
\end{align*}
\]

We can translate $\neg (p \land q)$ as 

\[
\begin{align*}
& \text{It is not the case that Ricardo saved enough money to buy an} \\
& \text{AC/DC concert ticket and his parents will let him go to the concert.}
\end{align*}
\]

We can translate $(\neg p) \lor q$ as 

\[
\begin{align*}
& \text{Ricardo did not enough money to buy an AC/DC concert} \\
& \text{ticket or his parents will let him go to the concert.}
\end{align*}
\]

We can translate $p \land (\neg q)$ as 

\[
\begin{align*}
& \text{Ricardo saved enough money to buy an AC/DC concert} \\
& \text{ticket and his parents will not let him go to the concert.}
\end{align*}
\]

We can translate $(\neg p) \veebar q$ as 

\[
\begin{align*}
& \text{Either Ricardo didn't save enough money to buy an AC/DC concert} \\
& \text{ticket or his parents will let him go to the concert, but not both.}
\end{align*}
\]
{{% /notice %}}

The last two logical connectives we'll talk about are those that describe the 
way theorems are stated: conditional statements.

{{% notice style="definition" title="Implication, Hypothesis, Conclusion" %}}
Let $p$ and $q$ be any twp arbitrary propositions (primitive or compound).

The **implication** or *conditional statement*, denoted $p \rightarrow q$, is 
the proposition "$\text{If}\ p, \text{then}\ q$".

The proposition $p \rightarrow q$ is false when p is true and q is false. It 
is true otherwise.

Here, $p$ is called the **hypothesis** of the implication, and $q$ is called 
the **conclusion** of the implication.
{{% /notice %}}

There a quite a few more ways to translate an implication into English:

- $\text{If}\ p, \text{then}\ q$
- $p\ \text{only if}\ q$
- $p\ \text{is a sufficient condition for}\ q$
- $p\ \text{is sufficient for }\ q$
- $q\ \text{is a necessary condition for}\ p$
- $q\ \text{is necessary for}\ p$
- $q\ \text{if}\ p$

The *necessary* and *sufficient* parts can be confusing at first. It's 
important to remember what information is being conveyed. When we say 
$p \rightarrow q$, we mean that if we know $p$ occurred, then we automatically 
know $q$ occurred as well. This is why we say that $p$ is *sufficient* for $q$.

Additionally, when we say $p \rightarrow q$, this means that if $q$ did not 
occur, then we also know that $p$ did not occur as well. This is why 
$p \rightarrow q$ can be restated as $q\ \text{is necessary for}\ p$. Knowing 
that $q$ occurred is *necessary* to knowing that $p$ occurred, but it is not 
enough, or *sufficient* to knowing that $p$ occurred.

{{% notice style="definition" title="Biconditional" %}}
Let $p$ and $q$ be any two arbitrary propositions (primitive or compound).

The **biconditional** of statements $p$ and $q$, denoted $p \leftrightarrow q$ 
is the proposition "$p\ \text{if and only if}\ q$".

This proposition is true when $p$ and $q$ are both simultaneously true or both 
simultaneously false. This proposition is false when $p$ and $q$ have 
different truth values.
{{% /notice %}}

From here, we are able to construct very elaborate and intricate compound 
propositions.

{{% notice style="example" title="Example 1.1.5" %}}
Consider the following propositions: 

\[
\begin{align*}
a &: \text{Ricardo goes to the AC/DC concert.} \\
b &: \text{Ricardo finishes his homework.} \\
c &: \text{The concert is cancelled due to bad weather.}
\end{align*}
\]

We can translate the proposition $(\neg a \lor b) \rightarrow c$ as 

\[
\begin{align*}
& \text{If Ricardo does not go to the AC/DC concert or he finished his} \\
& \text{homework then the concert is cancelled due to bad weather.}
\end{align*}
\]

We can translate $a \leftrightarrow (b \land \neg c)$ as 

\[
\begin{align*}
& \text{Ricardo goes to the AC/DC concert if and only if he finished his} \\
& \text{homework and the concert is not cancelled due to bad weather.}
\end{align*}
\]

We can translate $(a \veebar b) \rightarrow \neg c$ as 

\[
\begin{align*}
& \text{If either Ricardo goes to the AC/DC concert or he doesn't finish his homework} \\
& \text{(but not both), then the concert will not get cancelled due to bad weather.}
\end{align*}
\]

We can translate $(\neg a \lor c) \leftrightarrow b$ as 

\[
\begin{align*}
& \text{Ricardo doesn't go to the AC/DC concert, or the concert is cancelled} \\
& \text{due to bad weather, if and only if Ricardo finished his homework.}
\end{align*}
\]
{{% /notice %}}

## A Closer Look at Implications

Notice that in the definition of implication that the implication 
$p \rightarrow q$ is false when $p$ is true and $q$ is false. In other words, 
we have that $\text{true}\ \rightarrow\ \text{false}$ is a false proposition. 
This deserves special emphasis: 

{{% notice style="important" title="Truth Value of an Implication" %}}
$\text{false}\ \rightarrow\ \text{false}$ is a true proposition.

$\text{false}\ \rightarrow\ \text{true}$ is a true proposition.

$\text{true}\ \rightarrow\ \text{false}$ is a false proposition.

$\text{true}\ \rightarrow\ \text{true}$ is a true proposition.
{{% /notice %}}

The reason why "$\text{true}\ \rightarrow\ \text{false}$" is a false 
proposition is because we don't want true statements leading to false 
statements in a logical system.

Curiously enough, we do consider both 
"$\text{false}\ \rightarrow\ \text{false}$" and 
"$\text{false}\ \rightarrow\ \text{true}$" to be true propositions. This is 
because if we start with a false hypothesis, then the truth of the conclusion 
is irrelevant.

{{% notice style="definition" title="Trivially True" %}}
Implications of the form 

\[
\begin{align*}
& \text{false}\ \rightarrow\ \text{false} \\
& \text{false}\ \rightarrow\ \text{true}
\end{align*}
\]

are called **trivially true**.
{{% /notice %}}

{{% notice style="example" title="Example 1.1.6" %}}
Suppose Ricardo wants to buy two front row tickets to the AC/DC concert so he 
can take a friend. He decides the easiest way to buy the tickets is to save 
enough money by working a summer job. Two front row tickets cost $500.

Consider the following propositions: 

\[
\begin{align*}
s &: \text{Ricardo earns \$500 by working a summer job.} \\
t &: \text{Ricardo buys two front row tickets to the AC/DC concert.}
\end{align*}
\]

Let's take a closer look at the implication $s \rightarrow t$.

### Case 1: $\text{false}\ \rightarrow\ \text{false}$

Here, Ricardo does not save $500 working a summer job and does not buy two 
front row tickets to the AC/DC concert. Because Ricardo was unable to save the 
needed money, Ricardo did not go back on his word. As far as we can tell, 
Ricardo would have bought the tickets if he had the money, it's just that he 
wasn't able to save the money, and was thus unable to follow through.

This is a trivially true implication.

### Case 2: $\text{false}\ \rightarrow\ \text{true}$

Here, Ricardo wasn't able to save $500, but still bought two front tow tickets 
to the AC/DC concert. Perhaps he won some money in a contest, or was gifted 
money by friends or family. In this case, Ricardo did not go back on his word 
of saving money to buy tickets. Again, he may have bought the tickets if he 
did save money working a summer job.

This is a trivially true implication.

### Case 3: $\text{true}\ \rightarrow\ \text{false}$

In this case, Ricardo did save $500 working a summer job, but failed to buy 
the tickets. Here, Ricardo *did* go back on his word. This means that the 
proposition \(s \rightarrow t\) is not an accurate description of reality. 
Ricardo fulfilled the premise but did not follow through with the conclusion.

The implication is a false one.

### Case 4: $\text{true}\ \rightarrow\ \text{true}$

In this case, Ricardo saved $500 working a summer job, and bought two front 
row tickets to the AC/DC concert. Ricardo kept his word, and fulfilled the 
resolution.

This is a true implication, but not a trivially true implication.
{{% /notice %}}

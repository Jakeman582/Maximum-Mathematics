+++
title = 'Application: Modeling Logic Puzzles'
type = 'chapter'
weight = 12

[params]
  section = 12
+++

Logic puzzles are almost everywhere, from supermarket puzzle books to
viral posts on social media. Some are well known, like the Zebra Puzzle
and Sudoku. Others are lesser known, including the Knights and Knaves
puzzle.

Regardless of which puzzle is being tackled, the logical tools we've
explored throughout this chapter can be used to work out a solution. In
this section, we'll explore a few different kinds of logic puzzles, and
use mathematical logic to solve them.

## Who Did It?
---

These kinds of puzzles involve a series of statements produced by an
equal number of suspects. What's known is that some number of the
suspects are telling the truth, and the goal is to determine which
suspect is the culprit.

{{< example title="A bank heist with four suspects" >}}
After receiving a large amount of money, gems, paintings, and gold, a
bank closes and attempts to secure its vault. Over the weekend, a heist
is carried out, leaving the bank with none of the deposit.

The bank hires a detective to determine which of four suspects — Adam,
Billy, Chelsey, and Darla — is the thief. After questioning each
suspect, the detective collects the following statements:

\[
\begin{array}{ll}
\text{Adam:} &\text{Chelsey performed the heist.} \\
\text{Billy:} &\text{I did not perform the heist.} \\
\text{Chelsey:} &\text{Darla performed the heist.} \\
\text{Darla:} &\text{Chelsey lied when she said I performed the heist.}
\end{array}
\]

The detective knows that only one of the four suspects performed the
heist, and that only one of the suspects is telling the truth. So, who
performed the heist?

One thing we can do is craft four statements representing who performed
the heist:

\[
\begin{array}{ll}
a\text{: } &\text{Adam performed the heist.} \\
b\text{: } &\text{Billy performed the heist.} \\
c\text{: } &\text{Chelsey performed the heist.} \\
d\text{: } &\text{Darla performed the heist.}
\end{array}
\]

Next, we represent each suspect's statement with a letter:

\[
\begin{array}{ll}
\alpha\text{: } &\text{Chelsey performed the heist.} \\
\beta\text{: } &\text{Billy did not perform the heist.} \\
\gamma\text{: } &\text{Darla performed the heist.} \\
\delta\text{: } &\text{Statement } \gamma \text{ is false.}
\end{array}
\]

Now we're in a position to examine each statement in turn. We have four
scenarios to check — remember, the detective knows only one person
performed the heist, so we don't have to test combinations of suspects.

++Case 1: Assume Adam is the culprit++

\[
\begin{array}{llll}
a = 1 & b = 0 & c = 0 & d = 0 \\
\alpha = 0 & \beta = 1 & \gamma = 0 & \delta = 1
\end{array}
\]

Two statements evaluate to true here ($\beta$ and $\delta$), but the
detective knows only one statement is true. Assuming Adam performed the
heist produces a situation that contradicts what we already know, so Adam
could not have performed the heist.

++Case 2: Assume Billy is the culprit++

\[
\begin{array}{llll}
a = 0 & b = 1 & c = 0 & d = 0 \\
\alpha = 0 & \beta = 0 & \gamma = 0 & \delta = 1
\end{array}
\]

Only one statement is true here, which is compatible with what we
already know. So far, it looks like Billy performed the heist — but
let's check the remaining cases to be sure.

++Case 3: Assume Chelsey is the culprit++

\[
\begin{array}{llll}
a = 0 & b = 0 & c = 1 & d = 0 \\
\alpha = 1 & \beta = 1 & \gamma = 0 & \delta = 1
\end{array}
\]

Three statements are true here, which contradicts the fact that only one
statement is true.

++Case 4: Assume Darla is the culprit++

\[
\begin{array}{llll}
a = 0 & b = 0 & c = 0 & d = 1 \\
\alpha = 0 & \beta = 1 & \gamma = 1 & \delta = 0
\end{array}
\]

Again, more than one statement is true, so assuming Darla performed the
heist also leads to a contradiction.

Only one case avoided a contradiction with what we already knew: the
case where Billy performed the heist. So Billy performed the heist, and
now the detective knows who to arrest.

As a recap, solving this puzzle involved checking several cases for
compatibility with some known prior knowledge. The case compatible with
that prior knowledge gave us the solution.
{{< /example >}}

## The Knights and Knaves Puzzle
---

Knights and Knaves puzzles were originally posed by Raymond Smullyan.
The premise is that on a certain island, there are two kinds of
inhabitants: knights, who always tell the truth, and knaves, who always
lie. Every inhabitant on the island is either a knight or a knave, but
never both.

{{< example title="Two islanders, one honest, one not" >}}
You encounter two people, $A$ and $B$, on this island. What are they, if
person $A$ says "$B$ is a knight," and $B$ says "The two of us are
opposite types"?

To answer this, we craft two propositions:

\[
\begin{array}{ll}
a\text{: } &\text{Person } A \text{ is a knight.} \\
b\text{: } &\text{Person } B \text{ is a knight.}
\end{array}
\]

Since there are only two types of people,

\[
\begin{array}{ll}
\neg a\text{: } &\text{Person } A \text{ is a knave.} \\
\neg b\text{: } &\text{Person } B \text{ is a knave.}
\end{array}
\]

Just as before, we can check cases.

++Case 1: $A$ is a knight, $B$ is a knight++

When $A$ is a knight, $a = 1$. But person $A$ is also asserting that $B$
is a knight, meaning $b = 1$ as well.

But if $B$ is also a knight, then since $B$ would be telling the truth,
that would make $A$ a knave, since person $B$ is asserting that $A$ and
$B$ are opposite types — meaning $a = 0$. This contradicts our earlier
conclusion that $a = 1$.

This case leads to a contradiction, so it must not be correct.

++Case 2: $A$ is a knave, $B$ is a knight++

Assuming $A$ is a knave gives $a = 0$ (alternatively, $\neg a = 1$).
Since $A$ is a knave, $A$ must be lying about $B$ being a knight, which
tells us $B$ is a knave. This contradicts the initial assumption of this
case, that $B$ is a knight.

This case is also false.

++Case 3: $A$ is a knight, $B$ is a knave++

Since $A$ is a knight, $a = 1$. Since $A$ is a knight, $A$ is telling
the truth when claiming $B$ is a knight — but again, this contradicts
our assumption that $B$ is a knave.

This case is also false.

++Case 4: $A$ is a knave, $B$ is a knave++

Since $A$ is a knave, $a = 0$. $A$ is lying when claiming $B$ is a
knight, so $b = 0$ as well — consistent with this case's assumptions.

Now let's examine $B$'s claim that $A$ and $B$ are opposite types. Since
$B$ is a knave, $B$ is lying about $A$ and $B$ being opposite types —
so $A$ and $B$ must be of the same type, which is again consistent with
this case's assumptions.

Since assuming $A$ and $B$ are both knaves is consistent with every
statement, that's the case that must hold — $A$ and $B$ are both knaves.
{{< /example >}}

## The Muddy Children Puzzle
---

This is another logic puzzle posed by Raymond Smullyan. Here, a father
asks his two children whether they know if they have a muddy forehead.

{{< example title="Two children, a father, and one mysterious clue" >}}
A father gives his two children (a boy and a girl) permission to play
outside, but asks that they not get dirty. During play, they both get
muddy foreheads.

After confronting the two children, the father tells them, "At least one
of you has a muddy forehead." He then simultaneously asks the children,
"Do you know if you have a muddy forehead?" The father asks this
question twice, and both children respond at the same time. What do the
children say each time?

Before we start, let's craft the following propositions:

\[
\begin{array}{ll}
b\text{: } &\text{The boy has a muddy forehead.} \\
g\text{: } &\text{The girl has a muddy forehead.}
\end{array}
\]

Before the children are even asked the first time, both already know
that at least one of them has a muddy forehead — from their perspective,

$$b \lor g = 1.$$

++Before the first question++

Before being asked the first time, here's what the boy knows:

$$b \lor g = 1 \qquad g = 1.$$

This isn't enough information to determine what $b$ must equal, because
whether or not $b = 1$, the fact that $g = 1$ already makes the
disjunction true.

The girl knows something similar. From her perspective,

$$b \lor g = 1 \qquad b = 1.$$

Again, the girl doesn't have enough information to determine whether she
has a muddy forehead. At this point, since neither child has enough
information, they both answer "no."

++After the first question++

Now that the question has been asked once, let's examine things from the
boy's perspective. Before being asked, the boy knew

$$b \lor g = 1 \qquad g = 1.$$

But he also learns that the girl is unsure whether she has a muddy
forehead. The only way the girl could have been sure she did was if the
boy did *not* have a muddy forehead — since the father said at least one
of them had a muddy forehead, if the boy didn't ($b = 0$), the only way
to still have $b \lor g = 1$ is with $g = 1$. Since the girl was unsure,
this means the boy must have a muddy forehead too. The same reasoning
applies from the girl's perspective, using what she learns about the
boy's uncertainty.

In essence, before the first answer, each child only knew there were two
possibilities — that they themselves did or didn't have a muddy
forehead, with the other child's forehead being muddy either way. But
neither answering "yes" the first time rules out the "didn't" branch for
each of them, leaving each child certain, after the first question, that
*they* have a muddy forehead too.

Hence, after being asked the second time, both children know they each
have a muddy forehead, and they both answer "yes."
{{< /example >}}

## The Common Theme
---

Notice that in the first two puzzles, our main strategy was to perform
casework: for each case, we checked whether it was consistent with prior
knowledge, and immediately discarded any case that led to a
contradiction. The case that was consistent with everything we knew
provided the answer to the puzzle.

The last puzzle was solved by working through stages, with an additional
piece of information added at each stage. Accumulating new information
at each stage was enough to solve the problem.

The common theme in each solution was breaking the puzzle up into
several parts — whether stages or cases — and examining each part with
an appropriate analysis. Breaking a logic puzzle up into stages or
cases, then examining each one in turn, is the key to solving almost any
logic puzzle.

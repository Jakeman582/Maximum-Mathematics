+++
title = 'Size of a Set'
type = 'chapter'
weight = 2

[params]
  section = 2
+++

In the previous section, we saw sets that can have vastly different
numbers of elements. Some sets have a finite number of elements,
meaning that if we started to list out all of that set's elements,
we'd eventually be able to stop, having written down every element. In
contrast, some sets have infinitely many elements, meaning that if we
start listing elements and stop at any point in time, there would
still be elements missing.

For finite sets, knowing the number of elements they contain can be
useful.

{{< definition terms="cardinality" >}}
For any finite set $A$, we use the notation

$$|A|$$

to refer to the number of elements in $A$. We refer to the number of
elements in $A$ as the ==cardinality== of $A$.
{{< /definition >}}

Even though we don't yet speak of the cardinality of an infinite set,
it's technically correct to say that the cardinality of an infinite
set like $\mathbb{Z}$ is *countably infinite*. This idea will be
explored later, when we talk about the different special sets of
numbers.

{{< example title="Cardinality of finite and infinite sets" >}}
Consider the following sets:

\[
\begin{array}{rl}
A = \{x^3 \mid (x \text{ is an integer}) \land (|x^3| < 100)\} & = \{1, -1, 8, -8, 27, -27, 64, -64\} \\
B = \{x^2 \mid (x \text{ is an integer}) \land (x^2 < 100)\} & = \{1, 4, 9, 16, 25, 36, 49, 64, 81\} \\
C = \{2n \mid n \text{ is an integer}\} & = \{0, 2, -2, 4, -4, 6, -6, 8, -8, 10, -10, \dots\}
\end{array}
\]

Both $A$ and $B$ are finite sets, so we can speak of their
cardinalities: $|A| = 8$ and $|B| = 9$. We see that $C$ is an infinite
set, so we don't speak of its cardinality (yet).
{{< /example >}}

Care must be taken when we're dealing with sets that contain a wide
variety of items. If a set has an element that is itself a set with
multiple items, the elements of that inner set do *not* count towards
the outer set's cardinality.

{{< example title="Cardinality with nested sets" >}}
Consider the set

$$X = \{a, b, c, 1, 2, 3, x, y, z, \{1, 2, 3\}, \{\{1\}, 2, 3\}, \{a\}\}.$$

This set has a wide variety of different types of objects: numbers,
letters from the English alphabet (the $a$, $b$, $c$, $x$, $y$, and
$z$ aren't referring to variables in this particular case — just the
letters themselves), and even a few sets!

Let's list out each element of $X$ on its own line:

\[
\begin{array}{l}
a \\
b \\
c \\
1 \\
2 \\
3 \\
x \\
y \\
z \\
\{1, 2, 3\} \\
\{\{1\}, 2, 3\} \\
\{a\}
\end{array}
\]

Notice that the element $a$ is not the same thing as the element
$\{a\}$: one is simply a letter, and the other is a set (containing
that letter), so they're entirely different elements. The same is
true for the elements $1$, $2$, $3$, $\{1, 2, 3\}$, and
$\{\{1\}, 2, 3\}$. The element $\{1, 2, 3\}$ is a set, and even though
it contains several elements itself, it only counts as *one* element
of $X$.

As such, there are no repeated elements in $X$, and since all twelve
are distinct, they all count towards the cardinality of $X$, meaning

$$|X| = 12.$$

Of course, the set $\{1, 2, 3\}$ has its own cardinality:
$|\{1, 2, 3\}| = 3$. But it's still just $1$ set, and it only counts
for $1$ element when considering the cardinality of $X$. Similarly,
$|\{\{1\}, 2, 3\}| = 3$.

Contrast this with $|\{\{1\}, \{2, 3\}\}| = 2$, because the $2$ and
the $3$ are included together in a *single* set within
$\{\{1\}, \{2, 3\}\}$.
{{< /example >}}

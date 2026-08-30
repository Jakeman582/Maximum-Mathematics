+++
date = '2025-02-11T01:17:14-05:00'
draft = false
title = 'Modeling Logic With Truth Tables'
weight = 2
+++

In [Section 1.1]( {{< ref "The-Book-of-Foundational-Mathematics/Logic/Propositions" >}} ), having to write out all logical expressions in English and keeping track of truth values can be tedious and time-consuming. It also makes it difficult to evaluate the truth value of compound statements involving many propositions and logical connectives.

In analyzing a compound statement's truth value, we need to be able to evaluate it for all combinations of truth values for its constituent parts. Without any organization, this can be quite error-prone. For example, to analyze the compound statement $p \land q$, we have to check four cases: $p$ and $q$ are both false, $p$ is false and $q$ is true, $p$ is true and $q$ is false, and both $p$ and $q$ are true. Without any systematic way of dealing with each case, mistakes are easy to make.

In this section, we'll describe a way to graphically organize our work.

## Organizing Logical Expressions

The first thing we can do to make things a bit easier is to simplify the logical values. Up to now, propositions have been evaluated as $\text{true}$ or $\text{false}$. Instead, we can make the following substitutions: 

\[
\begin{align*}
&0\ \text{in place of false}\\
&1\ \text{in place of true} 
\end{align*}
\]

This let's us express propositions using numerical values. For example, if $p$ evaluates to $\text{true}$, we could instead say $p = 1$. Likewise, since $p$ is $\text{true}$, that means that $\neg p$ is $\text{false}$, which is the same as saying $\neg p = 0$.

Next, we can organize groups of propositions into tables, and record the truth value of each proposition in a cell of that table. Such tables are called *truth tables*. In these types of tables, the first row is used to label each column with a proposition. Subsequent rows of these tables are used to record the numerical value of the propositions used in their respective columns.

Let's see an example of how such a table is constructed.

{{< notice style="example" title="Example 1.2.1" >}}
Suppose we want to evaluate the truth value for the proposition $\neg p \lor q$. We don't know whether or not $p$ or $q$ are primitive or compound, but it doesn't matter because either way, $p$ and $q$ are either going to be $\text{true}$ or $\text{false}$.

$$~$$

We start by noting that the compound proposition $\neg p \lor q$ is a combination of the simpler propositions $p$ and $q$. Thus, we have to test the truth value of $\neg p \lor q$ by testing combinations of truth values for $p$ and $q$. There are four combinations of truth values taken by $p$ and $q$.

$$~$$

Also notice we need to know $\neg p$ before we know the value of $\neg p \lor q$, so we'll want to keep track of $\neg p$ as well.

$$~$$

So far, we've listed four propositions we want to track: $p,\ q,\ \neg p,\ \neg p \lor q$. Thus, we'll make a table with four columns, one for each of the propositions we're tracking. We already know that we essentially have to check all four combinations of truth values for $p$ and $q$, so we'll fill those combinations of values in to start:

{{< figure
    src="1.svg"
    alt="A table with four columns and five rows, with truth values for the base propositions filled in."
>}}

Notice that we separated the propositions $p$ and $q$ from $\neg p$ and $\neg p \lor q$ with a thicker line. This is a stylistic choice that makes it easier to see which propositions we are setting values for, as opposed to propositions whose truth values we have to calculate. We also used a dark gray color for the row containing the column's proposition. We used a lighter gray color for the base proposition truth values because those are being set, and not calculated.

$$~$$

Let's take a look at the row where $p = 1$ and $q = 0$, and the column for $\neg p$. We'll color that cell green to draw our attention to it. Since $p = 1$, we know that $\neg p = 0$, so we'll put a $0$ in that cell (the value of $q$ has no affect on this cell).

{{< figure
    src="2.svg"
    alt="For the row where $p = 1$ and $q = 0$, we have $\neg p = 0$."
>}}

Now we focus on the other cell in the $p = 1$, $q = 0$ row. Here the proposition being evaluated is $\neg p \lor q$. Since $\neg p = 0$ and $q = 0$, we have by definition of disjunction that $\neg p \lor q = 0$.

{{< figure
    src="3.svg"
    alt="For the row where $p = 1$ and $q = 0$, we have $\neg p \lor q = 0$."
>}}

Following a similar process, we can fill in the missing truth values for the $p = 0,\ q = 1$ row of the truth table:

{{< figure
    src="4.svg"
    alt="We fill in the $p = 0,\ q = 1$ row the same way as the previous row we filled in."
>}}

We fill out the remaining blank cells by simply evaluating the needed propositions using that row's values of $p$ and $q$:

{{< figure
    src="5.svg"
    alt="All remaining cells can be filled in by simply evaluating the column's proposition with the row's base proposition values."
>}}

We aren't interested in the values of $\neg p$, we only used them to help us figure out $\neg p \lor q$, so the column for $\neg p$ can be removed, and we are left with the final truth table:

{{< figure
    src="6.svg"
    alt="We remove any extraneous columns that we aren't interested in to get the final truth table."
>}}
{{< /notice >}}

## Revisiting the Logical Connectives

We can use truth tables to evaluate the logical connectives we previously talked about.

Negation is perhaps the simplest logical operation:

{{< figure
    src="7.svg"
    alt="The truth table for the negation logical operation."
>}}

Conjunction (*and*) and disjunction (*inclusive-or*) act on two propositions, so we'll need four rows to examine all possible truth values.

{{< figure
    src="8.svg"
    alt="The truth tables for the conjunction and disjunction."
>}}

Finally, we also show the truth tables for the logical implications.

{{< figure
    src="9.svg"
    alt="The truth tables for the implication, and the biconditional."
>}}

We could collect all of the above truth tables into one larger conglomerate truth table.

{{< figure
    src="10.svg"
    alt="A conglomerate truth table combining the previous truth tables into one."
>}}
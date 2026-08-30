+++
date = '2025-04-02T20:10:31-04:00'
draft = false
title = 'Always True, Always False'
weight = 3
+++

Now that we have a fairly organized way of analyzing the truth value of compound propositions, we'll start to see some interesting phenomena crop up from time-to-time. We'll do this by looking at all possible values a proposition can take, which is precisely what truth tables allow us to do.

## Tautologies

{{< notice style="example" title="Example 1.3.1" >}}
Let's examine the proposition $p \rightarrow (p \lor q)$. We'll start with a blank truth table.

{{< figure
    src="1.svg"
    alt="Examining $p \rightarrow (p \lor q)$ with a truth table."
>}}

We start by filling out the column for $p \lor q$:

{{< figure
    src="2.svg"
    alt="The truth table for $p \rightarrow (p \lor q)$ with the column $p \lor q$ filled out."
>}}

Now that we have the truth values for propositions $p$ and $p \lor q$, it is easy to calculate the truth values for $p \rightarrow (p \lor q)$: 

{{< figure
    src="3.svg"
    alt="A truth table for $p \rightarrow (p \lor q)$ with the last column completed."
>}}

Now we remove the extraneous column for $p \lor q$ to get the final truth table:

{{< figure
    src="4.svg"
    alt="The completed truth table for $p \rightarrow (p \lor q)$ without any extraneous columns."
>}}

All of the values in the final column are $1$! This means that, no matter what truth values $p$ and $q$ have, the expression $p \rightarrow (p \lor q)$ is always $\text{true}$.

$$~$$

Translating the proposition $p \rightarrow (p \lor q)$ into English yields something like this:

$$\text{If p, then p or q.}$$

Of course if we start with proposition $p$, then we must also have $p \lor q$ as well because $p$ is included in the conclusion. For example, suppose we had that 

\[
\begin{align*}
p &: \text{Phil opens up a new savings account.} \\
q &: \text{Phil earns 4% interest every year, compounded monthly.}
\end{align*}
\]

Then the proposition $p \rightarrow (p \lor q)$ can be translated as follows:

\[
\begin{align*}
&\text{If Phil opens up a new savings account, then} \\
&\text{either Phil opens up a new savings account, or } \\
&\text{he will earn 4% interest every year compounded monthly, } \\
&\text{or both.}
\end{align*}
\]

$$~$$

Of course if Phil opens a new savings account, then he will either open up a new savings account (which he just supposedly did), or he will earn 4% interest compounded monthly, or both.
{{< /notice >}}

There is a special name for propositions that are always true, no matter what truth values are held by its constituent parts.

{{% notice style="definition" title="Tautology" %}}
A proposition is called a **tautology** if it is true for all possible truth value assignments for its component parts.

Often, the symbol $T_0$ is used to represent tautological propositions.
{{% /notice %}}

## Contradictions

As observed above, some truth tables have columns whose only value is $1$. Of course, we could run into the opposite situation.

{{< notice style="example" title="Example 1.3.2" >}}
Suppose we wanted to examine the proposition $p \land (\neg p \land q)$. Naturally, we start with an empty truth table.

{{< figure
    src="5.svg"
    alt="A blank truth table for the proposition $p \land (\neg p \land q)$."
>}}

The propositions $\neg p$ and $\neg p \land q$ are relatively easy to calculate. Once those propositions' columns are filled out, then filling out the final column becomes straightforward:

{{< figure
    src="6.svg"
    alt="A filled out truth table for $p \land (\neg p \land q)$."
>}}

Finally, we'll remove the columns for any propositions we don't care about:

{{< figure
    src="7.svg"
    alt="A truth table for $p \land (\neg p \land q)$ without any extra rows."
>}}

Every value in the last column is $0$, meaning no matter what combination of truth values we have for $p$ and $q$, the proposition $p \land (\neg p \land q)$ will always be $\text{false}$.

Then again, perhaps we shouldn't be surprised. After all, how can both $p$ and $\neg p$ be true? To make this situation more concrete, take another look at the propositions we used in Example 1.3.1:

\[
\begin{align*}
p &: \text{Phil opens up a new savings account.} \\
q &: \text{Phil earns 4% interest every year, compounded monthly.}
\end{align*}
\]

With these propositions, we can translate $p \land (\neg p \land q)$ into something like the following:

\[
\begin{align*}
&\text{Phil opens up a new savings account, and} \\
&\text{he does not open up a new savings account, and} \\
&\text{he will earn 4% interest every year compounded monthly.}
\end{align*}
\]

How can Phil open up a new savings account while simultaneously not opening up a new savings account? This is an impossible scenario.
{{< /notice >}}

We have a different term for the sorts of situations depicted in Example 1.3.2.

{{% notice style="definition" title="Contradiction" %}}
A proposition is called a **contradiction** if it is false for all possible truth value assignments for its component parts.

Often, the symbol $F_0$ is used to represent contradictory propositions.
{{% /notice %}}

## Satisfiability

For a given compound proposition, a truth table allows us to quickly look for any truth value assignments that yield a truth value of $1$ or $0$.

{{< notice style="example" title="Example 1.3.3" >}}
This time, let's look at the compound proposition $(p \lor q) \land r$ that is made up of three constituent propositions $p, q, r$:

{{< figure
    src="8.svg"
    alt="Examining a compound proposition with three constituent proponents."
>}}

After filling out the column for $p \lor q$, the last column becomes easy to fill out:

{{< figure
    src="9.svg"
    alt="A filled out truth table for $(p \lor q) \land r$."
>}}

Here, we see there are only three rows where $(p \lor q) \land r = 1$. We'll highlight those rows in green after stripping out the extraneous $p \lor q$ column:

{{< figure
    src="10.svg"
    alt="A truth table for $(p \lor q) \land r$ highlighting where it is true."
>}}

Based on the above truth table, we see that $(p \lor q) \land r = 1$ when we have the following:

\[
\begin{align*}
p = 0,\ q = 1,\ r = 1 \\
p = 1,\ q = 0,\ r = 1 \\
p = 1,\ q = 1,\ r = 1
\end{align*}
\]
{{< /notice >}}

{{< notice style="example" title="Example 1.3.4">}}
Let's take another look at the truth table for the proposition $p \rightarrow (p \lor q)$:

{{< figure 
    src="4.svg"
    alt="Another look at the truth table for $p \rightarrow (p \lor q)$."
>}}

As discussed previously, all truth value assignments for $p$ and $q$ result in a truth value of $1$ for $p \rightarrow (p \lor q)$. Thus, $p \rightarrow (p \lor q)$ is a tautology, and we can write 

$$\bigl(p \rightarrow (p \lor q)\bigr) = T_0$$
{{< /notice >}}

In the previous two examples, we could make the desired proposition true with an appropriate selection of truth values for the component propositions $p$ and $q$. Example 1.3.2 and our next example both demonstrate that this is not always possible.

{{< notice style="example" title="Example 1.3.5" >}}
Consider the proposition $\neg p \land (p \land q)$, which is slightly different than the proposition given in Example 1.3.2. Here is it's truth table:

{{< figure
    src="11.svg"
    alt="A truth table for $\neg p \land (p \land q)$."
>}}

Here, there is no way to choose truth values for $p$ and $q$ to make $\neg p \land (p \land q) = 1$. As such, we have that 

$$\bigl(\neg p \land (p \land q)\bigr) = F_0$$
{{< /notice >}}

Some propositions can be made true with an appropriate choice of truth values for any constituent propositions. Others can't.

{{% notice style="definition" title="Satisfiable, Unsatisfiable" %}}
A compound proposition $p$ is called **satisfiable** if there exists truth value assignments for its constituent propositions such that $p = 1$.

Otherwise, $p$ is **unsatisfiable**.
{{% /notice %}}

{{% notice style="example" title="Example 1.3.6" %}}
As demonstrated in Example 1.3.3, since there exists truth values for $p, q, r$ such that $\bigl((p \lor q) \land r\bigr) = 1$, we have that $\bigl((p \lor q) \land r\bigr)$ is satisfiable.

From Example 1.3.4, we saw that there exists truth values for $p, q$ such that $\bigl(p \rightarrow (p \lor q)\bigr) = 1$, meaning $p \rightarrow (p \lor q)$ is satisfiable.

From Example 1.3.5, we saw that $\bigl(\neg p \land (p \land q)\bigr) = F_0$, meaning $\neg p \land (p \land q)$ is unsatisfiable.
{{% /notice %}}
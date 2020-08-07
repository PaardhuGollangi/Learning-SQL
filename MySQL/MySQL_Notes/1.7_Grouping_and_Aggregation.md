# Grouping & Aggregation

Data in MySQL database can be summarized using the `GROUP BY` clause.

## `GROUP BY` Clause

`GROUP BY` clause groups a set of rows into a set of summarized rows by value of columns and expressions.

Generally, it is used with aggregate functions like `SUM`, `AVG`, `MIN`, `MAX` and `COUNT`.

**_Syntax :_**

```sql
SELECT col1, col2,...
Aggregate_Function(col)
FROM
Table_Name
GROUP BY Col1, Col2,...
```

**_Examples :_**

1. _Find the total number of students in each branch_

```sql
SELECT Branch, COUNT(*)
FROM Student
GROUP BY Branch;
```

2. _Find total marks of each branch_

```sql
SELECT Branch, SUM(Marks)
FROM Student
GROUP BY Branch;
```

## `GROUP BY` with `HAVING` Clause

`HAVING` Clause is used to filter the grouped data executed from `GROUP BY` clause.

**_Syntax_**

```sql
SELECT col1, col2,...
Aggregate_Function(col)
FROM
Table_Name
GROUP BY Col1, Col2,...
HAVING condition
```

**_Example :_**

1. _Find average marks of each brach having marks only for "CSE" or, "IT" department_

```sql
SELECT Branch, AVG(Marks)
FROM Student
GROUP BY Branch
HAVING Branch IN ('CSE','IT');
```

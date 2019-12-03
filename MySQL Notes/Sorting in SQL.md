## `ORDER BY` Clause
---
`ORDER BY` clause is used to sort the result from the `SELECT` statement.

Examples -:

1. Sort the students table with students name in ascending order
```sql
SELECT * FROM student ORDER BY Sname ASC;
-- SQL sorts the table in ascending order, by default. So, we can just query the following -:
SELECT * FROM student ORDER BY Sname;
```
2. Sort the students table by descending order of marks
```sql
SELECT * FROM  Student ORDER BY marks DESC;
```
3. Sort the students table first by ascending order of name and then descending order of marks
```sql
SELECT * FROM Student ORDER BY Sname ASC, Marks DESC;
```
4. Sort the faculty table in the custom sorting order of qualification as "M.Tech", "Ph.D" & "B.Tech".
```sql
SELECT * FROM Faculty ORDER BY FIELD(Qualification, "M.Tech", "Ph.D", "B.Tech");
```

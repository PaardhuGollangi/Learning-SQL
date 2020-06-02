# Sorting

The `ORDER BY` clause is used to sort the tables in ascending or, descending order in MySQL.

By default, `ORDER BY` sorts the table in ascending order.

## `ORDER BY` Clause

---

`ORDER BY` clause is used to sort the result from the `SELECT` statement.

**_Examples :_**

1. _Sort the students table with students name in ascending order_

```sql
SELECT * FROM student ORDER BY Sname ASC;
```

SQL sorts the table in ascending order, by default. So, we can just query the following :

```sql
SELECT * FROM student ORDER BY Sname;
```

2. _Sort the students table by descending order of marks_

```sql
SELECT * FROM  Student ORDER BY marks DESC;
```

3. _Sort the students table first by ascending order of name and then descending order of marks_

```sql
SELECT * FROM Student ORDER BY Sname ASC, Marks DESC;
```

4. _Sort the faculty table in the custom sorting order of qualification as "M.Tech", "Ph.D" & "B.Tech"._

```sql
SELECT * FROM Faculty ORDER BY FIELD(Qualification, "M.Tech", "Ph.D", "B.Tech");
```

# Nested Query

Nested Query or, SubQuery is a query within another query.

**_Syntax_**

```sql
SELECT Col1, Col2,..
FROM Table_Name
WHERE Conditional_Clause (Nested Query)
```

> Note :
> The `Conditional_Clause` in the syntax may include `=`,`IN`,`NOT IN` etc.

**_Examples :_**

1._Find the name of faculty working in "IT" department_

```sql
SELECT Fname FROM Faculty
WHERE
Deptid =
(
    SELECT Deptid
    FROM Department
    WHERE Dname = "IT"
);
```

2._Find the name of faculty working in "IT" or, "CSE" department_

```sql
SELECT Fname FROM Faculty
WHERE
Deptid IN
(
    SELECT Deptid
    FROM Department
    WHERE Dname IN ("IT","CSE")
);
```

3. _Find the avergae marks of students who are not from Department ID "1" or, "3"_

```sql
SELECT Branch, AVG(Marks) FROM Student
WHERE
Branch IN
(
	SELECT Dname
    FROM Department
    WHERE Deptid NOT IN (1,3)
)
GROUP BY Branch;
```

## Nested Query with `EXISTS` & `NOT EXISTS` Clause

`EXISTS` and `NOT EXISTS` clauses are used to test the existence and non-existence of any record in a sub-query, respectively.

**_Syntax :_**

```sql
SELECT * FROM
Table_Name
WHERE
EXISTS / NOT EXISTS (SubQuery);
```

**_Examples :_**

1. _Execute student name if department id "11" exists in department table_

```sql
SELECT Sname FROM Student
WHERE EXISTS
(
	SELECT Deptid FROM
    Department WHERE Deptid = 11
)
```

The result of the above query is "_Empty set_" because, the `Deptid = 11` doesn't exists.

Now, if we change `EXISTS` to `NOT EXISTS` then, all the `Sname` will be executed.

So, unlike `IN` / `NOT IN` clauses; `EXISTS`/`NOT EXISTS` just used to check the existence.

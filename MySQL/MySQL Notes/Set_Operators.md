# Set Operators

There are 3 main set operators present in SQL :

- `UNION`
- `INTERSECT` (Not present in MySQL)
- `MINUS` (Not present in MySQL)

## `UNION` Operator

The `UNION` operator is used to combine two or, more result sets into a single result set.

By default, `UNION` operator removes the duplicate rows.

### `UNION ALL` Operator

`UNION ALL` operator does the task of `UNION`, however, it also retains the duplicate rows.

**_Syntax :_**

```sql
SELECT Col1, Col2, ...
FROM Table1_name

UNION / UNION ALL

SELECT Col1, Col2, ...
FROM Table2_name
```

**_Rules_**

- The number and order of the columns for the two tables must be same.
- Data types of the column must be same

**_Examples_**

1. _Find names of all faculties and students_

```sql
SELECT Fname FROM Faculty
UNION ALL
SELECT Sname FROM Student;
```

2. _Find unique names of all faculties and students_

```sql
SELECT Fname FROM Faculty
UNION
SELECT Sname FROM Student;
```

## `INTERSECT` Operator

The `INTERSECT` operator is used to fetch only the common rows from two or, more tables.

It compares the result of two queries and returns the distinct rows that are output by both left and right queries.

**_Syntax_**

```sql
SELECT Col1, Col2,..
FROM Table1_Name

INTERSECT

SELECT Col1, Col2, ...
FROM Table2_name
```

Unfortunately, MySQL doesn't support `INTERSECT` Operator.

But, we can achieve the result of `INTERSECT` operation by using sub-queries as follows :

**_Examples_**

1. _Find common names of faculties and students_

```sql
SELECT DISTINCT Fname FROM Faculty
WHERE Fname IN
(
	SELECT Sname FROM Student
);
```

We can achieve the same result in other databases, by executing the following query :

```sql
SELECT Fname FROM Faculty
INTERSECT
SELECT Sname FROM Student;
```

## `MINUS` Operator

The `MINUS` operator is used to feth rows which are present in the first table (left query) but not in the second table (right query)

**_Syntax_**

```sql
SELECT Col1, Col2,..
FROM Table1_Name

MINUS

SELECT Col1, Col2, ...
FROM Table2_name
```

Unfortunately, MySQL doesn't support `MINUS` operator as well.

But, we can achieve the result of `MINUS` operation by using sub-queries as follows :

**_Examples_**

1. _Find those faculty names who are not allocated to any department_

```sql
SELECT Fname FROM Faculty
WHERE Deptid IN
(
	SELECT f.Deptid FROM Faculty f
	LEFT JOIN Department d ON f.Deptid = d.Deptid
	WHERE d.Deptid IS NULL
);
```

We can achieve the same result in other databases, by executing the following query :

```sql
SELECT Fname FROM Faculty
WHERE Deptid IN
(
	SELECT Deptid FROM Faculty
	MINUS
	SELECT Deptid FROM Department;
);
```

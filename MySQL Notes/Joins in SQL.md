# JOINS
---
- JOIN is a method of linking one table with another table.
- Various types of join available in MySQL are -:
    1. Cross Join
    2. Inner Join
    3. Left Join
    4. Right Join
    5. Self Join

> Note -: 
MySQL don't support the "Full Outer Join"

## CROSS JOIN
---
It returns the cartesian product of rows from the joined tables.
> Sntax :
SELECT * FROM 
table1 CROSS JOIN table2
WHERE join_condition[optional]

Example -:

1. Perform crossjoin between faculty and department table.
```sql
SELECT * FROM 
faculty CROSS JOIN department;
```
2. Perform cross join between faculty and department table and the result should only contain records with department number as 1.
```sql
SELECT * FROM
faculty CROSS JOIN department WHERE department.Deptid = 1;

-- Or, we can do it by creating alias as follows

SELECT * FROM
faculty CROSS JOIN department d WHERE d.Deptid = 1;
```

## INNER JOIN
---

It matches rows of one table with another table.

> Syntax :
SELECT column_list
FROM table1 INNER JOIN table2 ON join_condition;

Example-:

1. Find department name of each faculty.
```sql
SELECT Fname , Dname
FROM faculty INNER JOIN department ON faculty.Deptid = department.Deptid;
-- Or, we can use alias to shorten the query as follows -:
SELECT f.Fname, d.Dname 
FROM faculty f INNER JOIN department d ON f.Deptid = d.Deptid;
```
2. Find department name of faculty working in department ID 2.
```sql
SELECT f.Fname, d.Deptname
FROM faculty f INNER JOIN department d ON f.Deptid = d.Deptid WHERE d.Deptid = 2;
```

## LEFT JOIN
---

Results in all the matching rows from two tables and also rows that are not matched from left table.

> Syntax :
SELECT Columns
FROM table1 LEFT JOIN table2 ON join_condition;

Result contains all rows from the left table whether matching row in other table or, not.

Example -:

1. Perform left join between faculty and department table.
```sql
SELECT f.Fname, d.Dname
FROM faculty f LEFT JOIN department d ON f.Deptid = d.Deptid;
```
## RIGHT JOIN
---

Results in all the matching rows from two tables and also rows that are not matched from right table.

> Syntax :
SELECT Columns
FROM table1 RIGHT JOIN table2 ON join_condition;

Result contains all rows from the right table whether matching row in other table or, not.

Example -:
1. Perform right join between faculty and department table.
```sql
SELECT f.Fname, d.Dname
FROM faculty f RIGHT JOIN department d ON f.Deptid = d.Deptid;
```

## SELF JOIN
---
Used to join a table to itself.
Let's create a dummy table to understand the self join :
```sql
CREATE TABLE employee(eid int, ename varchar(20), esuper int);
```
Lets enter some suitable values for self join
```sql
INSERT INTO employee VALUES (1, "Mahesh", 2),
			                (2, "Ramesh", 3),
                            (3, "Suresh", 4);
```
Lets now perform the self join as follows -:
```sql
SELECT e.ename AS "Employee Name", s.ename AS "Supervisor Name" FROM
employee e, employee s
WHERE e.esuper = s.eid;
```

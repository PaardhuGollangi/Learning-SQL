# Views in MySQL

A database view is a virtual table, derived from the physical/real table.

##### Advantages :

- Simplifies complex queries
- Limits data access to specific users
- Provides an extra layer of security
- Enables computed columns

##### Disadvantages :

- Decrement in performance
- Dependency upon the tables

## Creating View

The syntax for creating a view :

**_Syntax :_**

```sql
CREATE VIEW view_name AS (SELECT_Statement_Query)
```

**_Example :_**

1. Create a view that contain records of only "_IT_" and "_CSE_" branch students :

```sql
CREATE VIEW viewcsit AS
SELECT * FROM Student WHERE Branch IN ('CSE','IT');
```

2. Create a view that contains "_Faculty Name_" and corresponding "_Department Name_" :

```sql
CREATE VIEW viewfacdept AS
SELECT f.Fname, d.Dname FROM
Faculty f INNER JOIN Department d
ON f.Deptid = d.Deptid;
```

3. Create a view that contains "_Student Name_" and "_Marks_" where each student has a higher mark than the average mark of all the students :

```sql
CREATE VIEW topstudents AS
SELECT Sname, Marks FROM Student
WHERE Marks > (SELECT AVG(Marks) FROM Student);
```

## Updating View

Views that include complex operations such as joins, sub-queries etc. are generally not updatable; however, simpler queries likes queries with simple `WHERE` clause can be updated.

Updating a query includes :

- Inserting data
- Removing data
- Replacing data

An update in a view is actually an update in the physical/real table related to that particular view.

So, basically, updating a view is an indirect approach to update the table.

**_Example :_**

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

Views that include complex operations such as -

- joins
- sub-queries
- use of aggregating functions
- use of `HAVING` clause
- use of`GROUP BY` clause in queries etc.

are generally not updatable; however, simpler queries likes queries with simple `WHERE` clause can be updated.

Updating a query includes :

- Inserting data
- Removing data
- Replacing data

An update in a view is actually an update in the physical/real table related to that particular view.

So, basically, updating a view is an indirect approach to update the table.

**_Example-1 :_**

We can insert some records in a Faculty table view as follows :

**_Solution :_**

- Creating a simple view from `Faculty` table :

```sql
CREATE VIEW facview AS
SELECT * FROM Faculty WHERE
Deptid IN (1,2);
```

- Now, we can insert data into this view by abiding the constraint and other rules of the physical table :

```sql
INSERT INTO facview VALUES
(10,"Temp1","Ph.D",1),
(11,"Temp2","B.Tech",3)
```

**_Note :_**

- The view is filtered with `Deptid = 1` or, `Deptid = 2` only but, as far as data insertion is considered; we can insert the data just like we do in a physical table.

- But, the condition of view remains as it is, i.e., even if we inserted a record in the `Faculty` table with `Deptid = 3`, still, when we will query the same view again, we will only see the result for faculties belonging to `Deptid = 1` or, `Deptid = 2`.

**_Example-2 :_**

Deleting record of `Fid = 7` from the view of `Faculty` table :

**_Solution :_**

```sql
DELETE FROM facview WHERE Fid = 7;
```

By passing the above query, the specific row gets deleted from the physical table.

**_Example-3 :_**

Updating the `Deptid` of `Fid = 6` from the view of `Faculty` table :

**_Solution :_**

```sql
UPDATE facview
SET Deptid = 3
WHERE Fid = 6;
```

By passing the above query, the specific row gets updated in the physical table.

### Updating View with `WITH CHECK OPTION` Clause

The `WITH CHECK OPTION` clause is used to ensure consistency of the view.

It prevents the user from modifying/updating the rows that are not visible in the view.

**_Syntax :_**

```sql
CREATE VIEW view_name AS
(SELECT_Statement_Query) WITH CHECK OPTION
```

Now, if we create a view by following the above syntax then, we can't update the table records from a view that are not visible in the view itself.

However, we can still update the data which is visible in the view.

## Managing Views

Managing views include :

1. Viewing the definition/query of the view.
2. Modifying the definition/query of the view.
3. Removing a view

### Viewing the definition of a view

The syntax that shows the view definition/query is :

**_Syntax :_**

```sql
SHOW CREATE VIEW [database_name].[view_name]
```

If we want to see a view of working database then, we can write the query without the `[database_name]`.

So, the syntax would be :

```sql
SHOW CREATE VIEW view_name;
```

### Modifying the definition of a view

The syntax to modify the view definition/query is :

**_Syntax :_**

```sql
ALTER VIEW view_name AS (SELECT_Statement_Query);
```

### Removing the view

The syntax to remove a view is :

**_Syntax :_**

```sql
DROP VIEW view_name;
```

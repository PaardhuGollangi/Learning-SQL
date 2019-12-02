## Initializing the Database
---
Using the `college` database

````sql
USE college;
````
Viewing the tables available in the `college` database

````sql
SHOW TABLES;
````
* We have three tables in the `college` database -:
    1. 'department' Table
    2. 'student' Table
    3. 'faculty' Table

* Let's view the content of the three tables

````sql
--'student' table

SELECT * FROM student;

--'faculty' table

SELECT * FROM faculty;

--'department' table

SELECT * FROM department;
````

### `WHERE` Clause
---
1. Find the `Fid` and `Fname` whose `Qualification` is "B.Tech"

````sql
SELECT Fid, Fname FROM Faculty WHERE Qualification = "B.Tech" ;
````
2. Find faculty details whose `Qualification` is not "Ph.D"
```sql
SELECT * FROM Faculty WHERE Qualification <> "Ph.D";

-- Or, we can use the following query

SELECT * FROM Faculty WHERE Qualification != "Ph.D";
```
3. Find student name from "IT" departmet whose marks are less than 80
```sql
SELECT Sname FROM Student WHERE Branch = "IT" AND Marks < 80;
```
4. Find student names from IT or, ECE Branch
```sql
SELECT Sname FROM Student WHERE Branch = "IT" OR Branch = "ECE";
```
### `IN` Clause
---
1. Find faculty names who are from department 1 or, 3
```sql
SELECT Fname FROM Faculty WHERE Deptid IN (1,3);
```
2. Find the faculty details having either "B.Tech" or, "Ph.D" as qualification.
```sql
SELECT * FROM Faculty WHERE Qualification IN ("B.Tech", "Ph.D");
```
3. Find the student details who are not from "IT" or, "CSE" Branch
```sql
SELECT * FROM Student WHERE Branch NOT IN ("IT", "CSE");
```
### `BETWEEN` and `NOT BETWEEN` Operators
---
1. Find student details whose marks are not between 60 and 90
```sql
SELECT * FROM Student WHERE Marks BETWEEN 60 AND 90 ;
```
2. Find student details whose marks are not between 50 and 90
```sql
SELECT * FROM Student WHERE Marks NOT BETWEEN 50 AND 90;
```
### `LIMIT` Statement
---
Used to constraint the number of rows returned by the `SELECT` statement.
1. Find the first 4 records from the faculty table
```sql
SELECT * FROM Faculty LIMIT 4;
```



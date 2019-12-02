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
2. Find the 2nd and 3rd row from the faculty table
```sql
SELECT * FROM Faculty LIMIT 1,2;
```
3. Find the student name with second highest mark
```sql
SELECT Sname FROM Student ORDER BY Marks DESC LIMIT 1,1;
```
### `NULL` Operator
---
This is used to check whether the value is null or, not.

1. Find the student name who is not alloted to any branch
```sql
SELECT Sname FROM Student WHERE Branch IS NULL;
```
2. Find the student name who are alllocated to at leastone branch
```sql
SELECT Sname FROM student WHERE Branch IS NOT NULL;
```
### `LIKE` Operator
---
- Used to select rows/data based on patterns. Following two wildcard characters are used with the Like operator.
- percentage(%) - it matches any string of zero or, more characters.
- underscore(_) - it matches exactly one single character. */

Examples -:

1. Find faculty details whose name starts with letter "A"
```sql
SELECT * FROM faculty WHERE Fname LIKE 'A%';
```
2. Find faculty details whose name ends with letter "N"
```sql
SELECT * FROM faculty WHERE Fname LIKE '%N';
```
3. Student name and marks where the second letter in the student name is "A".
```sql
SELECT sname, marks FROM student WHERE Sname LIKE '_A%';
```
4. student name and marks where the student name starts with "P" and consists of exactly 5 letters.
```sql
SELECT sname, marks FROM student WHERE Sname LIKE 'P____';
```
5. Find faculty details whose name not ends with letter "N"
```sql
SELECT * FROM faculty WHERE Fname NOT LIKE '%N';
```
6. Student name and marks where the second letter in the student name is not "A".
```sql
SELECT sname, marks FROM student WHERE Sname NOT LIKE '_A%';
```


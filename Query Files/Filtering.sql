/* Initializing the database 
-------------------------- */

USE College;

/* WHERE Clause
---------------------
Questions to answer
---------------------- */

-- 1. Find "Fid" and "Fname" whose qualification is "B.Tech"

SELECT * FROM Faculty; #viewing the faculty table

SELECT Fid, Fname FROM Faculty WHERE Qualification = "B.Tech" ;

-- 2. Find faculty details whose qualification is not "Ph.D"

SELECT * FROM Faculty WHERE Qualification <> "Ph.D";

-- Or, we can use the following query

SELECT * FROM Faculty WHERE Qualification != "Ph.D";

-- 3. Find student name from "IT" departmet whose marks are less than 80

SELECT * FROM Student ; #Viewing the student table

SELECT Sname FROM Student WHERE Branch = "IT" AND Marks < 80;

-- 4. Find student names from IT or, ECE Branch

SELECT Sname FROM Student WHERE Branch = "IT" OR Branch = "ECE";


/* IN Operator
-------------- */

-- 1. Find faculty names who are from department 1 or, 3

SELECT Fname FROM Faculty WHERE Deptid IN (1,3);

-- 2. Find the faculty details having either of the following qualifications

SELECT * FROM Faculty WHERE Qualification IN ("B.Tech", "Ph.D");

-- 3. Find the student details who are not from "IT" or, "CSE" Branch

SELECT * FROM Student WHERE Branch NOT IN ("IT", "CSE");

/* BETWEEN or, NOT BETWEEN Operators
-----------------------------------*/

-- Questions to answer

-- 1. Find student details whose marks are not between 60 and 90

SELECT * FROM Student WHERE Marks BETWEEN 60 AND 90 ;

-- 2. Find student details whose marks are not between 50 and 90

SELECT * FROM Student WHERE Marks NOT BETWEEN 50 AND 90;

/* LIMIT statment
------------------
> Used to constraint the number of rows returned by the SELECT statement

ISNULL operator
------------------
> Used to check whether the value is null or, not*/

-- Questions to be answered 
-- -------------------------

-- 1. Find the first 4 records from the faculty table
SELECT * FROM Faculty LIMIT 4;

-- 2. Find the 2nd and 3rd row from the faculty table
SELECT * FROM faculty LIMIT 1,2; #1st row is indexed as zero. so we set offset as "1" and limit is "2"

-- 3. Find the student name with second highest mark

SELECT * FROM student;
SELECT * FROM student ORDER BY Marks DESC; -- Sorted the list in descending order of marks
SELECT * FROM student ORDER BY Marks DESC LIMIT 1,1; -- selected the student row with second highest marks after sorting
SELECT Sname FROM student ORDER BY Marks DESC LIMIT 1,1; -- selected the name of the student with second highest mark after sorting.

-- 4. Find the student name who is not alloted to any branch

INSERT INTO student values(8,"Jhon", NULL, 37);
SELECT Sname FROM student WHERE Branch IS NULL;

-- 5. Find the student name who are alllocated to at leastone branch

SELECT Sname FROM student WHERE Branch IS NOT NULL;

/* LIKE Operator
--------------
> Used to select rows/data based on patterns. Following two wildcard characters are used with the Like operator
> percentage(%) - it matches any string of zero or, more characters.
> underscore(_) - it matches exactly one single character. */

-- Queries to be executed
-- ----------------------

-- 1. Find faculty details whose name starts with letter "A"

SELECT * FROM faculty WHERE Fname LIKE 'A%';

-- 2 Find faculty details whose name ends with letter "N"

SELECT * FROM faculty WHERE Fname LIKE '%N';

-- 3. Student name and marks where the second letter in the student name is "A".

SELECT sname, marks FROM student WHERE Sname LIKE '_A%';

-- 4. student name and marks where the student name starts with "P" and consists of exactly 5 letters.

SELECT sname, marks FROM student WHERE Sname LIKE 'P____';

-- 5 Find faculty details whose name not ends with letter "N"

SELECT * FROM faculty WHERE Fname NOT LIKE '%N';

-- 6. Student name and marks where the second letter in the student name is not "A".

SELECT sname, marks FROM student WHERE Sname NOT LIKE '_A%';



















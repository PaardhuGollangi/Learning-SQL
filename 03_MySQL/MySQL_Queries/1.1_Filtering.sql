-- Using the "College" database

USE College;

-- WHERE Clause
-- =============

-- 1. Find "Fid" and "Fname" whose qualification is "B.Tech"

SELECT Fid, Fname
FROM Faculty
WHERE Qualification = "B.Tech";

-- 2. Find faculty details whose qualification is not "Ph.D"

SELECT *
FROM Faculty
WHERE Qualification <> "Ph.D";

-- Or, we can use the following query

SELECT *
FROM Faculty
WHERE Qualification != "Ph.D";

-- 3. Find student name from "IT" departmet whose marks are less than 80

SELECT Sname
FROM Student
WHERE Branch = "IT" AND Marks < 80;

-- 4. Find student names from IT or, ECE Branch

SELECT Sname
FROM Student
WHERE Branch = "IT" OR Branch = "ECE";


-- IN Operator
-- ============= 

-- 1. Find faculty names who are from department 1 or, 3

SELECT Fname
FROM Faculty
WHERE Deptid IN (1,3);

-- 2. Find the faculty details having either of the following qualifications

SELECT *
FROM Faculty
WHERE Qualification IN ("B.Tech", "Ph.D");

-- 3. Find the student details who are not from "IT" or, "CSE" Branch

SELECT *
FROM Student
WHERE Branch NOT IN ("IT", "CSE");

-- BETWEEN or, NOT BETWEEN Operators
-- ==================================

-- 1. Find student details whose marks are not between 60 and 90

SELECT *
FROM Student
WHERE Marks BETWEEN 60 AND 90
;

-- 2. Find student details whose marks are not between 50 and 90

SELECT *
FROM Student
WHERE Marks NOT BETWEEN 50 AND 90;

--  LIMIT statment & ISNULL operator
-- ===================================

-- 1. Find the first 4 records from the faculty table
SELECT *
FROM Faculty LIMIT
4;

-- 2. Find the 2nd and 3rd row from the faculty table

SELECT *
FROM faculty LIMIT
1,2;

-- 3. Find the student name with second highest mark

SELECT Sname
FROM student
ORDER BY Marks DESC LIMIT 1,1;

-- 4. Find the student name who is not alloted to any branch

SELECT Sname
FROM student
WHERE Branch IS NULL;

-- 5. Find the student name who are allocated to at least one branch

SELECT Sname
FROM student
WHERE Branch IS NOT NULL;

-- LIKE Operator
-- ==============

-- 1. Find faculty details whose name starts with letter "A"

SELECT *
FROM faculty
WHERE Fname LIKE 'A%';

-- 2 Find faculty details whose name ends with letter "N"

SELECT *
FROM faculty
WHERE Fname LIKE '%N';

-- 3. Student name and marks where the second letter in the student name is "A".

SELECT sname, marks
FROM student
WHERE Sname LIKE '_A%';

-- 4. student name and marks where the student name starts with "P" and consists of exactly 5 letters.

SELECT sname, marks
FROM student
WHERE Sname LIKE 'P____';

-- 5 Find faculty details whose name not ends with letter "N"

SELECT *
FROM faculty
WHERE Fname NOT LIKE '%N';

-- 6. Student name and marks where the second letter in the student name is not "A".

SELECT sname, marks
FROM student
WHERE Sname NOT LIKE '_A%';
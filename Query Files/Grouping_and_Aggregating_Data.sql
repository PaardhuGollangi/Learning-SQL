-- Using the "College" database
USE College;

-- GROUP BY Clause
-- ===============

-- 1. Find the total number of students in each branch

SELECT Branch, COUNT(*)
FROM Student
GROUP BY Branch;


-- 2. Find total marks of each branch

SELECT Branch, SUM(Marks)
FROM Student
GROUP BY Branch;

-- 3. Find average marks of each brach having marks only for "CSE" or, "IT" department

SELECT Branch, AVG(Marks)
FROM Student
GROUP BY Branch
HAVING Branch IN ('CSE','IT');
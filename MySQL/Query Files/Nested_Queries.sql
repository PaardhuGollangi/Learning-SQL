-- Nested Queries
-- ===============

-- 1. Find the name of faculty working in "IT" department

SELECT Fname FROM Faculty
WHERE
Deptid =
(
	SELECT Deptid 
    FROM Department 
    WHERE Dname = "IT"
);

-- 2. Find the name of faculty working in "IT" or, "CSE" department

SELECT Fname FROM Faculty
WHERE
Deptid IN
(
	SELECT Deptid 
    FROM Department 
    WHERE Dname IN ("IT","CSE")
);

-- 3.Find the avergae marks of students who are not from Department ID "1" or, "3" 

SELECT Branch, AVG(Marks) FROM Student
WHERE
Branch IN
(
	SELECT Dname
    FROM Department 
    WHERE Deptid NOT IN (1,3)
)
GROUP BY Branch;

-- Exists / Not Exists
-- ===================

-- 1. Execute student name if department id "11" exists in department table

SELECT Sname FROM Student
WHERE EXISTS
(
	SELECT Deptid FROM
    Department WHERE Deptid = 11
)




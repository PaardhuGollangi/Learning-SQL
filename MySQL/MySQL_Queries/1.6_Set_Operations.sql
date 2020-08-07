-- Union Operation
-- ==================
-- 1. Find names of all faculties and students
 
SELECT Fname FROM Faculty
UNION ALL
SELECT Sname FROM Student;

-- 2. Find unique names of all faculties and students

SELECT Fname FROM Faculty
UNION
SELECT Sname FROM Student;

-- Intersection Operation
-- =======================

-- 1. Find common names of faculties and students 


SELECT DISTINCT Fname FROM Faculty
WHERE Fname IN
(
	SELECT Sname FROM Student
);

-- Minus Operation
-- ================

-- 1. Find those faculty names who are not allocated to any department

SELECT Fname FROM Faculty
WHERE Deptid IN
(
	SELECT f.Deptid FROM Faculty f
	LEFT JOIN Department d ON f.Deptid = d.Deptid
	WHERE d.Deptid IS NULL
);

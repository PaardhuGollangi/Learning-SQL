-- Using the college database :
USE College;

-- Creating Views
-- ================

-- 1. Create a view that contain records of only "IT" and "CSE" branch students : 

CREATE VIEW viewcsit AS
SELECT * FROM Student WHERE Branch IN ("CSE","IT");

-- 2. Create a view that contains "Faculty Name" and corresponding "Department Name" :

CREATE VIEW viewfacdept AS
SELECT f.Fname, d.Dname FROM Faculty f INNER JOIN Department d ON f.Deptid = d.Deptid;

-- 3. Create a view that contains "Student Name" and "Marks" where each student has a higher mark than the average mark of all the students

CREATE VIEW topstudents AS
SELECT Sname, Marks FROM Student
WHERE Marks > (SELECT AVG(Marks) FROM Student);








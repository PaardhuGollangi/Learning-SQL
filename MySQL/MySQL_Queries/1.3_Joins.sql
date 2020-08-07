-- Using the "college" database

USE college
;

-- CROSS JOIN
-- ===========

-- 1. Perform cross join between faculty and department table.

SELECT *
FROM
    faculty CROSS JOIN department;

-- 2. Perform cross join between faculty and department table and the result should only contain records with department number as 1.

SELECT *
FROM
    faculty CROSS JOIN department
WHERE department.Deptid = 1;

-- INNER JOIN
-- ============

-- 1. Find department name of each faculty.

SELECT Fname , Dname
FROM faculty INNER JOIN department ON faculty.Deptid = department.Deptid;

-- Or, we can use alias to shorten the query as follows -:

SELECT f.Fname, d.Dname
FROM faculty f INNER JOIN department d ON f.Deptid = d.Deptid;

-- 2. Find department name of faculty working in department ID 2.

SELECT f.Fname, d.Deptname
FROM faculty f INNER JOIN department d ON f.Deptid = d.Deptid
WHERE d.Deptid = 2;


-- LEFT JOIN
-- ===========

-- 1. Perform left join between faculty and department table.

SELECT f.Fname, d.Dname
FROM faculty f LEFT JOIN department d ON f.Deptid = d.Deptid;

-- RIGHT JOIN
-- ===========

-- 1. Perform right join between faculty and department table.

SELECT f.Fname, d.Dname
FROM faculty f RIGHT JOIN department d ON f.Deptid = d.Deptid;

-- SELF JOIN
-- =========

-- Let's create a dummy table to understand the self join

CREATE TABLE employee
(
    eid int,
    ename varchar(20),
    esuper int
);

INSERT INTO employee
VALUES
    (1, "Mahesh", 2),
    (2, "Ramesh", 3),
    (3, "Suresh", 4);

-- Perfroming self-join :

SELECT e.ename AS "Employee Name", s.ename AS "Supervisor Name"
FROM
    employee e, employee s
WHERE e.esuper = s.eid;
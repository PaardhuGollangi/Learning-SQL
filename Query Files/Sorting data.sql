-- Using the "college" database

USE college;

-- ORDER BY
-- ============

-- 1. Sort by ascending student name

SELECT *
FROM student
ORDER BY sname;

-- 2. Sort by descending student name
SELECT *
FROM student
ORDER BY sname DESC;

-- 3. Sort by descending marks

SELECT *
FROM student
ORDER BY marks DESC;

-- 4. Sort by name in ascending and marks in descending

SELECT *
FROM student
ORDER BY sname ASC, Marks DESC;

-- 5. Custom Sorting

SELECT *
FROM faculty
ORDER BY field(qualification, "M.Tech", "Ph.D", "B.Tech");
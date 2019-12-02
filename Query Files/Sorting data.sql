USE college;

/*
Order By Clause
------------------

Used to sort the result from the select statement.
*/

-- 1. Sort by ascending student name

SELECT * FROM student;
SELECT * FROM student ORDER BY sname;
SELECT * FROM student ORDER BY sname DESC;

-- 2. Sort by descending marks

SELECT * FROM student ORDER BY marks DESC;

-- 3. Sort by name in ascending and marks in descending

SELECT * FROM student ORDER BY sname ASC, Marks DESC;

-- 4. Custom Sort

SELECT * FROM faculty;
SELECT * FROM faculty ORDER BY field(qualification, "M.Tech", "Ph.D", "B.Tech");







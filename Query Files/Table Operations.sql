-- Using the "College" database
-- -----------------------------

USE College;

/* 
INSERT with SELECT Clause
---------------------------
We can insert data into a table from another table using the following syntax -:

INSERT INTO table_name
SELECT col1, col2,...,coln FROM table_name;
*/

-- Let's create a temporary table to perform the above operation

CREATE TABLE dept_temp(deptid int, deptname varchar(20));

-- Let's perform INSERT with SELECT Clause to get all the information from original "Department" Table -:

INSERT INTO dept_temp
SELECT deptid, dname FROM department; -- We can use "SELECT * " instead of column names as we are retriving all the columns

-- Let's view the table -:

SELECT * FROM dept_temp;

/* 
UPDATING THE DATA
------------------

> "UPDATE" statement is used to update the existing data in a table.
> Syntax -:

UPDATE table_name
SET
	col1 = exp1,
    col2 = exp2,
    ---
    ---
WHERE condition;
*/

-- Let's set the deptname as "Applied Sciences" where deptid is "2"











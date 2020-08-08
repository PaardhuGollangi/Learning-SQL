-- EXPLORATORY DATA ANALYSIS --
-- ============================ --

-- Viewing the tables available:

SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND
    schemaname != 'information_schema';

-- Viewing the "company_divisions" table:

SELECT *
FROM company_divisions;

-- Viewing the "company_regions" table:

SELECT *
FROM company_regions;

-- Viewing the "staff" table:

SELECT *
FROM staff;

-- Viweing the first 10 rows of "staff" table:

SELECT *
FROM staff
LIMIT
10;

-- Basic Aggregations & Statistics --
-- =============================== --

-- To count the total number of staffs present:

SELECT
    COUNT(*)
FROM
    staff;

-- To count the total number of staffs by gender:

SELECT
    gender, COUNT(*)
FROM
    staff
GROUP BY
	gender;

-- To count the total number of staffs by department:

SELECT
    department, COUNT(*)
FROM
    staff
GROUP BY
	department;

-- Maximum salary present in the staff table:

SELECT
    MAX(salary)
FROM
    staff;

-- Minimum salary present in the staff table:

SELECT
    MIN(salary)
FROM
    staff;

-- Maximum & Minimum salary by department:

SELECT
    department, MAX(salary), MIN(salary)
FROM
    staff
GROUP BY
	department;

-- Total salary given by the company to all of its staffs:

SELECT
    SUM(salary)
FROM
    staff;

-- Salary allocated by the company to each department:

SELECT
    department, SUM(salary)
FROM
    staff
GROUP BY
	department;

-- Average salary (rounded to 2 decimal places) allocated by the company to each department:

SELECT
    department,
    ROUND(AVG(salary),2) AS "Average_Salary"
FROM
    staff
GROUP BY
	department;

-- Population variance and standard deviation (rounded to 2 decimal places) in salary by each department:

SELECT
    department,
    ROUND(VAR_POP(salary),2) AS "Salary_Variance",
    ROUND(STDDEV_POP(salary),2) AS "Salary_SD"
FROM
    staff
GROUP BY
	department;

-- Filtering, Sorting & Grouping --
-- ============================= --

-- StaffS with salary greater than $100,000:

SELECT
    last_name, department, salary
FROM
    staff
WHERE
	salary > 100000;

-- StaffS working at 'Tools' department:

SELECT
    last_name, department, salary
FROM
    staff
WHERE
	department = 'Tools';

-- Staffs working at 'Tools' department and with salary greater than $100,000:

SELECT
    last_name, department, salary
FROM
    staff
WHERE
	department = 'Tools'
    AND
    salary > 100000;

-- Staffs working at 'Tools' or, 'Automotive' department and with salary greater than $100,000:

SELECT
    last_name, department, salary
FROM
    staff
WHERE
	(department = 'Tools' OR department = 'Automotive')
    AND
    salary > 100000;

-- StaffS working at 'Tools', 'Automotive' or, 'Games' department:

SELECT
    last_name, department, salary
FROM
    staff
WHERE
	department IN ('Tools','Automotive','Games');

-- Staffs working in departments where department name starts with "B":

SELECT
    last_name, department, salary
FROM
    staff
WHERE
	department LIKE 'B%';

-- Staffs working in departments where department name starts with "B" and has exactly 4 letters afterwards:

SELECT
    last_name, department, salary
FROM
    staff
WHERE
	department LIKE 'B____';

-- Staffs working in departments where department name starts with "B" and ends with exactly "y":

SELECT
    last_name, department, salary
FROM
    staff
WHERE
	department LIKE 'B%y';

-- Staffs working in departments where department name ends with "y":

SELECT
    last_name, department, salary
FROM
    staff
WHERE
	department LIKE '%y';

-- Staffs working in departments where department name starts with "B" and followed by "o":

SELECT
    last_name, department, salary
FROM
    staff
WHERE
	department LIKE 'Bo%';
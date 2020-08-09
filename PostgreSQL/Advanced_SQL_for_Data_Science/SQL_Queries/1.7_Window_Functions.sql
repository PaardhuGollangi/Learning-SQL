-- PARTITION BY --
-- ============ --

-- Show salary by staffs along with their department and department average salary:

SELECT
	last_name,
	department,
	salary,
	ROUND( AVG(salary) OVER (PARTITION BY department) )
FROM
	staff;

-- Show staff salary and their "company_regions" along with the minimum salary of the "company_region"

SELECT
	company_regions,
	last_name,
	salary,
	MIN(salary) OVER (PARTITION BY company_regions)
FROM
	staff_det;

-- FIRST_VALUE with PARTITION BY --
-- ============================= --

-- Show the salary and department of each staff along with a column that shows the maximum salary by corresponding department:

SELECT
	department,
	last_name,
	salary,
	FIRST_VALUE(salary) OVER (PARTITION BY department ORDER BY salary DESC)
FROM
	staff;

/* Show the salary and department of each staff along with a column that shows 
the salary of the person by department whose name comes first when the "last_name" sorted in ascending order: */

SELECT
	department,
	last_name,
	salary,
	FIRST_VALUE(salary) OVER (PARTITION BY department ORDER BY last_name )
FROM
	staff;

-- RANK with PARTITION BY --
-- ====================== --

-- Rank the salary of staffs in descending order of salary by department:

SELECT
	last_name,
	department,
	salary,
	RANK() OVER (PARTITION BY department ORDER BY salary DESC)
FROM
	staff;


-- LAG & LEAD with PARTITION BY --
-- ============================ --

-- Show the salary by department for each staff along with a column that shows salary of staffs by departement lagged by a row

SELECT
	department,
	last_name,
	salary,
	LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC)
FROM
	staff;

-- Show the salary by department for each staff along with a column that shows salary of staffs by departement leaded by a row

SELECT
	department,
	last_name,
	salary,
	LEAD(salary) OVER (PARTITION BY department ORDER BY salary DESC)
FROM
	staff;

-- NTILE with PARTITION BY --
-- ======================= --

-- Show salary of staffs by department and also show the quartiles of the salary by each department:

/* NTILE is used to group rows into some number of buckets or, ordered groups */

SELECT
	department,
	last_name,
	salary,
	NTILE(4) OVER (PARTITION BY department ORDER BY salary DESC)
FROM
	staff;
-- SUBQUERIES --
-- ========== --

-- SUBQUERY IN SELECT CLAUSE: Show the salary of staffs along with the department average:

SELECT
	s1.last_name,
	s1.department,
	s1.salary,
	( SELECT
		ROUND(AVG(salary)) AS "department_average"
	FROM
		staff s2
	WHERE
	 	s2.department = s1.department
	)
FROM
	staff s1;

-- SUBQUERY IN FROM CLAUSE: Finding average salary of departments where average salary is greater than $100,000:

SELECT
	s1.department,
	ROUND(AVG(s1.salary))
FROM
	(
	SELECT
		department,
		salary
	FROM
		staff
	WHERE
		salary > 100000
) s1
GROUP BY
	s1.department;

-- SUBQUERY IN WHERE CLAUSE: Find the staff and his department having the maximum salary:

SELECT
	s1.last_name,
	s1.department,
	s1.salary
FROM
	staff s1
WHERE
	s1.salary = ( SELECT MAX(s2.salary)
FROM staff s2);
-- FETCH FIRST --
-- =========== --

-- Show the Top 10 staffs by salary and their salary

/* FETCH FIRST works with ORDER BY clause to sort the result BEFORE selecting the rows to return.
This is different from how the LIMIT clause works. 
LIMIT clause actually restricts the number of rows and then perform the operation. */

SELECT
	last_name,
	job_title,
	salary
FROM
	staff
ORDER BY
	salary DESC
FETCH FIRST
	10 ROWS ONLY;
	
-- Show the Top 5 "company_divisions" by staff count using FETCH FIRST clause:

SELECT
	company_division,
	COUNT(*) AS "staff_count"
FROM
	staff_det
GROUP BY
	company_division
ORDER BY
	staff_count DESC
FETCH FIRST
	5 ROWS ONLY;
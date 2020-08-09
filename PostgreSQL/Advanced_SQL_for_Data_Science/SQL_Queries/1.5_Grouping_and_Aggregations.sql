-- MULTIPLE GROUPING --
-- ================= --

-- Using the "staff_det" view, count the number of employee by "company_division", "company_regions" and by "gender":

SELECT
	company_division,
	company_regions,
	gender,
	COUNT(*) AS "staff_count"
FROM
	staff_det
GROUP BY
	company_division, company_regions, gender
ORDER BY
	company_division, company_regions, gender;


-- GROUPING SETS --
-- ============= --

-- Using the "staff_det" view, count the number of employee by "company_division" and then by "company_regions":

SELECT
	company_division,
	company_regions,
	COUNT(*) AS "staff_count"
FROM
	staff_det
GROUP BY
	GROUPING SETS(company_division,company_regions)
ORDER BY
	company_regions, company_division;
	

-- ROLL-UP --
-- ======= --

-- Using the "staff_det_country" view, show the count of staffs by "country_regions breakdown and by "country" as well:

SELECT
	company_regions,
	country,
	COUNT(*) AS "staff_count"
FROM
	staff_det_country
GROUP BY
	ROLLUP(country, company_regions)
ORDER BY
	country, company_regions;
	
-- CUBE --
-- ==== --

-- show the combined result of GROUPING SET & ROLLUP for "company_divisions" and "company_regions":

SELECT
	company_division,
	company_regions,
	COUNT(*) AS "staff_count"
FROM
	staff_det
GROUP BY
	CUBE(company_division, company_regions);










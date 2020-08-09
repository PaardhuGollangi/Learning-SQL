-- VIEWS --
-- ===== --

-- Create a view named "staff_det" that consolidates all the relevant columns from all the tables:

CREATE VIEW staff_det AS
SELECT
	s.*,
	cd.company_division,
	cr.company_regions
FROM
	staff s
LEFT JOIN
	company_divisions cd
ON
	s.department = cd.department
LEFT JOIN
	company_regions cr
ON
	s.region_id = cr.region_id;
	
	
-- Create or, replace the view ""staff_det_country" that includes all coloumns from "staff_det" view along with the "country" column:

CREATE OR REPLACE VIEW staff_det_country AS

SELECT
	s.*,
	cd.company_division,
	cr.company_regions,
	cr.country
FROM
	staff s
LEFT JOIN
	company_divisions cd
ON
	s.department = cd.department
LEFT JOIN
	company_regions cr
ON
	s.region_id = cr.region_id;


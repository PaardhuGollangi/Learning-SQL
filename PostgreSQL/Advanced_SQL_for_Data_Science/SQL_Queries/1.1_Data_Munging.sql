-- Reformatting Character Data --
-- =========================== --

-- Viewing the distinct departments available:

SELECT DISTINCT
    department
FROM
    staff;

-- Uppercasing and lowercasing the distinct department names:

SELECT DISTINCT
    department, UPPER(department), LOWER(department)
FROM
    staff;

-- Concatenating "job_title" and "department" names:

SELECT DISTINCT
    job_title || ' - ' || department AS "Concatenated_Label"
FROM
    staff;

-- Removing leading & trailing white-spaces:

SELECT
    '   SOFTWARES   ', TRIM('   SOFTWARES   ');

-- Getting length of character string:

SELECT
    LENGTH('   SOFTWARES   ') AS "Untrimmed_Length",
    LENGTH(TRIM('   SOFTWARES   ')) AS "Trimmed_Length";

-- Getting character length of each distinct department:

SELECT DISTINCT
    department, LENGTH(department)
FROM
    staff;

-- Checking whether the staff belongs to "Assistant" level or, not:

SELECT
    job_title,
    (job_title LIKE '%Assistant%'
) AS "Is_Assistant"
FROM
	staff;

-- Character Extraction & Replacements --
-- =================================== --





	






	



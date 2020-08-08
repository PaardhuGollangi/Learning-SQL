-- REFORMATTING CHARACTER DATA --
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

-- CHARACTER EXTRACTION & REPLACEMENTS --
-- =================================== --

-- Extracting all the letters from 5th position onwards from a random string:

SELECT
    SUBSTRING('ABCDEFGHIJKL' FROM 5) test_string;

-- Extracting all the letters from 1st position onwards upto 3 letters from a random string:

SELECT
    SUBSTRING('ABCDEFGHIJKL' FROM 1
FOR 3) test_string;

-- Replacing "Assistant" with "Asst." in "job_title"

SELECT
    OVERLAY(job_title PLACING
'Asst.' FROM 1 FOR 9)
FROM
	staff
WHERE
	job_title LIKE 'Assistant%'


-- FILTERING WITH REGULAR EXPRESSION --
-- ================================== --

-- Finding the "job_titles" that has word "Assistant" associated along with the rank "III" or, "IV":

SELECT
    job_title
FROM
    staff
WHERE
	job_title
SIMILAR TO '%Assistant%(III|IV)'

-- Finding the "job_titles" that has word "Assistant" associated along with any roman numeral rank greater than "I":

SELECT
    job_title
FROM
    staff
WHERE
	job_title
SIMILAR TO '%Assistant% I_'

-- Finding the "job_titles" that contains the letter "E", "P" or, "S" and any character afterwards:

SELECT
    job_title
FROM
    staff
WHERE
	job_title
SIMILAR TO '[EPS]%'


-- REFORMATING NUMERICAL DATA --
-- ========================== --

-- Finding the average salary by department (trucated to 1 decimal places):

SELECT
    department,
    TRUNC(AVG(salary),1)
FROM
    staff
GROUP BY
	department;

-- Finding the average salary by department (rouding to 1 decimal places):

SELECT
    department,
    ROUND(AVG(salary),1)
FROM
    staff
GROUP BY
	department;

-- Finding the average salary by department (rouding-up to zero decimal places):

SELECT
    department,
    CEIL(AVG(salary))
FROM
    staff
GROUP BY
	department;

-- Finding the average salary by department (rouding-down to zero decimal places):	

SELECT
    department,
    FLOOR(AVG(salary))
FROM
    staff
GROUP BY
	department;
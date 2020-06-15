-- BASIC DESCRIPTIVE STATISTICS --
-- ============================ --

-- Viewing the 'store_sales' table

SELECT * FROM store_sales;

-- Counting Data --
-- ============= --


-- Counting total number of rows

SELECT COUNT(*) FROM store_sales;

-- Counting total number of rows per each month

SELECT
	month_of_year,
	COUNT(*)
FROM 
	store_sales 
GROUP BY 
	month_of_year;

-- Maximum & Minimum --
-- ================= --

-- Maximum & Minimum employees working on any shift of the entire 'store_sales' table

SELECT
	MAX(employee_shifts),
	MIN(employee_shifts)
FROM
	store_sales;

-- Maximum & Minimum employees working on any shift by each month

SELECT
	month_of_year,
	MAX(employee_shifts),
	MIN(employee_shifts)
FROM
	store_sales
GROUP BY
	month_of_year

-- Summation & Average --
-- =================== --

-- Total items sold

SELECT SUM(units_sold) FROM store_sales;

-- Total & average items sold by each month of the year

SELECT
	month_of_year,
	SUM(units_sold),
	AVG(units_sold)
FROM
	store_sales
GROUP BY
	month_of_year;

-- Variance & Standard Deviation --
-- ============================= --

-- Total & average items sold by each month of the year along with the popultion variance & standard deviation 

SELECT
	month_of_year,
	SUM(units_sold),
	AVG(units_sold),
	VAR_POP(units_sold),
	STDDEV_POP(units_sold)
FROM
	store_sales
GROUP BY
	month_of_year;

-- Rounding-off Numbers --
-- ==================== --

-- Round-off a statistical summary output up 2 decimal places

SELECT
	month_of_year,
	SUM(units_sold),
	ROUND(AVG(units_sold),2) AS rounded_average,
	ROUND(VAR_POP(units_sold),2) AS rounded_variance,
	ROUND(STDDEV_POP(units_sold),2) AS rounded_std_dev
FROM
	store_sales
GROUP BY
	month_of_year;




-- CORRELATION & RANKS --
-- =================== --

-- Viewing the 'store_sales' table

SELECT * FROM store_sales;

-- Correlaton --
-- ========== --

-- Find the correlation coefficient between 'revenue' and 'units_sold'

SELECT
	CORR(units_sold, revenue)
FROM
	store_sales;
	
-- Find the correlation coefficient between 'employee_shifts' and 'units_sold'

SELECT
	CORR(units_sold, employee_shifts)
FROM
	store_sales;

-- Find the correlation coefficient between 'month_of_year' and 'units_sold'

SELECT
	CORR(units_sold, month_of_year)
FROM
	store_sales;


-- Ranking --
-- ======= --

-- Rank the 'units_sold' column :

SELECT
	sale_date,
	month_of_year,
	units_sold,
	ROW_NUMBER() OVER (ORDER BY units_sold)
FROM
	store_sales;
	
-- Rank the 'units_sold' column sort the output table in the ascending order of month:

SELECT
	sale_date,
	month_of_year,
	units_sold,
	ROW_NUMBER() OVER (ORDER BY units_sold)
FROM
	store_sales
ORDER BY
	month_of_year;

-- Mode --
-- ==== --

-- Find the mode of 'employee_shifts' :

SELECT
	month_of_year,
	MODE() WITHIN GROUP (ORDER BY employee_shifts)
FROM
	store_sales
GROUP BY
	month_of_year;
	







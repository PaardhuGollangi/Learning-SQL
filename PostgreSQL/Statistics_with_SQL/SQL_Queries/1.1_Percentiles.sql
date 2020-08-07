-- PERCENTILES & FREQUENCIES --
-- ============================ --

-- Viewing the 'store_sales' table

SELECT * FROM store_sales;

-- Discrete Percentiles --
-- ==================== --

-- Show the 50th percentile (median) of the 'revenue':

SELECT 
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY revenue) AS median
FROM
	store_sales;

-- Show the 25th,50th,75th & 100th percentile of the 'revenue':

SELECT 
	PERCENTILE_DISC(0.00) WITHIN GROUP (ORDER BY revenue) AS minimum,
	PERCENTILE_DISC(0.25) WITHIN GROUP (ORDER BY revenue) AS first_quartile,
	PERCENTILE_DISC(0.50) WITHIN GROUP (ORDER BY revenue) AS median,
	PERCENTILE_DISC(0.75) WITHIN GROUP (ORDER BY revenue) AS third_quartile,
	PERCENTILE_DISC(1.00) WITHIN GROUP (ORDER BY revenue) AS maximum
FROM
	store_sales;

-- Continuous Percentiles --
-- ====================== --

-- Finding the discrete and continuous percentiles for 'revenue'

SELECT
	PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY revenue) AS revenue_95th_pct_cont,
	PERCENTILE_DISC(0.95) WITHIN GROUP (ORDER BY revenue) AS revenue_95th_pct_disc
FROM
	store_sales;

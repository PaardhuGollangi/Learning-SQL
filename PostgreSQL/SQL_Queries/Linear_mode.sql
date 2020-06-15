-- LINEAR REGRESSION MODED --
-- ======================= --

-- Calculating the intercept and slope between 'employee_shifts' and 'units_sold' :

SELECT
	REGR_INTERCEPT(employee_shifts, units_sold) AS intercept,
	REGR_SLOPE(employee_shifts, units_sold) AS slope
FROM
	store_sales;
	
-- Predict the 'employee_shifts' when the 'units_sold' = 1250

SELECT
	REGR_SLOPE(employee_shifts, units_sold)* 1250 + REGR_INTERCEPT(employee_shifts, units_sold) AS predicted_value
FROM
	store_sales;
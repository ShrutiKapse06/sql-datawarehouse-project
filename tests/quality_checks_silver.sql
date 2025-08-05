-- Check for Nulls or Duplicates in Primary Key.
-- Expectation: none found

SELECT 
	cst_id,
	COUNT(*)
FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL

SELECT *
FROM silver.crm_sales_details

SELECT * 
FROM bronze.crm_sales_details
WHERE sls_ship_dt <=0 OR LEN(sls_ship_dt) != 8

SELECT *
FROM bronze.crm_sales_details
WHERE sls_order_dt > sls_ship_dt

SELECT *
FROM silver.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price OR sls_sales <=0 OR sls_quantity <=0 OR sls_price <=0
OR sls_quantity IS NULL OR sls_sales IS NULL OR sls_price IS NULL

SELECT DISTINCT gen,
	CASE
		WHEN UPPER(TRIM(gen)) IN ('F', 'Female') THEN 'Female'
		WHEN UPPER(TRIM(gen)) IN ('M', 'Male') THEN 'Male'
		ELSE 'unknown'
	END AS gen
FROM bronze.erp_cust_az12

SELECT DISTINCT cntry,
	CASE 
		WHEN TRIM(cntry) = 'DE' THEN 'Germany'
		WHEN TRIM(cntry) IN ('USA', 'US') THEN 'United States'
		WHEN TRIM(cntry) = '' OR TRIM(cntry) IS NULL THEN 'unknown'
		ELSE TRIM(cntry)
	END AS cntry
FROM bronze.erp_loc_a101

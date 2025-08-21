CREATE VIEW gold.dim_customers AS 
SELECT
	ROW_NUMBER() OVER(ORDER BY ci.cst_id) AS customer_pk, 
	ci.cst_id AS customer_id,
	ci.cst_key AS customer_number,
	ci.cst_firstname AS first_name,
	ci.cst_lastname AS last_name,
	CASE
		WHEN ci.cst_gndr != 'unknown' THEN ci.cst_gndr
		ELSE COALESCE(ca.gen, 'unknown')
		END AS gender,
	loc.cntry AS country,
	ci.cst_marital_status AS marital_status,
	ca.bdate AS birth_date,
	ci.cst_create_date AS create_date
FROM silver.crm_cust_info AS ci
LEFT JOIN silver.erp_cust_az12 AS ca
ON ci.cst_key = ca.cid
LEFT JOIN silver.erp_loc_a101 AS loc
ON ci.cst_key = loc.cid
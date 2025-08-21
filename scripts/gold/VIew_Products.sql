-- Filter only current products.
CREATE VIEW gold.dim_products AS
SELECT
	ROW_NUMBER() OVER(ORDER BY pi.prd_start_dt, pi.prd_key) AS product_pk,
	pi.prd_id AS product_id,
	pi.prd_key AS product_number,
	pi.prd_nm AS product_name,
	pi.prd_cost AS product_cost,
	pi.prd_cat_id AS category_id,
	pc.cat AS category,
	pc.subcat AS subcategory,
	pi.prd_line AS product_line,
	pi.prd_start_dt AS start_date,
	pc.maintenance AS maintenance
FROM silver.crm_prd_info AS pi
LEFT JOIN silver.erp_px_cat_g1v2 AS pc
ON pi.prd_cat_id = pc.id
WHERE prd_end_dt IS NULL

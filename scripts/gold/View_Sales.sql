CREATE VIEW gold.fact_sales AS
SELECT
	sls_ord_num AS order_number,
	pr.product_pk,
	cu.customer_pk,
	sls_order_dt AS order_date,
	sls_ship_dt AS shipping_date,
	sls_due_dt As due_date,
	sls_sales AS sales,
	sls_quantity AS quantity,
	sls_price AS price
FROM silver.crm_sales_details AS sd
LEFT JOIN gold.dim_products AS pr
ON sd.sls_prd_key = pr.product_number
LEFT JOIN gold.dim_customers AS cu
ON sls_cust_id = cu.customer_id
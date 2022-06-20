SELECT
customer_id AS id_customer,
date,
SUM(value) AS 'value_customer'
FROM 
	 products_sales
		 JOIN sales ON products_sales.sale_id = sales.id
		 JOIN products ON products.id = products_sales.product_id
GROUP BY customer_id
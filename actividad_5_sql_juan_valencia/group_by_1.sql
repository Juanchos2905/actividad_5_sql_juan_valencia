SELECT
product_id AS id_product,
NAME AS 'product_name',
COUNT(*) AS 'num_sales'
FROM 
	 products_sales
		 JOIN sales ON products_sales.sale_id = sales.id
		 JOIN products ON products.id = products_sales.product_id
GROUP BY product_id
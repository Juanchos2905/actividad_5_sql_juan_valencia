SELECT * 
FROM products
WHERE prices=(
        SELECT MAX(prices) AS 'mayor_valor'
        FROM products)
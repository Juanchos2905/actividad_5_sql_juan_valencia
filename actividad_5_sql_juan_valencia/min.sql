SELECT * 
FROM products
WHERE prices=(
        SELECT MIN(prices) AS 'mayor_valor'
        FROM products)
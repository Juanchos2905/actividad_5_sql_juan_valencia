/*Me genera una tabla con 1 registro, el cual es el ultimo cliente en comprar. 
Implicitamente se está utilizando la función COUNT que nos trae el numero de registros que hay*/
SELECT *
FROM customers
WHERE id=(
	SELECT COUNT(*) AS 'num_customers'
	FROM customers)
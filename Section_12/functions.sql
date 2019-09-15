-- use relationship_db for database
-- use data.sql to enter/populate the database

USE relationship_db;
SELECT * FROM orders WHERE customer_id =
    (
        SELECT id FROM customers
        WHERE last_name='George'
    );
	
SELECT * FROM orders;
-- cross join
SELECT * FROM customers, orders;


-- implicit inner join
SELECT * FROM customers, orders 
WHERE customers.id = orders.customer_id;

-- fancier implicit inner join
SELECT 
    first_name, 
    last_name, 
    SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;

-- left join
SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id; 
	
-- fancier left join
SELECT 
    first_name, 
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

-- Fancier Right Join
SELECT 
    IFNULL(first_name,'MISSING') AS first, 
    IFNULL(last_name,'USER') as last, 
    order_date, 
    amount, 
    SUM(amount)
FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY first_name, last_name;
-- Task 1 
Select c.first_name || '' || c.last_name AS customer_name,
SUM(oi.quantity *oi.unit_price) AS total_spend
FROM customers AS c
JOIN orders as o 
ON o.customer_id = c.id 
JOIN order_items AS oi 
ON oi.order_id = o.id
GROUP BY c.id, customer_name
ORDER BY total_spend DESC
LIMIT 5;

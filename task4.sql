SELECT company_name, ARRAY_AGG(orders.order_id) FROM customers JOIN orders 
ON customers.customer_id = orders.customer_id GROUP BY customers.customer_id ORDER BY company_name ASC;

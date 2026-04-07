-- 1. Total revenue by customer with INNER JOIN
SELECT 
    c.customer_id,
    c.customer_name,
    c.city,
    SUM(s.price * s.quantity) AS total_revenue
FROM sales_data s
INNER JOIN customers c
    ON s.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name, c.city
ORDER BY total_revenue DESC;

-- 2. Revenue by customer segment
SELECT 
    c.segment,
    SUM(s.price * s.quantity) AS segment_revenue
FROM sales_data s
INNER JOIN customers c
    ON s.customer_id = c.customer_id
GROUP BY c.segment
ORDER BY segment_revenue DESC;

-- 3. Top-selling product by total quantity
SELECT 
    product,
    SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY product
ORDER BY total_quantity DESC;

-- 4. Average order value by city
SELECT 
    c.city,
    AVG(s.price * s.quantity) AS avg_order_value
FROM sales_data s
INNER JOIN customers c
    ON s.customer_id = c.customer_id
GROUP BY c.city
ORDER BY avg_order_value DESC;

-- 5. Daily sales with running total
SELECT 
    date,
    SUM(price * quantity) AS daily_sales,
    SUM(SUM(price * quantity)) OVER (ORDER BY date) AS running_total
FROM sales_data
GROUP BY date
ORDER BY date;

-- 6. Customers who spent more than 1000
SELECT 
    c.customer_name,
    SUM(s.price * s.quantity) AS total_spent
FROM sales_data s
INNER JOIN customers c
    ON s.customer_id = c.customer_id
GROUP BY c.customer_name
HAVING SUM(s.price * s.quantity) > 1000
ORDER BY total_spent DESC;
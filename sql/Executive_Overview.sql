-- EXECUTIVE OVERVIEW

-- Total Revenue
SELECT
    ROUND(SUM(price),2) AS total_revenue
FROM order_items;



-- Total Orders
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM orders;



-- Total Customers
SELECT
    COUNT(DISTINCT customer_unique_id) AS total_customers
FROM customers;



-- Average Order Value (AOV)
SELECT
    ROUND(
        SUM(oi.price) /
        COUNT(DISTINCT o.order_id),
    2) AS AOV

FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id;



-- Average Product Price
SELECT
    ROUND(AVG(price),2) AS avg_product_price
FROM order_items;
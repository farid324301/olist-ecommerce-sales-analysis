-- CUSTOMER INSIGHT

-- Revenue by State
SELECT

    c.customer_state,

    ROUND(SUM(oi.price),2) AS total_revenue

FROM customers c

JOIN orders o
ON c.customer_id = o.customer_id

JOIN order_items oi
ON o.order_id = oi.order_id

GROUP BY c.customer_state

ORDER BY total_revenue DESC;



-- Top Cities by Revenue
SELECT

    c.customer_city,
    c.customer_state,

    ROUND(SUM(oi.price),2) AS total_revenue

FROM customers c

JOIN orders o
ON c.customer_id = o.customer_id

JOIN order_items oi
ON o.order_id = oi.order_id

GROUP BY
    c.customer_city,
    c.customer_state

ORDER BY total_revenue DESC

LIMIT 10;



-- Repeat Customers
SELECT

    c.customer_unique_id,

    COUNT(DISTINCT o.order_id) AS total_orders

FROM customers c

JOIN orders o
ON c.customer_id = o.customer_id

GROUP BY c.customer_unique_id

HAVING total_orders > 1

ORDER BY total_orders DESC;



-- Repeat vs One-Time Customers
SELECT

    CASE
        WHEN total_orders > 1
        THEN 'Repeat Customer'

        ELSE 'One-Time Customer'
    END AS customer_type,

    COUNT(*) AS total_customers

FROM
(
    SELECT

        c.customer_unique_id,

        COUNT(DISTINCT o.order_id) AS total_orders

    FROM customers c

    JOIN orders o
    ON c.customer_id = o.customer_id

    GROUP BY c.customer_unique_id

) customer_orders

GROUP BY customer_type;



-- Customer RFM Base Analysis
SELECT

    c.customer_unique_id,

    MAX(o.order_purchase_timestamp) AS last_purchase_date,

    COUNT(DISTINCT o.order_id) AS frequency,

    ROUND(SUM(oi.price),2) AS monetary

FROM customers c

JOIN orders o
ON c.customer_id = o.customer_id

JOIN order_items oi
ON o.order_id = oi.order_id

GROUP BY c.customer_unique_id;
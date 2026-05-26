-- SALES TREND ANALYSIS

-- Revenue by Year
SELECT

    YEAR(o.order_purchase_timestamp) AS order_year,

    ROUND(SUM(oi.price),2) AS total_revenue

FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id

GROUP BY YEAR(o.order_purchase_timestamp)

ORDER BY order_year;



-- Monthly Revenue Trend
SELECT

    DATE_FORMAT(
        o.order_purchase_timestamp,
        '%Y-%m'
    ) AS order_month,

    ROUND(SUM(oi.price),2) AS total_revenue

FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id

GROUP BY order_month

ORDER BY order_month;



-- Monthly Order Trend
SELECT

    DATE_FORMAT(
        order_purchase_timestamp,
        '%Y-%m'
    ) AS order_month,

    COUNT(DISTINCT order_id) AS total_orders

FROM orders

GROUP BY order_month

ORDER BY order_month;



-- Monthly Average Order Value (AOV)
SELECT

    DATE_FORMAT(
        o.order_purchase_timestamp,
        '%Y-%m'
    ) AS order_month,

    ROUND(
        SUM(oi.price) /
        COUNT(DISTINCT o.order_id),
    2) AS AOV

FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id

GROUP BY order_month

ORDER BY order_month;
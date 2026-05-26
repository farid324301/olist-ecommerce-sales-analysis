-- PRODUCT CATEGORY INSIGHT


-- Top Product Categories by Revenue
SELECT

    p.product_category_name,

    ROUND(SUM(oi.price),2) AS total_revenue

FROM order_items oi

JOIN products p
ON oi.product_id = p.product_id

GROUP BY p.product_category_name

ORDER BY total_revenue DESC

LIMIT 10;



-- Top Product Categories by Order Volume
SELECT

    p.product_category_name,

    COUNT(oi.order_id) AS total_orders

FROM order_items oi

JOIN products p
ON oi.product_id = p.product_id

GROUP BY p.product_category_name

ORDER BY total_orders DESC

LIMIT 10;



-- Top Products by Revenue
SELECT

    oi.product_id,

    ROUND(SUM(oi.price),2) AS total_revenue

FROM order_items oi

GROUP BY oi.product_id

ORDER BY total_revenue DESC

LIMIT 10;



-- Product Category Revenue Contribution
SELECT

    p.product_category_name,

    ROUND(SUM(oi.price),2) AS total_revenue,

    ROUND(
        SUM(oi.price) * 100 /
        (
            SELECT SUM(price)
            FROM order_items
        ),
    2) AS revenue_percentage

FROM order_items oi

JOIN products p
ON oi.product_id = p.product_id

GROUP BY p.product_category_name

ORDER BY total_revenue DESC;
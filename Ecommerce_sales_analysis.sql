use ecommerce_sales;

-- Total revenue
select 
sum(amount) as total_revenue
from order_details;

-- Monthly Revenue
SELECT 
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM orders o
JOIN order_details d
ON o.order_id = d.order_id
GROUP BY MONTH(order_date)
ORDER BY month;

-- Category-wise revenue
SELECT 
    category,
    SUM(amount) AS category_revenue
FROM order_details
GROUP BY category;

-- State-wise sales performance
SELECT 
    state,
    SUM(amount) AS state_revenue
FROM orders o
JOIN order_details d
ON o.order_id = d.order_id
GROUP BY state
ORDER BY state_revenue DESC;

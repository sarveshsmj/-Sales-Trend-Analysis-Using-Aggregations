SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    demo.online_sales
WHERE 
    EXTRACT(YEAR FROM order_date) = 2023
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY 
    year ASC, month ASC;

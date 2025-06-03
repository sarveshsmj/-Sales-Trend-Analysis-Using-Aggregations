SELECT 
	EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) as total_rev,
    count(distinct order_id) as volume
FROM 
	demo.online_sales
GROUP BY
	EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date);
    

    
-- What are the names of the top 5 customers by total sales amount in the year 2023?
SELECT c.name AS customer_name, SUM(s.total_sales) AS sum_total_sales
FROM transformed_sales_data s
JOIN raw_customer_data c ON s.customer_id = c.id
WHERE s.order_year = 2023
GROUP BY c.name
ORDER BY sum_total_sales DESC
LIMIT 5;
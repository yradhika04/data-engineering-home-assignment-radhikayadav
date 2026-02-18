-- Which customer had the highest order volume in the month of October 2023?
SELECT customer_id, COUNT(order_id) AS order_volume
FROM transformed_sales_data
WHERE order_year = 2023 AND order_month = 10
GROUP BY customer_id
ORDER BY order_volume DESC
LIMIT 1;
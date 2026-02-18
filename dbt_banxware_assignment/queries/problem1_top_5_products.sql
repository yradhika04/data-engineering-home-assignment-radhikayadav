-- What are the top 5 products by total sales amount in the year 2023?
SELECT product_id, SUM(total_sales) AS sum_total_sales
FROM transformed_sales_data -- Snowflake table: db.schema.transformed_sales_data (home_assignment.product_data.transformed_sales_data)
WHERE order_year = 2023
GROUP BY product_id
ORDER BY sum_total_sales DESC
LIMIT 5;
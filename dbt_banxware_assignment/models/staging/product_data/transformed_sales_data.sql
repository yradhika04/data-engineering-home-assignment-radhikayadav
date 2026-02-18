{{ config(materialized='table') }}

WITH sales_source_data AS (
    SELECT order_id,
           TO_DATE(order_date, 'MM/DD/YYYY') AS order_date,
           EXTRACT(YEAR FROM TO_DATE(order_date, 'MM/DD/YYYY') ) AS order_year,
           EXTRACT(MONTH FROM TO_DATE(order_date, 'MM/DD/YYYY') ) AS order_month,
           EXTRACT(DAY FROM TO_DATE(order_date, 'MM/DD/YYYY') ) AS order_day,
           customer_id,
           product_id,
           product_name,
           quantity,
           price,
           quantity*price AS total_sales,
           order_status,
    FROM {{ source('product_data', 'raw_sales_data') }}
)
SELECT *
FROM sales_source_data
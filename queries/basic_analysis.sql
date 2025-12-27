-- Basic SQL Analysis on Sales Data

-- View all records
SELECT *
FROM sales_data;

-- Count total number of records
SELECT COUNT(*) AS total_records
FROM sales_data;

-- View distinct product categories
SELECT DISTINCT category
FROM sales_data;

-- Total sales value
SELECT SUM(sales) AS total_sales
FROM sales_data;

-- Top 10 orders by sales value
SELECT *
FROM sales_data
ORDER BY sales DESC
LIMIT 10;

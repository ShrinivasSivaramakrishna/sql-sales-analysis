-- Intermediate SQL Analysis on Sales Data

-- Total sales by category
SELECT 
    Category,
    SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Category
ORDER BY total_sales DESC;

-- Total sales by region
SELECT 
    Region,
    SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Region
ORDER BY total_sales DESC;

-- Top 10 customers by sales
SELECT 
    Customer_Name,
    SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Customer_Name
ORDER BY total_sales DESC
LIMIT 10;

-- Sales by sub-category
SELECT 
    Sub_Category,
    SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Sub_Category
ORDER BY total_sales DESC;

-- Number of orders by segment
SELECT 
    Segment,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM sales_data
GROUP BY Segment;

CREATE DATABASE sales_analysis;
USE sales_analysis;
SELECT * FROM online_sales LIMIT 10;
SELECT YEAR(order_date) AS Year,MONTH(order_date) AS Month,SUM(amount) AS Total_Revenue FROM online_sales GROUP BY YEAR(order_date),MONTH(order_date) ORDER BY Year,Month;
SELECT YEAR(order_date) AS Year,MONTH(order_date) AS MONTH,COUNT(DISTINCT order_id) AS Order_Volume FROM online_sales GROUP BY YEAR(order_date),MONTH(order_date) ORDER BY Year,Month;
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Total_Revenue,
    COUNT(DISTINCT order_id) AS Order_Volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;
SELECT
    MONTH(order_date) AS Month,
    SUM(amount) AS Revenue
FROM online_sales
WHERE YEAR(order_date) = 2023
GROUP BY MONTH(order_date)
ORDER BY Month;
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Revenue DESC
LIMIT 6;
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Revenue DESC
LIMIT 1;
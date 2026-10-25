CREATE DATABASE retail_sales_analytics;
USE retail_sales_analytics;

# Q1. How is the business performing overall?
SELECT
    ROUND(SUM(Sales), 2) AS total_revenue,
    ROUND(SUM(Profit), 2) AS total_profit,
    COUNT(DISTINCT Order_ID) AS total_orders,
    SUM(Quantity) AS units_sold,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM superstore;

# Q2. Which product categories generate the most revenue and profit?
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM superstore
GROUP BY Category
ORDER BY revenue DESC;

# Which regions perform best and worst?
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM superstore
GROUP BY Region
ORDER BY profit DESC;

# Q4. Which months generate the highest sales?
SELECT
    `Order_Year-Month` AS Order_year_month,
    ROUND(SUM(Sales), 2) AS monthly_revenue,
    ROUND(SUM(Profit), 2) AS monthly_profit
FROM superstore
GROUP BY `Order_Year-Month`
ORDER BY monthly_revenue DESC
LIMIT 10;

# Q5. Which products generate losses despite making sales?
SELECT
    Product_Name,
    Category,
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM superstore
GROUP BY Product_Name, Category, `Sub-Category`
HAVING SUM(Profit) < 0
ORDER BY profit ASC
LIMIT 10;

# Q6. Are discounts affecting profitability?
SELECT
    CASE
        WHEN Discount = 0 THEN 'No Discount'
        WHEN Discount <= 0.20 THEN 'Low Discount'
        WHEN Discount <= 0.40 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS discount_group,
    COUNT(*) AS order_lines,
    ROUND(AVG(Sales), 2) AS avg_sales_per_line,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Profit), 2) AS avg_profit_per_line
FROM superstore
GROUP BY discount_group
ORDER BY AVG(Discount);

# Q7. Which customer segments generate the most profit?
SELECT
    Segment,
    COUNT(DISTINCT Order_ID) AS total_orders,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM superstore
GROUP BY Segment
ORDER BY profit DESC;

# Q8. Which shipping mode has the highest average delivery time?
SELECT
    Ship_Mode,
    COUNT(*) AS order_lines,
    ROUND(AVG(Shipping_Days), 2) AS avg_shipping_days,
    ROUND(AVG(Sales), 2) AS avg_sales_per_line
FROM superstore
GROUP BY Ship_Mode
ORDER BY avg_shipping_days ASC;

# Q9. Which states generate the most revenue, and which are least profitable?
SELECT
    State,
    ROUND(SUM(Sales), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM superstore
GROUP BY State
ORDER BY revenue DESC
LIMIT 10;

# Q10. Are sales growing or declining year over year?
SELECT
    Order_Year,
    ROUND(SUM(Sales), 2) AS annual_revenue,
    ROUND(SUM(Profit), 2) AS annual_profit,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM superstore
GROUP BY Order_Year
ORDER BY Order_Year;
-- 1. View First 5 Records
SELECT *
FROM Orders
FETCH FIRST 5 ROWS ONLY;

-- 2. Total Sales
SELECT
ROUND(SUM(Sales),2) AS TotalSales
FROM Orders;

-- 3. Total Profit
SELECT
ROUND(SUM(Profit),2) AS TotalProfit
FROM Orders;

-- 4. Total Orders
SELECT
COUNT(*) AS TotalOrders
FROM Orders;

-- 5. Sales by Category
SELECT
Category,
ROUND(SUM(Sales),2) AS Sales
FROM Orders
GROUP BY Category
ORDER BY Sales DESC;

-- 6. Profit by Region
SELECT
Region,
ROUND(SUM(Profit),2) AS Profit
FROM Orders
GROUP BY Region
ORDER BY Profit DESC;

-- 7. Top 10 Customers
SELECT
CustomerName,
ROUND(SUM(Sales),2) AS Revenue
FROM Orders
GROUP BY CustomerName
ORDER BY Revenue DESC
FETCH FIRST 10 ROWS ONLY;

-- 8. Top 10 Products
SELECT
ProductName,
ROUND(SUM(Sales),2) AS Sales
FROM Orders
GROUP BY ProductName
ORDER BY Sales DESC
FETCH FIRST 10 ROWS ONLY;

-- 9. Orders with Negative Profit
SELECT *
FROM Orders
WHERE Profit < 0;

-- 10. Products Selling Above Average
SELECT
ProductName,
Sales
FROM Orders
WHERE Sales >
(
SELECT AVG(Sales)
FROM Orders
);

-- 11. Average Discount by Category
SELECT
Category,
ROUND(AVG(Discount),2) AS AvgDiscount
FROM Orders
GROUP BY Category;

-- 12. Most Profitable States
SELECT
State,
ROUND(SUM(Profit),2) AS Profit
FROM Orders
GROUP BY State
ORDER BY Profit DESC
FETCH FIRST 10 ROWS ONLY;

-- 13. Highest Sales Cities
SELECT
City,
ROUND(SUM(Sales),2) AS Sales
FROM Orders
GROUP BY City
ORDER BY Sales DESC
FETCH FIRST 10 ROWS ONLY;
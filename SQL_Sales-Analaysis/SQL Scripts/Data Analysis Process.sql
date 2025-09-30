-- ======================
-- Data Analysis Process  
-- ======================

-- =========================
-- 1. To find top 5 spenders
-- =========================
USE SalesDB;

SELECT 
    c.Name AS CustomerName,
    SUM(o.Quantity * o.Price) AS TotalSpent
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Name
ORDER BY TotalSpent DESC
LIMIT 5;

-- =============================
-- 2. To find Revenue by Product 
-- =============================
USE SalesDB;

SELECT 
    p.Name AS ProductName,
    SUM(o.Quantity * o.Price) AS TotalRevenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalRevenue DESC;

-- =============================
-- 3. To find Orders by Country
-- =============================

USE SalesDB;

SELECT 
    c.Country,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.Quantity * o.Price) AS TotalRevenue
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Country
ORDER BY TotalRevenue DESC;

-- ===============================
-- 4. To find Monthly Sales Trend
-- ===============================
USE SalesDB;

SELECT 
    YEAR(o.OrderDate) AS SalesYear,
    MONTH(o.OrderDate) AS SalesMonth,
    SUM(o.Quantity * o.Price) AS TotalRevenue,
    COUNT(o.OrderID) AS TotalOrders
FROM Orders o
GROUP BY YEAR(o.OrderDate), MONTH(o.OrderDate)
ORDER BY SalesYear, SalesMonth;

-- ===============================
-- 5. To find Top-Selling Products
-- ===============================
USE SalesDB;

SELECT 
    p.Name AS ProductName,
    SUM(o.Quantity) AS TotalUnitsSold,
    SUM(o.Quantity * o.Price) AS TotalRevenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalRevenue DESC
LIMIT 5;

-- =====================================
-- 6. To find Bottom Products by Revenue
-- =====================================
USE SalesDB;

SELECT 
    p.Name AS ProductName,
    SUM(o.Quantity) AS TotalUnitsSold,
    SUM(o.Quantity * o.Price) AS TotalRevenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalRevenue ASC
LIMIT 5;

-- ==============================
-- 7. To find Monthly Sales Trend
-- ==============================
SELECT 
    DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    SUM(Quantity * Price) AS TotalRevenue
FROM Orders
GROUP BY Month
ORDER BY Month;

-- =======================================
-- 8. To find Category-wise Sales Analysis
-- =======================================
SELECT 
    p.Category,
    SUM(o.Quantity * o.Price) AS TotalRevenue,
    SUM(o.Quantity) AS TotalUnits
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalRevenue DESC;

-- ========================================
-- 9. To find Customer Lifetime Value (CLV)
-- ========================================
SELECT 
    c.Name AS CustomerName,
    SUM(o.Quantity * o.Price) AS LifetimeValue,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name
ORDER BY LifetimeValue DESC;



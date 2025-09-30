-- =====================
-- Data Checkup process 
-- =====================

USE SalesDB;

SHOW TABLES;

SELECT * FROM Customers LIMIT 5;

SELECT * FROM Products;

SELECT * FROM Orders LIMIT 5;

SELECT COUNT(*) FROM Customers;  -- this should be 20
SELECT COUNT(*) FROM Products;   -- this should be 3
SELECT COUNT(*) FROM Orders;     -- this should be 40



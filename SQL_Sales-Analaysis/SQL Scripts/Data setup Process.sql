-- Delete old database if exists (start clean)
DROP DATABASE IF EXISTS SalesDB;

-- ===================
-- Data setup Process 
-- ===================

-- Create new database
CREATE DATABASE SalesDB;

-- Select the database to use
USE SalesDB;

-- Customers Table
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Country VARCHAR(50),
    SignUpDate DATE
);

-- Products Table
DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Orders Table
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers VALUES
(1,'Alice','USA','2025-01-10'),
(2,'Bob','Canada','2025-01-15'),
(3,'Charlie','India','2025-02-01'),
(4,'David','UK','2025-02-10'),
(5,'Eva','Germany','2025-03-05'),
(6,'Frank','USA','2025-03-20'),
(7,'Grace','India','2025-04-11'),
(8,'Hannah','Canada','2025-04-25'),
(9,'Ivy','UK','2025-05-02'),
(10,'Jack','Germany','2025-05-18'),
(11,'Kevin','USA','2025-06-01'),
(12,'Liam','Canada','2025-06-15'),
(13,'Mona','India','2025-07-04'),
(14,'Nina','UK','2025-07-18'),
(15,'Oscar','Germany','2025-08-09'),
(16,'Paul','USA','2025-08-20'),
(17,'Quinn','India','2025-09-03'),
(18,'Rita','Canada','2025-09-12'),
(19,'Steve','UK','2025-09-20'),
(20,'Tina','Germany','2025-09-28');

INSERT INTO Products VALUES
(1,'Laptop','Electronics',50000),
(2,'Phone','Electronics',30000),
(3,'Headphones','Accessories',2000);

INSERT INTO Orders VALUES
(1,1,1,1,50000,'2025-06-01'),
(2,2,2,2,60000,'2025-06-05'),
(3,3,3,3,6000,'2025-06-10'),
(4,4,1,1,50000,'2025-06-15'),
(5,5,2,1,30000,'2025-06-20'),
(6,6,3,2,4000,'2025-06-22'),
(7,7,1,1,50000,'2025-07-01'),
(8,8,2,1,30000,'2025-07-03'),
(9,9,3,4,8000,'2025-07-07'),
(10,10,1,1,50000,'2025-07-12'),
(11,11,2,1,30000,'2025-07-20'),
(12,12,3,3,6000,'2025-07-25'),
(13,13,1,1,50000,'2025-08-02'),
(14,14,2,2,60000,'2025-08-05'),
(15,15,3,5,10000,'2025-08-10'),
(16,16,1,1,50000,'2025-08-15'),
(17,17,2,1,30000,'2025-08-18'),
(18,18,3,2,4000,'2025-08-22'),
(19,19,1,1,50000,'2025-09-01'),
(20,20,2,1,30000,'2025-09-05'),
(21,1,3,3,6000,'2025-09-07'),
(22,2,1,1,50000,'2025-09-10'),
(23,3,2,1,30000,'2025-09-12'),
(24,4,3,2,4000,'2025-09-15'),
(25,5,1,1,50000,'2025-09-18'),
(26,6,2,2,60000,'2025-09-20'),
(27,7,3,4,8000,'2025-09-22'),
(28,8,1,1,50000,'2025-09-24'),
(29,9,2,1,30000,'2025-09-26'),
(30,10,3,2,4000,'2025-09-28'),
(31,11,1,1,50000,'2025-09-29'),
(32,12,2,2,60000,'2025-09-30'),
(33,13,3,1,2000,'2025-10-01'),
(34,14,1,1,50000,'2025-10-02'),
(35,15,2,1,30000,'2025-10-03'),
(36,16,3,2,4000,'2025-10-04'),
(37,17,1,1,50000,'2025-10-05'),
(38,18,2,1,30000,'2025-10-06'),
(39,19,3,2,4000,'2025-10-07'),
(40,20,1,1,50000,'2025-10-08');

SELECT DATABASE();

SHOW TABLES;

SELECT * FROM Customers;
SELECT * FROM Products;




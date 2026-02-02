CREATE DATABASE Customers;
USE Customers;
CREATE TABLE Customers (
Customer_ID INT PRIMARY KEY,
Customer_Name varchar(50),
City varchar(50));
DROP DATABASE Customers;
INSERT INTO customers
(Customer_ID,Customer_Name,City)
value
(1,'John Smith','New York'),
(2,'Marry Johnson','Chicago'),
(3,'Peter Adams','Los Angles'),
(4,'Nancy Miller','Houston'),
(5,'Robert White','Miami');


CREATE TABLE Orders (
Order_ID INT PRIMARY KEY ,
Customer_ID Varchar(50),
Order_Date date,
Amount Decimal(20,5));

INSERT INTO Orders
(Order_ID,Customer_ID,Order_date,Amount)
Values
( 101,1,'2024-10-01',250),
(102,2,'2024-10-05',300),
(103,1,'2024-10-07', 150),
(104,3,'2024-10-10', 450),
(105,6,'2024-10-12',400);

CREATE TABLE Payments (
Payment_ID Varchar(10) PRIMARY KEY,
Customer_ID Varchar(50),
Payment_date Date,
Amount Decimal (20,4));

DROP TABLE Payments;
INSERT INTO Payments 
( Payment_ID,Customer_ID,Payment_date,Amount)
Values
('P001', 1, '2024-10-02', 250),
('P002', 2, '2024-10-06', 300),
('P003', 3, '2024-10-11', 450),
('P004', 4, '2024-10-15', 200);

CREATE TABLE Employees (
Employee_ID INT PRIMARY KEY,
Employee_Name Varchar(50),
Manager_ID INT));

INSERT INTO Employees
(Employee_ID, Employee_Name,Manager_ID)
 VALUES
(1, 'Alex Green', NULL),
(2, 'Brian Lee', 1),
(3, 'Carol Ray', 1),
(4, 'Eva Smith', 2),
(5, 'David Kim', 2);

--- Q1 : Retreive all customers who have placed at least one order.---

SELECT Distinct Customers.Customer_Name,Customers.Customer_ID,Orders.Order_ID
FROM customers
INNER JOIN
Orders
ON Customers.Customer_ID = Orders.Customer_ID;

-- Q2 -- 
--- Retriev all customers and their orders including customers who have not placed any orders-- 

SELECT Customers.Customer_Name,Customers.Customer_ID,Orders.Order_ID
FROM customers
LEFT JOIN 
Orders
ON Customers.Customer_ID = Orders.Customer_ID
WHERE Orders.Customer_ID IS NULL; 

-- 		Q3 :
-- Retreive all orders and their customers , including orders placed by unknown --

SELECT Customers.Customer_Name,Customers.Customer_ID,Orders.Order_ID
FROM customers
LEFT JOIN
Orders
ON Customers.Customer_ID = Orders.Order_ID
WHERE Customers.Customer_ID IS NULL; 

-- Q4 :
-- Display all customers and orders whether matched or not :

SELECT Customers.Customer_Name,Customers.Customer_ID,Orders.Order_ID
FROM customers
CROSS JOIN
Orders
ON Customers.Customer_ID = Orders.Order_ID;

-- Q5 :
-- Find the customers who have not placed any orders:
SELECT Customers.Customer_ID,Customers.Customer_Name,Orders.Order_ID
FROM customers
LEFT JOIN 
Orders
ON Customers.Customer_ID = Orders.Customer_ID
WHERE Orders.Order_ID IS NULL;

-- Q6 :
-- Retrieve customers who made payments but did not place any orders :

SELECT Customers.Customer_Name,Customers.Customer_ID,Orders.Order_ID,Orders.Payment
FROM customers
LEFT JOIN
Orders
ON Customers.Customer_ID = Orders.Customer_ID
WHERE Orders.Order_ID IS NULL
AND Orders.Payment IS NOT NULL;

-- Q7 :
-- Generate a list of all possible combination betwwen customers and orders:
SELECT Customers.Customer_ID,Customers.Customer_Name,Orders.Order_ID
FROM customers
CROSS JOIN
Orders;

-- Q8 : Show all customers along with orders and payments amounts in one table :

SELECT Customers.Customer_ID,Customers.Customer_Name,Orders.Order_ID,Orders.Payment
FROM customers
LEFT JOIN
Orders
ON Customers.Customer_ID = Orders.Customer_ID;

-- Q9 : Retrieve all the customers who have both placed order and made payments:

SELECT Customers.Customer_ID,Customers.Customer_Name,Orders.Order_ID,Orders.Payment
FROM Customers
LEFT JOIN
Orders
ON Customers.Customer_ID = Orders.Customer_ID
WHERE Orders.Order_ID IS NOT NULL
AND Orders.Payment IS NOT NULL;
DESCRIBE Orders;




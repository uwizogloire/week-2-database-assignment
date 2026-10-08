-- Week 2 Assignment: Introduction to SQL
-- Database: sales (classicmodels sample)
-- Use the sales database
USE sales;

-- =========================================================
-- Question 1: Retrieve Payment Information
-- Retrieve checkNumber, paymentDate, amount from payments table
-- =========================================================
SELECT 
    checkNumber,
    paymentDate,
    amount
FROM payments;

-- =========================================================
-- Question 2: Find Orders in Process
-- Retrieve orderDate, requiredDate, status from orders
-- Where status is 'In Process', sorted by orderDate DESC
-- =========================================================
SELECT 
    orderDate,
    requiredDate,
    status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- =========================================================
-- Question 3: Find Sales Representatives
-- Retrieve firstName, lastName, email from employees
-- Where jobTitle is 'Sales Rep', sorted by employeeNumber DESC
-- =========================================================
SELECT 
    firstName,
    lastName,
    email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- =========================================================
-- Question 4: Retrieve Office Information
-- Retrieve all columns and all records from offices table
-- =========================================================
SELECT * FROM offices;

-- =========================================================
-- Question 5: Retrieve the Five Cheapest Products
-- Retrieve productName, quantityInStock from products
-- Sorted by buyPrice ASC, limited to 5 records
-- =========================================================
SELECT 
    productName,
    quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;

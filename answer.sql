
-- ==========================================
-- WEEK 6 ASSIGNMENT
-- SQL JOINS AND RELATIONSHIPS
-- Database: Classic Models
-- ==========================================

USE classicmodels;


-- QUESTION 1: INNER JOIN
-- Employees and Offices
-- Retrieve employee details and office code

SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;


-- QUESTION 2: LEFT JOIN
-- Products and Product Lines
-- Retrieve product name, vendor, and product line

SELECT
    p.productName,
    p.productVendor,
    pl.productLine
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;


-- QUESTION 3: RIGHT JOIN
-- Customers and Orders
-- Retrieve the first 10 orders

SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
ORDER BY o.orderNumber ASC
LIMIT 10;


-- END OF WEEK 6 ASSIGNMENT

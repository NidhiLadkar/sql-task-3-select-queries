USE ecommerce_db;
-- View all customers
SELECT * FROM customers;

-- View only names and emails of customers
SELECT Name, Email FROM customers;

-- Find products with price greater than 500
SELECT * FROM products WHERE Price > 500;

-- Find products that are in stock
SELECT * FROM products WHERE Stock > 0;

-- Find customers with email containing 'gmail'
SELECT * FROM customers WHERE Email LIKE '%gmail%';

-- View orders placed in 2024
SELECT * FROM orders WHERE OrderDate BETWEEN '2024-01-01' AND '2024-12-31';

-- View all orders sorted by TotalAmount descending
SELECT * FROM orders ORDER BY TotalAmount DESC;

-- Limit result: Top 3 most expensive products
SELECT * FROM products ORDER BY Price DESC LIMIT 3;

-- Find payments made by UPI
SELECT * FROM payments WHERE PaymentMethod = 'UPI';

-- Get orders with amount > 1000 and payment method is NOT 'Cash'
SELECT o.OrderID, o.TotalAmount, p.PaymentMethod
FROM orders o
JOIN payments p ON o.OrderID = p.OrderID
WHERE o.TotalAmount > 1000 AND p.PaymentMethod <> 'Cash';

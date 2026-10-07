-- Basic SQL queries for QA practice
-- Tables used: users, orders

-- Get all users
SELECT *
FROM users;

-- Find users from Moscow
SELECT *
FROM users
WHERE city = 'Москва';

-- Find expensive orders
SELECT *
FROM orders
WHERE price >= 50000;

-- Multiple conditions
SELECT *
FROM orders
WHERE price >= 5000
  AND price <= 50000;

-- IN
SELECT *
FROM users
WHERE city IN ('Москва', 'Казань');

-- BETWEEN
SELECT *
FROM orders
WHERE price BETWEEN 5000 AND 50000;

-- LIKE
SELECT *
FROM users
WHERE name LIKE 'А%';

-- Check NULL values
SELECT *
FROM users
WHERE city IS NULL;

-- Sort orders from highest to lowest price
SELECT *
FROM orders
ORDER BY price DESC;

-- Return first 5 rows
SELECT *
FROM orders
ORDER BY price DESC
LIMIT 5;

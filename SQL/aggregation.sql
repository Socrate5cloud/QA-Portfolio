-- Aggregation examples for QA practice
-- Table used: orders


-- Count all orders
SELECT COUNT(*) AS total_orders
FROM orders;


-- Calculate total order amount
SELECT SUM(price) AS total_amount
FROM orders;


-- Calculate average order price
SELECT AVG(price) AS average_price
FROM orders;


-- Minimum and maximum order price
SELECT
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM orders;


-- Count orders for each user
SELECT
    user_id,
    COUNT(*) AS orders_count
FROM orders
GROUP BY user_id;


-- Calculate total amount for each user
SELECT
    user_id,
    SUM(price) AS total_amount
FROM orders
GROUP BY user_id;


-- Show users whose total order amount is greater than 50000
SELECT
    user_id,
    SUM(price) AS total_amount
FROM orders
GROUP BY user_id
HAVING SUM(price) > 50000;


-- Show users with more than one order
SELECT
    user_id,
    COUNT(*) AS orders_count
FROM orders
GROUP BY user_id
HAVING COUNT(*) > 1;

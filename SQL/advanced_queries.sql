-- Advanced SQL examples for QA practice
-- Tables used: users, orders


-- CASE WHEN
SELECT
    product,
    price,
    CASE
        WHEN price >= 50000 THEN 'Expensive'
        WHEN price >= 10000 THEN 'Medium'
        ELSE 'Cheap'
    END AS price_category
FROM orders;


-- Subquery: users who have orders
SELECT *
FROM users
WHERE id IN (
    SELECT user_id
    FROM orders
);


-- Subquery: users without orders
SELECT *
FROM users
WHERE id NOT IN (
    SELECT user_id
    FROM orders
);


-- Find orders with price above average
SELECT *
FROM orders
WHERE price > (
    SELECT AVG(price)
    FROM orders
);


-- Total amount per user using a derived table
SELECT
    user_id,
    total_amount
FROM (
    SELECT
        user_id,
        SUM(price) AS total_amount
    FROM orders
    GROUP BY user_id
) AS user_totals
WHERE total_amount > 50000;


-- CASE with aggregation
SELECT
    user_id,
    SUM(price) AS total_amount,
    CASE
        WHEN SUM(price) >= 100000 THEN 'High value'
        WHEN SUM(price) >= 50000 THEN 'Medium value'
        ELSE 'Low value'
    END AS customer_category
FROM orders
GROUP BY user_id;

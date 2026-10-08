-- JOIN examples for QA practice
-- Tables used: users, orders

-- INNER JOIN
-- Show only users who have orders
SELECT
    users.name,
    orders.product,
    orders.price
FROM users
INNER JOIN orders
    ON users.id = orders.user_id;


-- LEFT JOIN
-- Show all users, including users without orders
SELECT
    users.name,
    orders.product,
    orders.price
FROM users
LEFT JOIN orders
    ON users.id = orders.user_id;


-- Orders with user information
SELECT
    orders.id,
    users.name,
    users.city,
    orders.product,
    orders.price
FROM orders
INNER JOIN users
    ON orders.user_id = users.id;


-- Find users without orders
SELECT
    users.id,
    users.name
FROM users
LEFT JOIN orders
    ON users.id = orders.user_id
WHERE orders.id IS NULL;

-- Task 4 — Aggregate Functions & Grouping Queries

-- 1. Total amount of all orders
SELECT SUM(total_amount) AS total_sales
FROM Orders;

-- 2. Average price of all products
SELECT AVG(price) AS average_product_price
FROM Products;

-- 3. Number of orders placed by each user
SELECT user_id, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY user_id;

-- 4. Total revenue per product (based on Order_Items)
SELECT product_id, SUM(quantity * price_at_time) AS revenue
FROM Order_Items
GROUP BY product_id;

-- 5. Customers who have spent more than 10,000
SELECT user_id, SUM(total_amount) AS total_spent
FROM Orders
GROUP BY user_id
HAVING total_spent > 10000;


-- 1. Total Sales Amount (SUM)
SELECT SUM(total_amount) AS total_sales
FROM Orders;

-- 2. Average Product Price (AVG)
SELECT AVG(price) AS average_product_price
FROM Products;

-- 3. Number of Orders per User (COUNT + GROUP BY)
SELECT user_id, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY user_id;

-- 4. Revenue per Product (SUM + GROUP BY)
SELECT product_id, SUM(quantity * price_at_time) AS total_revenue
FROM Order_Items
GROUP BY product_id;

-- 5. Customers Who Spent More Than 10,000 (SUM + GROUP BY + HAVING)
SELECT user_id, SUM(total_amount) AS total_spent
FROM Orders
GROUP BY user_id
HAVING total_spent > 10000;




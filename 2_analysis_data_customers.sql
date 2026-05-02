-- 1. Business Question: Which country has the most customers?
SELECT Country, COUNT(*) AS total_customer
FROM customers
GROUP BY Country
ORDER BY total_customer DESC;

-- 2. Business Question: Which city has the highest number of customers?
SELECT City, COUNT(*) AS total_customer
FROM customers
GROUP BY City
ORDER BY total_customer DESC;

-- 3. Business Question: Which customers place the most orders?
SELECT c.CustomerName, COUNT(o.OrderID) AS total_orders
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
ORDER BY total_orders DESC;

-- 4. Business Question: Who is the most active customer?
SELECT c.CustomerName, COUNT(o.OrderID) AS total_orders
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
ORDER BY total_orders DESC
LIMIT 1;

-- 5. Business Question: Which country generates the highest number of orders?
SELECT c.Country, COUNT(o.OrderID) AS total_orders
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Country
ORDER BY total_orders DESC;
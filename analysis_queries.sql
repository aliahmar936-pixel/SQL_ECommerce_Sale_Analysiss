/*==============================================================
              E-COMMERCE SALES ANALYSIS USING SQL
==============================================================*/

/*==============================================================
SECTION 1: DATABASE SELECTION
==============================================================*/

USE ecommerce_sales;

/*==============================================================
SECTION 2: CUSTOMER ANALYSIS
==============================================================*/

-- Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customers;

-- Average Customer Age
SELECT AVG(age) AS Average_Age
FROM customers;

-- Oldest Customer
SELECT MAX(age) AS Oldest_Customer
FROM customers;

-- Youngest Customer
SELECT MIN(age) AS Youngest_Customer
FROM customers;

-- Customers Older Than 25
SELECT *
FROM customers
WHERE age > 25;

-- Female Customers
SELECT *
FROM customers
WHERE gender='Female';

-- Unique Cities
SELECT DISTINCT city
FROM customers;

/*==============================================================
SECTION 3: PRODUCT ANALYSIS
==============================================================*/

-- Most Expensive Product
SELECT *
FROM products
ORDER BY price DESC
LIMIT 1;

-- Cheapest Product
SELECT *
FROM products
ORDER BY price ASC
LIMIT 1;

-- Electronics Products
SELECT *
FROM products
WHERE category='Electronics';

/*==============================================================
SECTION 4: ORDER ANALYSIS
==============================================================*/

-- Total Orders
SELECT COUNT(*) AS Total_Orders
FROM orders;

-- Latest Order
SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 1;

/*==============================================================
SECTION 5: SALES ANALYSIS USING JOINS
==============================================================*/

-- Customer Purchases
SELECT
c.customer_name,
p.product_name,
o.quantity,
o.order_date
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
JOIN products p
ON o.product_id=p.product_id;

-- Total Revenue
SELECT
SUM(p.price*o.quantity) AS Total_Revenue
FROM orders o
JOIN products p
ON o.product_id=p.product_id;

-- Revenue by Category
SELECT
p.category,
SUM(p.price*o.quantity) AS Revenue
FROM orders o
JOIN products p
ON o.product_id=p.product_id
GROUP BY p.category;

-- Orders Per Customer
SELECT
c.customer_name,
COUNT(o.order_id) AS Total_Orders
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY c.customer_name
ORDER BY Total_Orders DESC;

/*==============================================================
SECTION 6: ADVANCED BUSINESS ANALYSIS
==============================================================*/

-- Customer Spending
SELECT
c.customer_name,
SUM(p.price*o.quantity) AS Total_Spent
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
JOIN products p
ON o.product_id=p.product_id
GROUP BY c.customer_name
ORDER BY Total_Spent DESC;

-- Revenue by Product
SELECT
p.product_name,
SUM(o.quantity*p.price) AS Revenue
FROM products p
JOIN orders o
ON p.product_id=o.product_id
GROUP BY p.product_name
ORDER BY Revenue DESC;

-- Best Selling Product
SELECT
p.product_name,
SUM(o.quantity) AS Units_Sold
FROM products p
JOIN orders o
ON p.product_id=o.product_id
GROUP BY p.product_name
ORDER BY Units_Sold DESC
LIMIT 1;

-- Customers by City
SELECT
city,
COUNT(*) AS Total_Customers
FROM customers
GROUP BY city
ORDER BY Total_Customers DESC;

-- Monthly Revenue
SELECT
MONTH(order_date) AS Month,
SUM(p.price*o.quantity) AS Revenue
FROM orders o
JOIN products p
ON o.product_id=p.product_id
GROUP BY MONTH(order_date)
ORDER BY Month;
/*==============================================================
        E-COMMERCE SALES ANALYSIS USING SQL
==============================================================*/



/*==============================================================
SECTION 1: DATABASE INITIALIZATION
==============================================================*/

CREATE DATABASE ecommerce_sales;

USE ecommerce_sales;

/*==============================================================
SECTION 2: DATABASE DESIGN
==============================================================*/

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    city VARCHAR(50),
    age INT
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
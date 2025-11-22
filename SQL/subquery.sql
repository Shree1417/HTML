
CREATE DATABASE company;
USE company;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2)
);

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150)
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO employees (id, name, salary) VALUES
(1, 'Shree', 35000.00),
(2, 'kashni', 42000.00),
(3, 'Rahul', 28000.00),
(4, 'Banu', 50000.00),
(5, 'Arshu', 30000.00);

INSERT INTO products (id, name, price) VALUES
(1, 'Laptop', 60000.00),
(2, 'Mouse', 500.00),
(3, 'Keyboard', 1500.00),
(4, 'Monitor', 8000.00),
(5, 'USB', 300.00),
(6, 'Sticker', 150.00);

INSERT INTO customers (id, name, email) VALUES
(1, 'Shree', 'Shree@example.com'),
(2, 'Kahni', 'kashni@example.com'),
(3, 'Rahul', 'rahul@example.com');

INSERT INTO orders (id, customer_id, product_id, quantity, price) VALUES
(1, 1, 1, 1, 58000.00), 
(2, 2, 3, 1, 1200.00),  
(3, 3, 2, 2, 400.00),   
(4, 1, 6, 5, 120.00);   

SELECT *FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT *FROM products WHERE price > (SELECT MIN(price) FROM orders);

SELECT *FROM customers WHERE id IN (SELECT customer_id FROM orders);

SELECT c.id, c.name,(SELECT COUNT(*) FROM orders o WHERE o.customer_id = c.id) AS total_orders FROM customers c;

SELECT CASE WHEN EXISTS (SELECT 1 FROM products WHERE name = 'Laptop') THEN 'Laptop exists' ELSE 'Laptop NOT found' END AS laptop_check,
		CASE WHEN EXISTS (SELECT 1 FROM products WHERE name = 'Tablet') THEN 'Tablet exists' ELSE 'Tablet NOT found' END AS tablet_check;
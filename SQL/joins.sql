USE companydb;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_name VARCHAR(100),
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (customer_name, email) VALUES
('Shree', 'shree54@example.com'),
('Priya', 'priya23@example.com'),
('susi', 'susi32@example.com'),
('Divya', 'divya12@example.com'),
('Indhu', 'indhu21@example.com');
SELECT*FROM customers;
INSERT INTO orders (customer_id, product_name, amount) VALUES
(1, 'Laptop', 55000.00),
(2, 'Mobile Phones', 15000.00),
(3, 'Headphone', 2500.00),
(1, 'Airpods', 900.00),
(4, 'Smartwatch', 4000.00);
SELECT*FROM orders;

SELECT customers.customer_name,orders.product_name,orders.amount
FROM customers INNER JOIN orders ON customers.customer_id = orders.customer_id;

SELECT customers.customer_name,orders.product_name,orders.amount
FROM customers LEFT JOIN orders ON customers.customer_id = orders.customer_id;
CREATE DATABASE Task;
USE Task;
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    event_name VARCHAR(100),
    event_date DATE
);

INSERT INTO orders (product_name, quantity, price, event_name, event_date) VALUES
('Apple Watch', 2, 350.00, 'Apple Watch Launch', '2025-01-10'),
('AirPods', 1, 150.00, 'AirPods Showcase', '2025-01-11'),
('Asus Laptop', 3, 750.00, 'Asus Tech Conference', '2025-01-12'),
('Bluetooth Speaker', 4, 120.00, 'Bluetooth Speaker Expo', '2025-01-13'),
('Android Tablet', 5, 280.00, 'Android Tablet Summit', '2025-01-14');


SELECT *FROM orders WHERE quantity > 2;
SELECT *FROM orders WHERE price BETWEEN 100 AND 500;
SELECT *FROM orders WHERE product_name LIKE 'A%';
SELECT *FROM orders ORDER BY quantity DESC;

SELECT id,product_name,CONCAT(event_name, ' - ', event_date) AS event_details
FROM orders;
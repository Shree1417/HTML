USE shree;
CREATE TABLE products (id INT PRIMARY KEY,name VARCHAR(100),price DECIMAL(10,2));
ALTER TABLE products 
ADD COLUMN stock INT;
ALTER TABLE products 
CHANGE COLUMN price unit_price DECIMAL(10,2);
DESC products;
INSERT INTO products (id, name, unit_price, stock) 
VALUES (1, 'TV', 55000.00, 10),
(2, 'Washing Machine', 12000.00, 50),
(3, 'AC', 60000.00, 40),
(4, 'Refrigerator', 80000.00, 15),
(5, 'Monitor', 15000.00, 25);
SELECT * FROM products;
UPDATE products SET stock = 60 WHERE id = 3;
DELETE FROM products WHERE id = 5;
SELECT * FROM products;
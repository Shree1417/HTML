use shree;
CREATE TABLE orders (
  id INT,
  product_name VARCHAR(50),
  quantity INT,
  price DECIMAL(10,2)
);
DESC orders;

INSERT INTO orders (id, product_name, quantity, price)
VALUES
(1, 'watch', 2, 5000.00),
(2, 'Wallet', 5, 500.00),
(3, 'Shoe', 3, 900.00),
(4, 'Bracelet', 1, 1200.00),
(5, 'Cap', 4, 500.00);
SELECT*FROM orders;
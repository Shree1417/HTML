CREATE DATABASE companyDB;
USE companyDB;
CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  salary INT DEFAULT 30000,
  email VARCHAR(100)
);
ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (email);
DESC employees;

CREATE TABLE products (
  id INT,
  name VARCHAR(50),
  price DECIMAL(10,2)
);
ALTER TABLE products
ADD stock INT;
ALTER TABLE products
CHANGE price unit_price DECIMAL(10,2);
DESC products;
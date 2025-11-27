USE SLA;
CREATE TABLE OrderDetails_Unnormalized (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product1 VARCHAR(50),
    product2 VARCHAR(50),
    product3 VARCHAR(50)
);

INSERT INTO OrderDetails_Unnormalized VALUES
(101, 'Arshu', 'box', 'note', 'file');

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

INSERT INTO Orders VALUES
(101, 'Arshu');

CREATE TABLE Order_Items (
    order_id INT,
    product_name VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Order_Items VALUES
(101, 'box'),
(101, 'note'),
(101, 'file');

CREATE TABLE StudentCourses_Not3NF (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT,
    course_name VARCHAR(50)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT
);

INSERT INTO Students VALUES
(1, 'Shariff', 10),
(2, 'Poorna', 11);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO Courses VALUES
(10, 'Computer Science'),
(11, 'Mathematics');

CREATE TABLE ProductOrders (
    order_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

INSERT INTO ProductOrders VALUES
(1, 'Ipad', 1, 60000),
(2, 'Macbook', 2, 2200),
(3, 'TWS', 1, 5400),
(4, 'Smartwatch', 1, 12000),
(5, 'Keyboard', 3, 4520);

SELECT AVG(price) AS average_order_price
FROM ProductOrders;

SELECT product_name,SUM(price) AS total_sales
FROM ProductOrders GROUP BY product_name;

SELECT product_name,SUM(price) AS total_sales
FROM ProductOrders GROUP BY product_name
ORDER BY total_sales DESC;
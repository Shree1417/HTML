create database shree;
use shree;
CREATE TABLE student (
  id INT,
  name VARCHAR(26),
  age INT,
  grade VARCHAR(26)
);
INSERT INTO student (id, name, age, grade)
VALUES 
(1, 'Poorna', 20, 'A'),
(2, 'Shree', 19, 'B+'),
(3, 'Arsha', 21, 'A+'),
(4, 'susi', 18, 'B');
DESC student;
select*from student;
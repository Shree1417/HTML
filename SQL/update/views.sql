
USE SLA;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
DESC employees;
INSERT INTO employees (emp_id, name, department, salary) VALUES
(1, 'Arshu', 'HR', 40000),
(2, 'Banu', 'Sales', 25000),
(3, 'Charu', 'HR', 40000),
(4, 'Dharshu', 'IT', 50000),
(5, 'Emily', 'IT', 55000);

CREATE VIEW hr_employees AS
SELECT emp_id, name, salary FROM employees WHERE department = 'HR';

SELECT * FROM hr_employees;

CREATE VIEW employee_salary_info AS
SELECT name,department,salary,salary * 12 AS annual_salary FROM employees;

SELECT * FROM employee_salary_info;

CREATE VIEW it_employees AS
SELECT emp_id, name, salary FROM employees WHERE department = 'IT';

UPDATE it_employees SET salary = 65000 WHERE emp_id = 4;

SELECT * FROM employees WHERE emp_id = 4;

INSERT INTO it_employees (emp_id, name, salary)
VALUES (6, 'Fathima', 50000);

DELETE FROM it_employees WHERE emp_id = 5;

SELECT * FROM employees;

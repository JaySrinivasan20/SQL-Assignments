CREATE DATABASE employee;

USE employee;

CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(100)
);

SELECT * FROM departments;

CREATE TABLE location (
location_id INT PRIMARY KEY,
location VARCHAR(30)
);

SELECT * FROM location;

CREATE TABLE employees (
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
gender ENUM('M','F'),
age INT,
hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2),

FOREIGN KEY (department_id)
REFERENCES departments(department_id),

FOREIGN KEY (location_id)
REFERENCES location(location_id)
);

SELECT * FROM employees;

ALTER TABLE employees
ADD email VARCHAR(100);

ALTER TABLE employees
MODIFY designation VARCHAR(255);

ALTER TABLE employees
DROP COLUMN age;

ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE departments TO departments_info;

SELECT * FROM departments_info;

RENAME TABLE location TO locations;

SELECT * FROM locations;

TRUNCATE TABLE employees;

DROP TABLE employees;

DROP DATABASE employee;





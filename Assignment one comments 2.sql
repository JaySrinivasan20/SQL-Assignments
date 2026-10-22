DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;

CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(100) NOT NULL UNIQUE
);

SELECT * FROM departments;

CREATE TABLE location (
location_id INT AUTO_INCREMENT PRIMARY KEY,
location VARCHAR(30) NOT NULL UNIQUE
);

SELECT * FROM location;

CREATE TABLE employees (
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
gender ENUM('M','F') NOT NULL,
age INT CHECK (age >= 18),
hire_date DATE DEFAULT (CURRENT_DATE),
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
SELECT * FROM departments;
SELECT * FROM location;
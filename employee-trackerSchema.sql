DROP DATABASE IF EXISTS employee_trackerdb;
CREATE DATABASE employee_trackerdb;

USE employee_trackerdb;

CREATE TABLE department (
  id INT,
  name VARCHAR(30),
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department (id),
  PRIMARY KEY (id)
);

CREATE TABLE employees (
  id INT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT,
  FOREIGN KEY (manager_id) REFERENCES manager (id),
  FOREIGN KEY (role_id) REFERENCES role (id),
  PRIMARY KEY (id)
);

CREATE TABLE manager (
  id INT NOT NULL,
  mgr_name VARCHAR(30) NOT NULL
)

SELECT * FROM department;
SELECT * FROM employee_role;
SELECT * FROM employees;
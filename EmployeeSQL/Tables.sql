drop table if exists titles;

CREATE TABLE titles (
	title_id VARCHAR(250) PRIMARY KEY NOT null,
	title VARCHAR(250) NOT null
);

SELECT * FROM titles;
------------------------------------------------------------
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT null,
	emp_title_id VARCHAR(250) NOT null,
	birth_date date NOT null,
	first_name VARCHAR(250) NOT null,
	last_name VARCHAR(250) NOT null, 
	sex VARCHAR(250) NOT null,
	hire_date date NOT null,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;
------------------------------------------------------------
CREATE TABLE departments (
	dept_no VARCHAR(250) PRIMARY KEY NOT null,
	dept_name VARCHAR (250) NOT null
);

SELECT * FROM departments;
------------------------------------------------------------
CREATE TABLE dept_manager (
	dept_no VARCHAR(250) NOT null,
	emp_no INT NOT null,
	PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager;
------------------------------------------------------------
CREATE TABLE dept_emp (
	emp_no INT NOT null,
	dept_no VARCHAR(250) NOT null,
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;
------------------------------------------------------------
CREATE TABLE salaries (
	emp_no INT NOT null,
	salary INT NOT null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;
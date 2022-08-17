--1. List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date BETWEEN '01-01-1986' AND '12-31-1986'

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT employees.emp_no, employees.first_name, employees.last_name, dept_manager.dept_no, departments.dept_name
FROM employees
INNER JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no

---4.List the department of each employee with the following information: employee number, last name, first name, and department name. 
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no

---5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Development' OR dept_name = 'Sales'

---8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC
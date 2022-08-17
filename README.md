# sql-challenge
This challenge was broken down into three parts.

#Part 1: Modeling
In the first part, each csv file was modleed using quick database design (QBD). Each header was given a datatype (VARCHAR, INT, etc.). From there, a primary key, foreign key, or composite key was assigned to each data set.

#Part 2: Data Engineering 
In this section, the table schemas were created in Postgresql. For each table, the datatypes and keys that were assinged in the modeling stages were added to the the schemas. CSV files were loaded in the following order to ensure foreign keys would load corretly. 
    1. titles
    2. employees
    3. departments
    4. department managers
    5. department employees
    6. salaries.

# Part 3: Data Analysis
In this section, the following questions were asked, and each was analyzed using the tables created in Part 2.
    1. List the following details of each employee: employee number, last name, first name, sex, and salary.
    2. List first name, last name, and hire date for employees who were hired in 1986.
    3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name,          first name.
    4. List the department of each employee with the following information: employee number, last name, first name, and department name.
    5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
    6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
    7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
    8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
  
  

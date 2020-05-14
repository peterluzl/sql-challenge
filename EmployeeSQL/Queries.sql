--Select to see all the tables 
SELECT* FROM employees
SELECT* FROM salaries
SELECT* FROM dept_emp
SELECT* FROM dept_manager
SELECT* FROM departments
SELECT* FROM titles

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT emp.emp_no,emp.first_name,emp.last_name,emp.gender,salaries.salary
FROM employees emp
JOIN salaries
ON emp.emp_no = salaries.emp_no;



-- 2. List employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT mana.dept_no, departments.dept_name,mana.emp_no,employees.last_name, employees.first_name, mana.from_date,mana.to_date
FROM dept_manager AS mana
JOIN departments
ON mana.dept_no = departments.dept_no
JOIN employees
ON mana.emp_no = employees.emp_no


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT emp.emp_no,emp.last_name,emp.first_name,departments.dept_name
FROM employees AS emp
JOIN dept_emp
ON emp.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no



-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';



-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no,emp.last_name,emp.first_name,departments.dept_name
FROM employees AS emp
JOIN dept_emp
ON emp.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'；

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no,emp.last_name,emp.first_name,departments.dept_name
FROM employees AS emp
JOIN dept_emp
ON emp.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS "shared_ln"
FROM employees
GROUP BY last_name
ORDER BY
shared_ln DESC;


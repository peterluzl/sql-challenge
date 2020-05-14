--Created table departments
CREATE TABLE departments(
	dept_no VARCHAR(255) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(255)
);

-- Created Table dept_emp
DROP TABLE  dept_emp CASCADE;
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(255) NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Created Table dept_manager
CREATE TABLE dept_manager(
	dept_no VARCHAR(255) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Created Table employees
CREATE TABLE employees(
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	gender VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL
);


-- Created Table salaries
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Created Table titles
CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR(255),
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);




CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50) NOT NULL
);

SELECT * FROM titles;


DROP TABLE employees CASCADE;
CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date  DATE,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);


SELECT * FROM employees;



CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER NOT NULL
);

SELECT * FROM salaries;



CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL
);


SELECT * FROM departments;


CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(10) NOT NULL,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;



CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER PRIMARY KEY,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);


SELECT * FROM dept_manager;
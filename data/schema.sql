-- Brandon Coleman
-- Homework 9 schema
-- Data Analytics Bootcamp
-- 6/20/2019

CREATE TABLE employee(
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	gender varchar(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE department(
	dept_no VARCHAR NOT NULL,
	dept_name varchar(20) NOT NULL,
	PRIMARY KEY (dept_no)
);

----Junction Table between Employee and Department---
CREATE TABLE dept_manager(
	dept_no varchar(4) NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

----Junction Table between Employee and Department---
CREATE TABLE dept_employee(
	emp_no INTEGER NOT NULL,
	dept_no varchar(4) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	FOREIGN KEY (dept_no) REFERENCES department (dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE salary(
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	PRIMARY KEY (emp_no, from_date)
);

CREATE TABLE title(
	emp_no INTEGER NOT NULL,
	title VARCHAR(50) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
    PRIMARY KEY (emp_no, title, from_date)
);

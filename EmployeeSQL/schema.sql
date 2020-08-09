CREATE TABLE employees (
	emp_no int NOT NULL PRIMARY KEY,
	emp_title_id varchar(30),
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar (1),
	hire_date date
);

CREATE TABLE titles (
	title_id varchar(8) NOT NULL PRIMARY KEY,
	title varchar (30)
);
	
CREATE TABLE departments (
	dept_no varchar(8) NOT NULL PRIMARY KEY,
 	dept_name varchar(30)
);

CREATE TABLE dept_emp (
	emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no varchar NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no,dept_no)
	);

CREATE TABLE dept_manager(
	dept_no varchar NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
	);

CREATE TABLE salary (
	emp_no int NOT NULL PRIMARY KEY,
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

CREATE TABLE employees (
    emp_no INT NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    gender VARCHAR(2) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE departments (
    dept_no VARCHAR(8) NOT NULL,
    dept_name VARCHAR(20) NOT NULL
);

CREATE TABLE dept_manager (
    emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

CREATE TABLE titles (
    emp_no INT NOT NULL,
	title VARCHAR(20) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    foreign key (emp_no) references employees (emp_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    foreign key (emp_no) references employees (emp_no)
);


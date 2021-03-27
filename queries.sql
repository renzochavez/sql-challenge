SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees as e 
INNER JOIN salaries as s ON e.emp_no=s.emp_no;

SELECT e.last_name, e.first_name, e.hire_date
FROM employees as e 
WHERE extract(year from hire_date) = 1986;

SELECT d.dept_no, d.dept_name, dm.emp_no,  e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d
ON dm.dept_no= d.dept_no
INNER JOIN employees e
ON dm.emp_no = e.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e 
INNER JOIN dept_emp de 
ON e.emp_no=de.emp_no
INNER JOIN departments as d
ON de.dept_no = d.dept_no

SELECT e.last_name, e.first_name
FROM employees as e
WHERE (e.first_name = 'Hercules') AND (lower(e.last_name) LIKE 'b%');



SELECT DISTINCT (emp_no) *
INTO current_dept_emp
FROM dept_emp;


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN current_dept_emp as cde
ON e.emp_no = cde.emp_no
INNER JOIN departments as d
ON cde.dept_no = d.dept_no
WHERE lower(d.dept_name) = 'sales';


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN current_dept_emp as cde
ON e.emp_no = cde.emp_no
INNER JOIN departments as d
ON cde.dept_no = d.dept_no
WHERE (lower(d.dept_name) = 'sales') or (lower(d.dept_name) = 'development');


SELECT last_name,count(last_name) as Frequency 
FROM employees 
GROUP BY last_name
ORDER BY frequency DESC;

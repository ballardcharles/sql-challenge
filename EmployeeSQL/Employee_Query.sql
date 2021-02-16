-- List the employee number, last name, first name, sex and salary

SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", e.sex AS "Sex", s.salary AS "Salary"
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no;

-- List first name, last name and hire date for employees hired in 1986
SELECT e.last_name AS "Last Name", e.first_name AS "First Name", e.hire_date AS "Hire Date"
FROM employees AS e
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date;

-- List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name.
SELECT d.dept_no AS "Department Number", d.dept_name AS "Department Name", m.emp_no AS "Employee Number", 
	e.last_name AS "Last Name", e.first_name AS "First Name"
FROM departments AS d
JOIN dept_manager AS m
ON d.dept_no = m.dept_no
JOIN employees AS e
ON m.emp_no = e.emp_no;





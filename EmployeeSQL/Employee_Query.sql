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

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees AS e
JOIN emp_no
ON emp_no.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = emp_no.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name AS "First Name", last_name AS "Last Name", sex as "Sex"
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees AS e
JOIN emp_no
ON emp_no.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = emp_no.dept_no WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees AS e
JOIN emp_no
ON emp_no.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = emp_no.dept_no WHERE dept_name = 'Sales' OR dept_name = 'Development';











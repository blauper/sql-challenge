--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no,
    e.last_name,
    e.first_name,
    e.gender,
    s.salary
FROM employees AS e
LEFT JOIN salaries AS s
ON (e.emp_no = s.emp_no);

--List employees who were hired in 1986.
SELECT first_name,
    last_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: department number, department name,
--the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no,
    d.dept_name,
    dm.emp_no,
    e.last_name,
    e.first_name,
    dm.from_date,
    dm.to_date
FROM departments AS d
INNER JOIN dept_manager AS dm
ON (d.dept_no = dm.dept_no)
INNER JOIN employees AS e
ON (dm.emp_no = e.emp_no)

--List the department of each employee with the following information: employee number, last name,
--first name, and department name.
SELECT e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees AS e
INNER JOIN dept_emp as de
ON (e.emp_no = dept_emp.emp_no)
JOIN departments AS d
ON (de.dept_no = d.dept_no);

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name,
    last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name,
--and department name.
SELECT e.emp_no,
    e.last_name,
    e.first_name,
    de.dept_name
FROM departments AS d
INNER JOIN dept_emp AS de
ON (d.dept_no = de.dept_no)
AND d.dept_name = 'Sales'
INNER JOIN employees AS e
ON (e.emp_no = de.emp_no);

--List all employees in the Sales and Development departments, including their employee number,
--last name, first name, and department name.
SELECT e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')

--In descending order, list the frequency count of employee last names, i.e., how many employees
--share each last name.
SELECT last_name,
    COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
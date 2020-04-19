USE employees;

SHOW TABLES;

SELECT * FROM employees;

-- ex. 2 Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT d.dept_name as Department, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
JOIN dept_emp as de ON de.emp_no = e.emp_no
JOIN dept_manager as dm ON de.emp_no = dm.emp_no
    AND dm.to_date > current_date()
JOIN departments as d ON dm.dept_no = d.dept_no
ORDER BY d.dept_name;

-- ex. 3 Find the name of all departments currently managed by women.
-- redo this one, not pulling up correct info.

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees as e
JOIN dept_emp as de
    ON de.emp_no = e.emp_no
JOIN departments as d
    ON d.dept_no = de.dept_no
JOIN dept_manager as dm
    ON de.emp_no = dm.emp_no
WHERE dm.to_date < current_date()
    AND e.gender = 'F'
ORDER BY d.dept_name;

-- ex. 4 Find the current titles of employees currently working in the Customer Service department.
-- numbers for senior staff and staff are not matching curriculum output, need to review

SELECT t.title AS Title, COUNT(*) AS Count
FROM employees as e
JOIN dept_emp as de
    ON de.emp_no = e.emp_no
JOIN departments as d
    ON d.dept_no = de.dept_no
JOIN titles AS t on de.emp_no = t.emp_no
WHERE t.to_date > current_date()
    AND d.dept_name = 'Customer Service'
GROUP BY t.title;

-- ex. 5 Find the current salary of all current managers

SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Name, s.salary as Salary
FROM employees AS e
JOIN dept_emp as de
    ON de.emp_no = e.emp_no
JOIN departments as d
    ON d.dept_no = de.dept_no
JOIN dept_manager AS dm ON de.emp_no = dm.emp_no
JOIN salaries AS s ON dm.emp_no = s.emp_no
WHERE dm.to_date > current_date() AND s.to_date > current_date()
ORDER BY d.dept_name;
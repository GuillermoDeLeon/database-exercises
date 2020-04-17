USE employees;
DESCRIBE departments;

-- ex 1
SELECT first_name, last_name
  FROM employees
  WHERE hire_date IN (
      SELECT hire_date
      FROM employees
      WHERE emp_no = 101010
  );

-- ex 2
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    ) GROUP BY title;

-- ex 3
SELECT first_name, last_name
FROM employees
WHERE gender = 'F' and emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE dept_manager.to_date > current_date()
    );

-- BONUS
-- ex 1
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE emp_no IN (
            SELECT emp_no
            FROM dept_manager
            WHERE dept_manager.to_date > current_date()
        )
          AND gender = 'F'
    )
);



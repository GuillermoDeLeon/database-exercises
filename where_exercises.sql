-- ex 2, section 1
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- ex 3, section 1
SELECT * FROM employees
WHERE last_name LIKE 'E%';

-- ex 4, section 1
SELECT * FROM employees
WHERE hire_date LIKE '199%';

-- ex 5, section 1
SELECT * FROM employees
WHERE birth_date
LIKE '%-12-25';

-- ex 6, section 1
SELECT * FROM employees
WHERE last_name
LIKE '%q%';

-- ex 1, section 2
SELECT * FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')

-- ex 2, section 2
SELECT * FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
     AND gender = 'M';

-- ex 3, section 2
SELECT * FROM employees
WHERE (last_name
        LIKE 'e%'
        OR last_name LIKE '%e');

-- ex 4, section 2
SELECT * FROM employees
WHERE (last_name LIKE 'e%e');

-- ex 5, section 2






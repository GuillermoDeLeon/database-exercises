USE employees;

-- ex. 2
SELECT DISTINCT title
FROM titles;

-- ex. 3
SELECT last_name
FROM employees
WHERE (last_name LIKE '%E'
    AND last_name LIKE 'E%')
    GROUP BY last_name;

-- ex. 4
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name, first_name;

-- ex. 5
SELECT last_name
FROM employees
WHERE (last_name LIKE '%q%'
       AND last_name NOT LIKE '%qu%')
GROUP BY last_name;

-- ex. 6
SELECT first_name, last_name, COUNT(*)
FROM employees
WHERE (first_name LIKE first_name
        AND last_name LIKE last_name)
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;

-- ex. 7

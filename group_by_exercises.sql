use employees;

-- in your script, use DISTINCT to find the unique titles in the titles table.

SELECT DISTINCT title FROM titles;


-- Find your query for employees whose last names start and end with 'E'. Update the query find just the
-- unique last names that start and end with 'E' using GROUP BY. The results should be:

SELECT  last_name  FROM employees where last_name like 'E%' AND last_name like '%E'  GROUP BY last_name;





-- Update your previous query to now find unique combinations of first and last name where the last name
-- starts and ends with 'E'. You should get 846 rows.

select first_name,last_name from employees where last_name like 'E%' AND last_name like '%E' GROUP BY last_name,first_name;


-- Find the unique last names with a 'q' but not 'qu'. Your results should be:

select  last_name from employees where (last_name like '%q%' and  last_name not like '%qu%' )group by last_name;


-- Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is
-- shared with others.

SELECT COUNT(distinct first_name ) FROM employees order by  first_name;




SELECT last_name, count(last_name)
FROM employees
WHERE last_name like '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;



-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees
-- for each gender with those names. Your results should be:
select count(*),gender
from employees
where (first_name ='Vidya' or first_name= 'Irena' or first_name='Maya')
GROUP BY gender;



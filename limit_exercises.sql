use employees;

SELECT DISTINCT title FROM titles;

-- List the first 10 distinct last name sorted in descending order. Your result should look like this:


select distinct last_name from employees order by last_name desc limit 10;


-- Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql.
-- Update it to find just the first 5 employees. Their names should be:


select * from employees where hire_date LIKE '199%' and birth_date like '%12-25' order by birth_date,hire_date desc limit 5 offset 0 ;


-- Try to think of your results as batches, sets, or pages. The first five results are your first page.
-- The five after that would be your second page, etc. Update the query to find the tenth page of results.
-- The employee names should be:

select * from employees where hire_date LIKE '199%' and birth_date like '%12-25' order by birth_date,hire_date desc limit 5 offset 45 ;



use employees;


select concat_ws('-','sabita','regmi','poudel');
select concat_ws(' ','sabita','regmi','poudel');
select *,concat(first_name,' ',last_name) as 'full_name' from employees;
select now();
select curdate();
select curtime();
-- in hours
select (unix_timestamp()-unix_timestamp('2019-04-11'))/3600;
select (unix_timestamp()-unix_timestamp('1994-03-21'))/31536000;
select (unix_timestamp()-unix_timestamp(birth_date))/31536000 as 'age',hire_date from employees where birth_date like'199%';
select sum(salary) as 'sum of salaries' from salaries;


-- look at stored procedure as homework


-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine
-- their first and last name together as a single column in your results.

SELECT  CONCAT(first_name,' ',last_name) FROM employees where  first_name like 'E%' and first_name like '%E';



-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many
-- days they have been working at the company (Hint: You will also need to use now() or curdate())
select *,DATEDIFF(curdate(),hire_date) from employees where hire_date LIKE '199%' and birth_date like '%12-25';

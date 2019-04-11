use employees;


-- Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee.


SELECT CONCAT(last_name, ' ', first_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 10 offset 0;


-- Add the date of birth for each employee as 'DOB' to the query.

select birth_date as dob from employees;


-- Update the query to format full name to include the employee number so it is formatted as 'employee number - lastname,' ||
--  ' firstname'.


select  concat(emp_no,'-',last_name,(','),first_name) as full_name,birth_date as dob from employees order by emp_no asc  limit 10 offset 0;


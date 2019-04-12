use employees;
-- Find all the employees with the same hire date as employee 101010 using a sub-query.
--
-- 69 Rows

 select *
 from employees
 where hire_date in
 (select hire_date
 from employees
  where emp_no=101010
  );




--  Find all the titles held by all employees with the first name Aamod.
--
-- 314 total titles, 6 unique titles



  select title from titles where emp_no in(select emp_no from employees  where first_name ='Aamod' );


-- Find all the current department managers that are female.

  select first_name,last_name from employees where emp_no in (select emp_no from dept_manager where (gender='F' and to_date>now()) );


-- Find all the department names that currently have female managers.

select dept_name from departments where dept_no in(select dept_no from dept_manager)where emp_no in(select emp_no from employees where gender='F');






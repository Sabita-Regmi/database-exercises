
use employees;
select first_name from employees where first_name like '%sus%';
# # hire date can be anydate of april
select * from employees where hire_date like '%04%';
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE emp_no BETWEEN 10026 AND 10082;
#
# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');
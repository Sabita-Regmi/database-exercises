use employees;

select title from titles;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;



SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager' FROM departments
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > current_date ()
ORDER BY `Department Name`;


select departments.dept_name as 'department Name',concat(employees.first_name,' ',employees.last_name) as 'Manager Name' from  departments
-- join dept_manager
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > current_date ()
and employees.gender='F'
ORDER BY `Department Name`;


-- Find the current titles of employees currently working in the Customer Service department.


-- Find the current salary of all current managers.
select title from titles;
SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager' FROM departments
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
  JOIN employees
  ON salaries.salary = salaries.emp_no
WHERE dept_manager.to_date > current_date ()
and employees.gender='F'
ORDER BY `Department Name`;


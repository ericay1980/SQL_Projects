/*Fetching names and ID's of the employees who are working in the IT department*/

Select employee_id, first_name, department_name
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
Where departments.department_name='IT'
;

/*Fetch min and max salary of all employees*/

SELECT jobs.job_id, jobs.job_title, jobs.min_salary, jobs.max_salary, employees.first_name
FROM employees
LEFT OUTER JOIN jobs
ON jobs.job_id = employees.job_id
;

/*Identify the top ten cities which have the largest number of employees*/

SELECT city, count(*) as emp_count
FROM employees
JOIN departments
JOIN locations
ON employees.department_id = departments.department_id and departments.location_id =
locations.location_id
Group BY department_name
ORDER BY emp_count desc limit 10
;

/*Fetch the employees whose last working day was  12-31-1999*/

SELECT employees.employee_id, employees.first_name
FROM employees
JOIN job_history
ON job_history.employee_id = employees.employee_id
WHERE end_date = '1991-12-31'
;

/*Fetch employees with 25 years or more of experience*/

SELECT employees.employee_id, employees.first_name, departments.department_name,
year(curdate())-year(employees.hire_date) as Exp
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE year(curdate())-year(employees.hire_date)>25
;

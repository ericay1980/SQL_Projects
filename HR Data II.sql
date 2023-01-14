/*Identify most popular cities where employees like to work*/

Select
employees.employee_id,
employees.first_name,
employees.last_name, 
locations.city
FROM employees
JOIN departments
JOIN locations
ON employees.department_id = departments.department_id
And departments.location_id=locations.location_id
;

/*Fetch details of employees from the top 5 cities*/

Select
employees.employee_id,
employees.first_name,
employees.last_name,
employees.salary,
departments.department_name,
locations.city
From employees
JOIN departments
JOIN locations
ON employees.department_id = departments.department_id
And departments.location_id=locations.location_id
Order by city
Asc
;

/*Identify the top 5 cities that have the maximum number of emplyees*/

SELECT city, count(*) as emp_count
FROM employees
JOIN departments
JOIN locations
ON employees.department_id = departments.department_id and departments.location_id =
locations.location_id
;

Select city,
count(*) as emp_count
from employees
join departments
join locations
on employees.department_id = departments.department_id and departments.location_id =
locations.location_id
Group BY department_name
ORDER BY emp_count desc limit 5
;

/*Fetch employees that have ten years with the organization*/

Select
employees.employee_id,
employees.first_name,
employees.last_name,
job_history.end_date
from employees
Left Join job_history
On employees.employee_id=job_history.employee_id
where date(end_date)='1999-12-31'
;


SELECT employees.employee_id, employees.first_name, departments.department_name, 
year(curdate())-year(employees.hire_date) as Exp
FROM employees JOIN departments
ON employees.department_id = departments.department_id WHERE year(curdate())-year(employees.hire_date)>25
;


/*Fetch top 3 countries tha have longest standing employees*/

Select
employees.first_name,
employees.last_name,
employees.hire_date,
locations.city
from employees
join departments
join locations
on employees.department_id = departments.department_id and departments.location_id =
locations.location_id
GROUP BY  city
Order by hire_date
;



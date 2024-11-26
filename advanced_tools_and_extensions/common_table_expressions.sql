use company_db;

select * from employees;

with employee_salaries as (
select first_name, last_name, salary
from employees
where salary>8000
)
select * from employee_salaries;
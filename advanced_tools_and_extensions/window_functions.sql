use company_db;

select employee_id, first_name, salary,
row_number() over (order by salary desc) as row_num
from employees;

select employee_id, first_name, salary,
rank() over (order by salary desc) as salary_rank
from employees;

select employee_id, first_name, salary,
dense_rank() over (order by salary desc) as salary_dense_rank
from employees;

-- LEAD(): Accesses the next row’s value.
-- select employee_id, first_name, salary
-- lead(salary, 1) over (order by salary desc) as next_salary
-- from employees;

-- LAG(): Accesses the previous row’s value.
-- select employee_id, first_name, salary
-- lag(salary, 1) over (order by salary desc) as next_salary
-- from employees;
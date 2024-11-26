use company_db;

-- UNION: Combines results of two queries and removes duplicates.
select first_name from employees
union
select department_name from departments;

-- UNION ALL: Combines results of two queries without removing duplicates.
select employee_id from employees
union all
select department_id from departments;
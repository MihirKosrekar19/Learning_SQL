use company_db;

select * from employees;

start transaction;

select * from employees;

update employees
set salary_new= salary*3
where department_id=1;

select * from employees;

-- If something goes wrong, undo changes
rollback;

select * from employees;
use company_db;

select * from employees;

start transaction;

update employees
set salary_new= salary*2
where department_id=1;

select * from employees;

commit;

select * from employees;
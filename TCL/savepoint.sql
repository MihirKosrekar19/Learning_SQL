use company_db;

select * from employees;

start transaction;

savepoint before_update;

update employees
set last_name= 'Stark'
where employee_id=2;

select * from employees;

-- If there's an issue with the update, rollback to the savepoint
rollback to savepoint before_update;

select * from employees;

-- Continue with other operations
update employees
set last_name= 'Messi'
where employee_id=4;

select * from employees;

commit;

select * from employees;
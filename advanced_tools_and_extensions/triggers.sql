use company_db;

select * from employees;

delimiter //
create trigger before_employee_insert
before insert on employees
for each row
begin
if new.salary<3000 then
signal sqlstate '45000'
set message_text= 'Salary cannot be less than 3000';
end if;
end//
delimiter ;

insert into employees (employee_id, first_name, last_name, email, hiring_date, salary, department_id) values
(7, 'Rohit', 'Sharmma', 'rohit.sharma@example.com', '2021-03-06', 8000, 2);
select * from employees;

insert into employees (employee_id, first_name, last_name, email, hiring_date, salary, department_id) values
(8, 'Hardik', 'Pandya', 'hardik.pandya@example.com', '2022-04-17', 2000, 1);
select * from employees;

show triggers;

drop trigger before_employee_insert;
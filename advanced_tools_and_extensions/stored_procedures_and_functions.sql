use company_db;

select * from employees;

delimiter //
create procedure update_salary(in emp_id int, in new_salary decimal(10, 2))
begin
update employees
set salary=new_salary
where employee_id = emp_id;
end//
delimiter ;

call update_salary(5, 8200);
select * from employees;

delimiter //
create function calculate_bonus(salary decimal(10, 2))
returns decimal(10, 2)
deterministic
begin
return salary*0.185;
end//
delimiter ;

select salary, calculate_bonus(salary) as bonus from employees;
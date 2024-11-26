use company_db;

-- Retrieve all columns from a table.
select * from employees;

--  Retrieve unique values from a specific column.
select distinct department_id from employees;

-- Filter data based on a condition.
-- alter table employees rename column surname to last_name;
select first_name, last_name, salary from employees where salary>5000;

-- ORDER BY: Sort results by one or more columns (ascending by default, use DESC for descending).
select first_name, salary from employees order by salary;
select first_name, salary from employees order by salary desc;
select first_name, hiring_date, salary from employees order by hiring_date;

--  GROUP BY: Aggregate data by one or more columns, often used with aggregate functions like COUNT, SUM, AVG, etc.
select department_id, avg(salary) from employees group by department_id;
select department_id, count(salary) from employees group by department_id;
select department_id, sum(salary) from employees group by department_id;
select department_id, min(salary) from employees group by department_id;
select department_id, max(salary) from employees group by department_id;
select department_id, count(*) from employees group by department_id;

-- HAVING: Filter aggregated results (like WHERE but used with GROUP BY).
select department_id, count(*) from employees group by department_id having count(*)>1;
select department_id, avg(salary) from employees group by department_id having avg(salary)>5000 order by avg(salary) desc;
select department_id, sum(salary) as total_salary from employees group by department_id having total_salary>7000;
-- You can also combine multiple conditions with logical operators
select department_id, sum(salary) as total_salary, count(*) as num_employees from employees group by department_id having total_salary>7000 and num_employees>1;
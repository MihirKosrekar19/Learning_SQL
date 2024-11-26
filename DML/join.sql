use company_db;

select * from employees;
select * from departments;

-- INNER JOIN: Retrieve matching records from both tables.
select e.first_name, d.department_name from employees e inner join departments d on e.department_id=d.department_id;

-- LEFT JOIN: Retrieve all records from the left table and matching records from the right table.
select e.first_name, d.department_name from employees e left join departments d on e.department_id=d.department_id;

-- RIGHT JOIN: Retrieve all records from the right table and matching records from the left table.
select e.first_name, d.department_name from employees e right join departments d on e.department_id=d.department_id;

-- FULL OUTER JOIN: Retrieve records when there is a match in either table.
-- select e.first_name, d.department_name from employees e full outer join departments d on e.department_id=d.department_id;
select e.first_name, d.department_name from employees e join departments d on e.department_id=d.department_id;

-- CROSS JOIN: Returns the Cartesian product of the two tables (every combination).
select e.first_name, d.department_name from employees e cross join departments d;
select d.department_name, e.first_name from employees e cross join departments d;
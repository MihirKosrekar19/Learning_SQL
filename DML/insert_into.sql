use company_db;

select * from employees;

-- VALUES: Insert data into specific columns.
insert into employees (employee_id, first_name, last_name, salary, email, department_id, hiring_date)
values(6, 'Virat', 'Kohli', 6000, 'virat.kohli@example.com', 3, '2022-09-08');

select * from employees;

create table employees_archive (
	employee_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) unique not null,
    hiring_date date not null,
    salary decimal(10, 2) check (salary>0),
    department_id int,
    foreign key (department_id) references departments(department_id)
);

-- INSERT INTO ... SELECT: Copy data from one table into another.
insert into employees_archive (employee_id, first_name, last_name, salary, email, department_id, hiring_date)
select employee_id, first_name, last_name, salary, email, department_id, hiring_date
from employees
where salary>=6000;

select * from employees_archive;
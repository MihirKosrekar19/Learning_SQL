create database company_db;

use company_db;

create table departments (
	department_id int primary key auto_increment,
    department_name varchar(100) not null
);
describe departments;

create table employees (
	employee_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) unique not null,
    hiring_date date not null,
    salary decimal(10, 2) check (salary>0),
    department_id int,
    foreign key (department_id) references departments(department_id)
);
describe employees;

create table projects (
	project_id int primary key auto_increment,
    project_name varchar(50) not null,
    start_date date not null,
    end_date date
);
describe projects;

create table employee_projects (
	employee_id int,
    project_id int,
    role varchar(50),
    primary key (employee_id, project_id),
    foreign key (employee_id) references employees(employee_id),
    foreign key (project_id) references projects(project_id)
);
describe employee_projects;
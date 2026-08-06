--Create db(DDL)
create database Saless

--Use db
use Sales

--Create Table(DDl)-->Table Name + Table Header Details + Data Validation
create table Employee(
emp_id int Primary Key,
emp_name varchar(20) not null,
emp_salary float
);

--Insert Values Into Table(DML)
insert into Employee(emp_id, emp_name, emp_salary)
Values (101, 'Virat', 58085.65), (102, 'Virat', 58085.65);

--view table(DQL)-->Virtual Table
select emp_id, emp_salary from Employee
select*from Employee

select*from INFORMATION_SCHEMA, TABLES fron SalesDB. 
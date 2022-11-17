create database payroll_service;
show databases;
use payroll_service;
create table employee_payroll (id INT unsigned NOT NULL AUTO_INCREMENT, name VARCHAR(30) NOT NULL,
salary Double NOT NULL, start DATE NOT NULL, PRIMARY KEY (id));
Select * from payroll_service.employee_payroll;
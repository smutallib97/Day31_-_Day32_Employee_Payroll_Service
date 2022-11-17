create database payroll_service;
show databases;
use payroll_service;
create table employee_payroll (id INT unsigned NOT NULL AUTO_INCREMENT, name VARCHAR(30) NOT NULL,
salary Double NOT NULL, start DATE NOT NULL, PRIMARY KEY (id));
Select * from payroll_service.employee_payroll;
insert into employee_payroll (name, salary, start) values ( 'bill',100000.00,'2018-01-03'),('terisa',200000.00,'2019-11-13');
select * from employee_payroll;
select salary from employee_payroll where name='bill'; 
select * from employee_payroll where start between CAST('2018-01-01' AS DATE)AND DATE(NOW());
alter table employee_payroll add gender char(1) after name; 
update payroll_service.employee_payroll set gender = 'M' where name = 'bill';
update payroll_service.employee_payroll set gender = 'F' where name = 'terisa';
insert into payroll_service.employee_payroll (name, gender, salary, start) values ( 'Ullas','M',700000.00,'2018-01-03'),
('Sayali','F',300000.00,'2019-11-13'), ('Aliya','F',150000.00,'2019-11-13'), ( 'Tauqeer','M',600000.00,'2020-01-06');
select sum(salary) from payroll_service.employee_payroll where gender = 'F' group by gender;
select sum(salary) from payroll_service.employee_payroll where gender = 'M' group by gender; 
select avg(salary) from payroll_service.employee_payroll;
select min(salary) from payroll_service.employee_payroll;
select max(salary) from payroll_service.employee_payroll;
select count(salary) from payroll_service.employee_payroll;
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
alter table payroll_service.employee_payroll add phone_number varchar(25) after name;
alter table payroll_service.employee_payroll add address varchar(100) DEFAULT 'TBD' after phone_number;
alter table payroll_service.employee_payroll add department varchar(150) not null after address;
select * from payroll_service.employee_payroll;
ALTER table payroll_service.employee_payroll rename column salary to basic_pay;
ALTER table payroll_service.employee_payroll add deductions int not null after basic_pay; 
ALTER table payroll_service.employee_payroll add taxablePay int not null after deductions;
ALTER table payroll_service.employee_payroll add netPay int not null after taxablePay;
ALTER table payroll_service.employee_payroll add incomeTax int not null after netPay;
select * from payroll_service.employee_payroll;
insert into payroll_service.employee_payroll(id, name, phone_number, address, department, gender, basic_pay, deductions, taxablePay, netPay, incomeTax, start) values 
(121,'terisa','4512474562','TBD','Marketing','F',3000000.00,1000000.00,3000000.00,500000.00,50000.00,'2019-11-13');
insert into payroll_service.employee_payroll(id, name, phone_number, address, department, gender, basic_pay, deductions, taxablePay, netPay, incomeTax, start) values 
(122,'terisa','4512474562','TBD','Sales','F',2000000.00,5000000.00,300000.00,400000.00,50000.00,'2019-11-13');
SELECT * FROM payroll_service.employee_payroll;
alter table payroll_service.employee_payroll rename COLUMN id to empid;
insert into payroll_service.employee_payroll(empid, name, phone_number, address, department, gender, basic_pay, deductions, taxablePay, netPay, incomeTax, start) values
(101,'Nitish','9815487896','TBD','IT','M',3000000.00,1000.00,2400.00,2800000.00,15000.00,'2022-11-13'),
(102,'Ullas','7845123698','TBD','IT','M',2000000.00,2000.00,2400.00,1800000.00,15000.00,'2022-11-13');
create table payroll_service.employee_department (empid int NOT NULL, department_id VARCHAR(30));
insert into payroll_service.employee_department (empid, department_id) values (121, 'Marketing'),(122,'Sales'),(101,'IT'),(102,'IT');
SELECT * FROM payroll_service.employee_department;
SELECT * FROM payroll_service.employee_payroll;
select basic_pay from payroll_service.employee_payroll where name='bill';
select * from payroll_service.employee_payroll where start between CAST('2018-01-01' AS DATE)AND DATE(NOW());
select sum(basic_pay) from payroll_service.employee_payroll where gender = 'F' group by gender;
select sum(basic_pay) from payroll_service.employee_payroll where gender = 'M' group by gender; 
select avg(netpay) from payroll_service.employee_payroll;
select min(netpay) from payroll_service.employee_payroll;
select max(netpay) from payroll_service.employee_payroll;
select count(basic_pay) from payroll_service.employee_payroll;
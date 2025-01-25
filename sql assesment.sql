create database try;
use try;

create table employees (
employeesid int primary key,
name varchar(100),
position varchar(100),
salary float,
hire_date date);


insert into employees(employeesid,name,position,salary,hire_date)
values(1,"krishna","data anaylst","15000.20","2025-01-01"),
(2,"radha","graphic desginer","12000.80","2025-01-02"),
(3,"mohan","web devloper","13500.70","2025-01-03"),
(4,"shyam","data anaylst","17300.20","2025-01-04"),
(5,"sakhi","web devloper","18500.19","2025-01-05"),
(6,"madhav","graphic designer","14600.20","2025-01-06"),
(7,"shyama","data anaylst","24900.28","2025-01-07"),
(8,"gopi","web devloper","12000.29","2025-01-08"),
(9,"avinash","graphic designer","13800.13","2025-01-09"),
(10,"kano","data analyst","17500.13","2025-01-10");

select*from employees;
use try;
CREATE TABLE employee_audit (
audit_id INT AUTO_INCREMENT PRIMARY KEY,
employee_id INT,
name VARCHAR
(100),
position VARCHAR (100), salary DECIMAL (10, 2), hire_date DATE,
action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP );

insert into employee_audit(audit_id,employee_id,name,position,salary,hire_date,action_date)
values("101",1,"riddhi","data analyst","14300","2024-02-12","2024-02-16 03:15:15"),
("102",2,"chiki","ai devloper","18300","2024-02-15","2024-02-23 05:18:19"),
("103",3,"den","ui/ux designer","12400","2024-02-18","2024-02-28 04:18:40"),
("104",4,"gopee","data analyst","17500","2024-02-23","2024-02-29 07:19:00"),
("105",5,"nitya","ui/ux designer","18000","2024-02-25","2024-03-01 03:27:01"),
("106",6,"jinu","data analyst","29000","2024-02-28","2024-03-13 11:28:10"),
("107",7,"ansh","ai devloper","15900","2024-03-02","2024-03-09 03:15:15"),
("108",8,"janvi","data analyst","18450","2024-03-05","2024-03-16 10:31:12"),
("109",1,"devarsh","ui/ux designer","19500","2024-03-12","2024-03-20 03:29:00"),
("110",1,"puls","data analyst","15490","2024-03-18","2024-03-25 11:15:15");

select* from employee_audit;

update employee_audit
set employee_id=9
where audit_id=109;


update employee_audit
set employee_id=10
where audit_id=110;

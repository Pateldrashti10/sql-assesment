create database try;

use try;

create table employees(
employee_id int primary key auto_increment,
name varchar(100),
position varchar (100),
salary decimal(10,2),
hire_date date);

insert into employees(name,position,salary,hire_date)
values("john doe","softwer engineer","14000.30","2022-01-20"),
("jane smith","project maneger","15000.30","2022-01-22"),
("alica johnson","ux designer","18000.50","2022-01-25");

select* from employees;

create table employee_audit(
audit_id int primary key auto_increment,
id int,
name varchar(100),
position varchar(100),
salary decimal (10,2),
hire_date date,
action_date timestamp default current_timestamp);

delimiter $$
create trigger after_employee_audit
after insert on employees
for each row
begin
insert into employee_audit(employee_id,name,position,salary,hire_date)
values(new.Employee_id,new.name,new.position,new.salary,new.hire_date);
end;$$
delimiter ;

insert into employees(name,position,salary,hire_date)
values("het","data naalyst",13000.90,"2022-10-19");

select * from employee_audit;
select * from employees;







	

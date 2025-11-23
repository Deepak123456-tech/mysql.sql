use it_company;

show tables;

create table employee2(
emp_id int unsigned auto_increment,
Name varchar(40) NOT NULL,
Age tinyint unsigned not null,
Department varchar(20),
salary int unsigned not null,
primary key(emp_id),
check(age >18)
);

insert into employee2(name,age,department,salary)
values("azhu bahi",25,"IT",45000),
("manoj",23,"IT",35000),
("jivaa",32,"HR",55000),
("ram",45,"IT",65000),
("joshna",37,"HR",75000),
("ramu",24,"IT",85000),
("rocky",27,"HR",95000),
("rajesh",55,"IT",15000),
("dora",28,"HR",35000);

select * from employee2;

create table employee2_backup
select * from  employee2;


select * from employee2_backup;
 
create  table department_table
select emp_id,department from employee2;

select * from department_table;

create  table it_table
select * from employee2
where department='it';

select  * from it_table;


create table employee2_table
select * from employee2
where 1=0;

select * from employee2;

select * from employee2;
update employee2 set salary=salary+1000
where emp_id=4;

select * from employee2
where department='it';

update employee2 set salary=salary+1000
where emp_id=4;

select * from employee2;



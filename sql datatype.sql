use it_company;

create table employee(
emp_id int auto_increment,
Name varchar(40) NOT NULL,
Age tinyint,
Department varchar(20),
salary int unsigned not null,
gender enum("Male","female","other"),
location varchar(25) default "india",
primary key(emp_id),
check(age >18)
);

desc employee;

insert into employee(name,age,department,salary,gender,location)
values("azhu bahi",25,"IT",45000,"male","USA"),
("manoj",23,"development",50000,"male",default),
("jivaa",22,"HR",45000,"female",default);

select * from employee;

insert into employee(name,age,department,salary,gender,location)
values(" ",25,"IT",45000,"male","pakistan");

insert into employee(name,age,department,salary,gender,location)
values(null,25,"IT",45000,"male","pakistan");

insert into employee(name,age,department,salary,gender,location)
values("vinodh",16,"IT",45000,"male","pakistan");

insert into employee(name,age,department,salary,gender,location)
values("vinodh",25,null,45000,"male","uk");

select * from employee;

insert into employee(name,age,department,salary,gender,location)
values("sirisha",25,"sales",-55000,"female","india");

insert into employee(name,age,department,salary,gender,location)
values("sirisha",25,"sales",55000,"f","india");

insert into employee(name,age,department,salary,gender,location)
values("sirisha",25,"sales",55000,"female","india");

select * from employee;

insert into employee(name,age,department,salary,gender,location)
values("manohar",null,"sales",-55000,"female","india");

select * from employee;

alter table employee add branch  varchar(30);

alter table employee add education  varchar(30) default "btech";

select * from employee;

alter table employee drop column branch;

select * from employee;





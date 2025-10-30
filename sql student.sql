create database college;

use college;


create table student(
id int auto_increment,
Name varchar(40) NOT NULL,
Age tinyint unsigned,
gender enum("Male","female"),
location varchar(25) default "india",
percentage tinyint unsigned,
primary key(id),
check(age >5)
);
 
 insert into student(name,gender,age,location,percentage)
 values("balaji","male",23 ,"prakasam",99),
 ("thanishq","male",25,default,95);

select * from student;

insert into student values(30,null,23,"male",90,"usa");

insert into student values(30,"sirirsha",23,"female",90,"usa");


select * from student;

insert into student values(30,"geethu",23,"female",90,"usa");

select * from student;

insert into student values(5,"geethu",-23,"female",90,"usa");

insert into student values(5,"geethu",3,"female",90,"usa");

alter table student modify percentage float(2);

describe student;

alter table student add class tinyint not null default 8;

select * from student;

insert into student ()




 
 


 
 
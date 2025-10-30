use it_company;

create table employee1(
emp_id int unsigned auto_increment,
Name varchar(40) NOT NULL,
Age tinyint unsigned not null,
Department varchar(20),
salary int unsigned not null,
primary key(emp_id),
check(age >18)
);

insert into employee1(name,age,department,salary)
values("azhu bahi",25,"IT",45000),
("manoj",23,"IT",35000),
("jivaa",32,"HR",55000),
("ram",45,"IT",65000),
("joshna",37,"HR",75000),
("ramu",24,"IT",85000),
("rocky",27,"HR",95000),
("rajesh",55,"IT",15000),
("dora",28,"HR",35000);

select * from employee1;

select name,department from employee1
where  salary>40000;
select * from employee1;
select department,count(*) from employee1
group by department;

select age,count(*) from employee1
group by age
having age>10;

SELECT * FROM employee1
ORDER BY age;

SELECT * FROM employee1
ORDER BY age desc;

SELECT * FROM employee1
ORDER BY age asc; 
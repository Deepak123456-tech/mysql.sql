CREATE DATABASE IT_Company;

CREATE DATABASE IF NOT EXISTS IT_Company;

CREATE DATABASE IF NOT EXISTS NON_IT_Company;

USE IT_Company;

CREATE TABLE empolyees(
emp_id int,
Name char(30),
Age int
);

select * from empolyees;

describe empolyees;

alter table empolyees add column salary int;
describe empolyees;

alter table empolyees add  salary2 int;
alter table empolyees drop column salary;


rename table empolyees to empolyees_info;



alter table empolyees_info
rename column name to emp_name;

describe empolyees_info;

alter table empolyees_info modify emp_name varchar(50);
 
 drop database if exists non_it_company;
 describe employees_info
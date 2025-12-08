create database views;

use views;

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO Department (DeptID, DeptName, Location) VALUES
(101, 'Human Resources', 'New York'),
(102, 'Finance', 'Chicago'),
(103, 'IT', 'San Francisco'),
(104, 'Marketing', 'Boston');


CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Age INT,
    Salary DECIMAL(10,2),
    DeptID INT,
    JoinDate DATE,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

INSERT INTO Employee (EmpID, EmpName, Age, Salary, DeptID, JoinDate) VALUES
(1, 'John Doe', 29, 55000, 101, '2020-01-15'),
(2, 'Sarah Lee', 34, 68000, 102, '2019-09-30'),
(3, 'Mike Ross', 41, 82000, 103, '2018-03-12'),
(4, 'Emma Stone', 27, 48000, 104, '2021-07-22'),
(5, 'Kevin Hart', 31, 60000, 103, '2020-11-01'),
(6, 'Olivia King', 38, 75000, 102, '2017-05-10'),
(7, 'Liam Smith', 25, 45000, 101, '2022-02-14'),
(8, 'Ava Brown', 30, 70000, 104, '2020-08-05'),
(9, 'David Park', 44, 92000, 103, '2016-12-19'),
(10, 'Nora Green', 33, 65000, 101, '2021-04-03');

select * from department;
select * from employee;

-- syntax for create view: create view view_name as select column_name from table_name where condition
-- creating employee__info view

create view employee_info as 
select empid,empname,deptid from employee;

-- check view data
select * from employee_info;
INSERT INTO Employee (EmpID, EmpName, Age, Salary, DeptID, JoinDate) VALUES
(11, 'srinu', 29, 55000, 101, '2020-01-15');

-- select employee_info data

select * from employee_info;

-- create one view is higher_salary_employee and whoes salary is more than 50000
create view higher_salary_employee as 
select empid,empname,deptid from employee
where salary>50000;

-- select  higher_salary_employee
select * from higher_salary_employee; 

-- create view employee_dept from employees and department tables
select e.empid,e.empname,d.deptname,d.location from employee e
left join department d 
on e.deptid=d.deptid;

-- create view
create view employee_dept as
select e.empid,e.empname,d.deptname,d.location from employee e
left join department d 
on e.deptid=d.deptid;

-- select data from employee_dept view
select * from employee_dept;

-- altering view 
alter view employee_dept as 
select e.empid,e.empname,d.deptname,d.location,e.joindate from employee e
left join department d 
on e.deptid=d.deptid;

-- select data from employee_dept view
select * from employee_dept;

-- update deptname as it for empid 4
update employee_dept set deptname = 'IT'
where empid=4;

-- drop view
-- sytax drop view view_name
drop view higher_salary_employee;

select * from employee_dept
where location ='new york';





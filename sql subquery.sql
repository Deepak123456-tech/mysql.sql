create database subquery;

use subquery;

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


select * from employee;
select * from department;


select avg(salary) from employee;

select * from employee where salary >66000;

select * from employee where salary > (select avg(salary) from employee);

select max(salary) from employee;

select * from employee
where salary=(select  max(salary) from employee);

select * from employee where deptid= (select deptid from employee where empname='David Park');






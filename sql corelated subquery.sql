use subquery;

CREATE TABLE Employee5 (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Age INT,
    Salary DECIMAL(10,2),
    DeptID INT,
    managerid int,
    JoinDate DATE,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

INSERT INTO Employee5 (EmpID, EmpName, Age, Salary, DeptID, JoinDate,managerid) VALUES
(1, 'John Doe', 29, 55000, 101, '2020-01-15',1),
(2, 'Sarah Lee', 34, 68000, 102, '2019-09-30',1),
(3, 'Mike Ross', 41, 82000, 103, '2018-03-12',1),
(4, 'Emma Stone', 27, 48000, 104, '2021-07-22',4),
(5, 'Kevin Hart', 31, 60000, 103, '2020-11-01',4),
(6, 'Olivia King', 38, 75000, 102, '2017-05-10',4),
(7, 'Liam Smith', 25, 45000, 101, '2022-02-14',4),
(8, 'Ava Brown', 30, 70000, 104, '2020-08-05',9),
(9, 'David Park', 44, 92000, 103, '2016-12-19',9),
(10, 'Nora Green', 33, 65000, 101, '2021-04-03',9);

select e1.empid,e1.empname,e1.salary,e1.managerid from employee5 e1
where  e1.salary >(select e2.salary from employee5 e2 where e2.empid=e1.managerid);






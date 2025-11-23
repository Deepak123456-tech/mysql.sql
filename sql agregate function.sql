use datasets;

select * from employees;

-- find maximum salary fromemployees table as max_salary
select max(salary) from employees as max_salary;

-- find all employee records those who are have morethan average salary
select * from employees where salary>( select avg(salary) from employees);
-- find all minimum salary from employees
select min(salary) from employees ;
-- count the total employees under the department id 50
select count(*) from employees where DEPARTMENT_ID =50;

-- find the total salaries under the manager id 101
select sum(salary) from employees where manager_id=101;
-- find the total salaries minimum salary,and maxminum salary under the department id 50
select count(*)as total_employees_under_id_50,
sum(salary) as total_salary , min(salary) as min_salary ,max(salary) as max_salary
from employees where DEPARTMENT_ID=50;

-- find the total salaries  under each department
select department_id,sum(salary) as total_salary from employees group by DEPARTMENT_ID;
-- find the  total empployees under each department
select department_id,sum(employee_id) as total_employees from employees group by department_id;
-- find the departements which have total salary more than 30000
select department_id,sum(salary) as total_salary from employees group by department_id having sum(salary) >30000;
-- find records count as per the manager_id and department_id
select manager_id,department_id,count(*)  as employee_count from employees group by manager_id,department_id;
-- count the total employees,salary as per the hire month

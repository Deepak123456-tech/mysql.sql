use datasets;

select curtime(),current_time();
select curdate(),current_date();
select curdate(),date_format(current_date(),"%d:%M:%y");
select now(),current_timestamp();

-- date and time extarction
select year('2035-12-31'),month(current_date()),day(curdate());
select dayname(curdate()),dayofmonth(curdate()),dayofweek(curdate());
select week(curdate()),weekofyear(curdate()),weekday(curdate());

 
 -- date functions related quaries
 -- for all records hiredata as follows 01/10/25
-- return all records count as per the  hiredate`s day 
-- return all records  max salary as per the hiredate`s month and sort by salary and month
-- extand the department 10 employees hiredate to 10 days
-- extand the managerid 101 employees hiredate to 35 days
select * from employees;
select hire_date,date_format(str_to_date(hire_date,"%d-%b-%y"),"%d/%b/%y") from employees; 

select count(*) as hiredate_in_12_13_14 from employees where day(hire_date) in (12,13,14);




 
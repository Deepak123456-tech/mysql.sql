use datasets;desc employees;
select * from employees;
select employee_id,concat(first_name," ",last_name) as name from employees;
-- return all records full name as initial name first letter and last_name
select concat(substring(last_name,1,1),".",first_name) as initial_name from  employees;
-- create email as full_name followed by@gmail.commit for department id are 10,20,50,100
update employees
set email= concat(first_name,last_name,@gmail.com)	

where employee_id in (10,20,50,100);
select * from employees;

-- sort the records after getting the full_name 
select employee_id,concat(first_name," ",last_name) as full_name from employees
order by full_name;
-- remove the "." mobile number
SET sql_safe_updates=0;
update employees 
set phone_number=replace(phone_number,".","");
-- find all records whose first nmae or last name as email and sort by full name and email

-- return all records first_name padded with 10 characters withn pad_string as "*"
select lpad(first_name,10,"") from employees;
--  return valid maoblie no.or not for all records
select * from employees;
select *,if(length(phone_number)=10,"valid","invalid") from employees;
 
 
 
 






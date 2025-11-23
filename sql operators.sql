create database unversity;

use unversity;

create table ece_students(
stu_id int auto_increment,
name varchar(50) unique,
age tinyint unsigned,
s1_marks tinyint  not null,
s2_marks tinyint  not null,
s3_marks tinyint  not null,
primary key(stu_id)
);

describe ece_students;

insert into ece_students(name,age,s1_marks,s2_marks,s3_marks)
values("rocky",21,95,96,97),
("ramu",22,85,86,87),
("raju",23,75,86,87);

-- select all records

select * from ece_students;

-- create one varaible

set @bonus_marks=5;

-- add bomus marks to s1_marks
set sql_safe_updates = 0;
update ece_students set s1_marks = s1_marks + @bonus_marks;

select  * from ece_students;
alter table ece_students modify s1_marks tinyint check (s1_marks<101);

select * from ece_students;

alter table ece_students add percentage float(2) generated always as (((s1_marks +s2_marks+s3_marks)/3)*100);


select * from ece_students;


-- comparision operators
-- find all records where age= 19
-- find all records where s1_marks lesssthan 85
-- find all records where percentage morethan 75
-- find all records where  age not is equal to 20
-- find all records where  percentage morethan  or  equal to 75
-- find all records where  percentage 	lessthan or  equal to 75

select * from  ece_students where age = 19;
select * from ece_students where s1_marks < 85;
select * from ece_students where percentage >75;
select * from ece_students where age !=20;
select * from ece_students where percentage >=75;
select * from ece_students where percentage <=75;

-- logical operators
-- find all records where s1_marks morethan 65 and percentage  more than 75
-- find all rtecods either s1_marks or s2_marks morethan 85 and sort by name by asc
select * from ece_students where s1_marks > 65 and percentage > 75;
select * from ece_students where (s1_marks or s2_marks) >85 order by name ;
-- bitwise operators:&,!,^,~,<<,>>
select 20 & 1 as bitwise_and,
        20 | 1 as bitwise_or,
        20 ^ 1 as bitwise_xor,
        ~ 10 as bitwise_com,
        10 << 3 leftshit,
        10 >> 2 rightshift;
        
select 10 & 10 as bitwise_and,
        10 | 11 as bitwise_or,
        10 ^ 1 as bitwise_xor,
        ~ 2 as bitwise_com,
        10 << 3 leftshit,
        10 >> 2 rightshift;
        
-- string operators:like,rlike
-- % it select multiple characters
-- _ it exactly one character
-- select records where name not ends with 'i'
select * from ece_students where name not like '%i';

select * from ece_students where name like '___u';

-- select reords where  name has a
select * from ece_students where name like '_a%';
 -- select reords where  name has s
select * from ece_students where name like '%s%';
-- select reords where  name starts with 's' or 'r'
select * from ece_students where name like 's%' or name like 'r%';

select * from ece_students where name rlike '^[rs]+';
 
select * from ece_students where name rlike '^[rs]a+';

select * from ece_students where name rlike '^[rs][a]';
-- return all records  whee name length is 4
select * from ece_students where name '^[a-z](4)$'; 
-- return all records  whee name length is (4-6)
select * from ece_students where name like ;
-- return all records  whee name ends a using rlike
select * from ece_students where name rlike 'a$';

-- return all records  whee name ends i using rlike
select * from ece_students where name rlike 'i$';

-- return all records  whee name ends a using rlike
select * from ece_students where name rlike '^s[a-z]+a$';

-- return all records  whee name ends a using rlike
select * from ece_students where name rlike '[s]';

insert into ece_students(name,age,s1_marks,s2_marks,s3_marks)
values("ravii",19,95,96,97),
("shasi123",19,85,86,87);

-- return all records if name contains any digits
select * from  ece_students where name rlike '[0-9]*';

select * from  ece_students where name rlike '[0-9]';

select * from  ece_students where name rlike '[0-9]$';





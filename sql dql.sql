create database datasets;

use datasets;
select * from tip;
ALTER TABLE tip
rename column sex  to gender;

desc tip;

select tip,gender,smoker from tip;
select * from tip where size=2;
select * from tip where gender ='male';
select * from tip where gender ='male' and size in (2,3,4);
select * from tip where gender ='female'and total_bill > 10;
select * from tip where (day = 'sat' and size = 2) or (day ='sun' and size =3);
select max(total_bill),min(total_bill),avg(total_bill) from tip where size in (2,3);





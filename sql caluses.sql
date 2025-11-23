use datasets;
select * from tip;

select gender,count(*) from tip group by gender;

select gender from tip group by  gender;

select gender,count(*) as "total records",
 sum(total_bill) as "total bill",
 avg(total_bill) as "avg bill",
 min(total_bill) as "min bill",
 max(total_bill) as "max bill"
 from tip
 group by gender;

select size,count(*) as "total records",
 sum(total_bill) as "total bill",
 avg(total_bill) as "avg bill",
 min(total_bill) as "min bill",
 max(total_bill) as "max bill"
 from tip
 group by size;
 
 select size,count(*) as "total records",
 sum(total_bill) as "total bill",
 avg(total_bill) as "avg bill",
 min(total_bill) as "min bill",
 max(total_bill) as "max bill"
 from tip
 group by size
 order by size;
 
 select size,count(*) as "total records",
 sum(total_bill) as "total bill",
 avg(total_bill) as "avg bill",
 min(total_bill) as "min bill",
 max(total_bill) as "max bill"
 from tip
 group by size
 order by size desc;
 
 select size,sum(total_bill) as "total bill" from tip where time="dinner" group by size;
 
 select size,sum(total_bill) as "total bill" from tip where time="dinner" group by size order by "total bill" desc;
 
 select size,sum(total_bill) as "total bill" from tip where time in ('dinner','lunch')group by gender order by "average bill" desc;



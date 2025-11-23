use  datasets;

show tables;


select * from tip;
-- return all records total spend in resutarant with upper bound value 
select ceil( total_bill + tip) as total_spend from tip;

-- return all records total bill 2 percision points
select round(total_bill,2) as total_bill from tip;

-- return all records remove decimal values for total_bill and tip 
select round(total_bill) ,truncate(tip,0) from tip where size in (2,3);

select conv(11,10,2);





 

use bank1;
create  table accounts1(
account  int not null,
username varchar(40) not null,
amount decimal(10,2) default 0,
primary key(account)
);

insert into accounts1(account,username,amount)
values(123,'siva',7000),
('124','babu','4000'),
('125','srinu','30000');


-- withdraw money  5000 from 123
start transaction;
update accounts1 set amount=amount-5000
where account =123 and amount>=5000;
commit;

select * from accounts1;



start transaction;
update accounts1 set amount=amount-5000
where account =123 and amount>=5000;
select * from accounts1;
rollback;
commit;

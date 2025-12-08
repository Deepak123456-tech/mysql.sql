use bank1;

delimiter //
create procedure user_details()
begin
     select * from accounts;
end //
delimiter ;

call user_details();
call user_details();

	
delimiter //
create procedure get_customer_details(in account_no int)
begin
     select * from accounts where account=account_no; 
end //
delimiter ;


call get_customer_details(123);


-- get amount stored_procedure
	
delimiter //
create procedure get_amount(in account_no int)
begin
     select account,amount from accounts where account=account_no; 
end //
delimiter ;


call get_amount(123);


-- check weather number is even or odd
DELIMITER //
create procedure even_or_odd(in num int)
begin
     if (num%2)=0 then select 'even';
     else select 'odd'; 
     end if;
end //
delimiter ;

call even_or_Odd(10);

-- counter implementation
delimiter //
create procedure counter(inout val int)
begin
     set val=val+1 
end // 
delimiter ;

-- calling counter procedure
set @val=10;
call counter(@val);
select @val;

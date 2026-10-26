use bank;

-- Display customer Table
 select * from customer;
 
 -- Display all customer FirstName in uppercase
 select firstname,upper(firstname) as new_name from customer;
 
-- Display all customer FirstName in lowercase.d
select lower(firstname) as i_s from customer;

-- Find the total number of characters in each customer FirstName
select firstname,length(firstname) as lengthofname from customer;

-- Display only the first three characters of customer FirstName 
select firstname,left(firstname,3) from customer;

-- Combine customer's FirstName with LastName.
select concat(firstname," ",lastname)  from customer;

-- trim
select upper("hello"), length("hello"),trim("    hello"),length(trim("hello"));

select firstname,right(firstname,3) from customer;

select firstname,mid(firstname,2,2) from customer;

select round(168.7) as roundvalue;

select ceil(165.4) as ceilvalue;

select floor(164.99) as floorvalue;

select abs(-2500) as absvalue;

select mod(25,4) as modvalue;

 -- Display customer Table
 select * from customer;
-- Display the current system date
select curdate();
-- Display the current system date and time.
select now();
 -- Display the Birth of year
 select dateofbirth,year(dateofbirth) from customer;
-- Display the Birth month
select dateofbirth,month(dateofbirth) from customer;
-- Calculate the number of days since BirthDate
select dateofbirth,datediff(curdate(),dateofbirth) from customer;
 -- Find the latest birth date.
 select max(dateofbirth) from customer;
-- Find the earliest birth date
select min(dateofbirth) from customer;

-- 1. Categorize customers as Adult or Young based on their birth year
select year(dateofbirth),
case
when year(dateofbirth)>1998 then "young"
when year(dateofbirth)<=1998 then "adult" end as type from  customer;
    
-- 2. Display 'Not Available' if a phone number is NULL
     select ifnull(phone,"not available") from customer;
-- 3. Compare two customer names
     select firstname,nulif("priya") from customer;
-- 4. Calculate the total balance maintained across all customer accounts.
     select sum(balance) from accounts; 
-- 5. Calculate the average balance maintained across all customer accounts to understand the typical amount held by customers.
      select avg(balance) from accounts;
-- 6. Identify the highest balance maintained in any customer account.
     select max(balance) from accounts;  
-- 7. Identify the lowest balance maintained in any customer account
   select min(balance) from accounts;
-- 8. Determine the total number of customer accounts available in the system.
     select count(accountid) from accounts;
-- 9. The bank wants to calculate the total account balance for each AccountType by grouping the records based on AccountType and identify which account type is attracting the highest total deposits from customers.
	select accounttype,sum(balance) from accounts
    group by accounttype;
-- 10. The bank management wants to identify only those account types whose total customer deposits exceed ₹25,000.
   select accounttype,sum(balance) from accounts
   group by accounttype
   having sum(balance)>25000;
use bank;

-- Retrieve only the following details from the Accounts table: AccountID, AccountType, and Balance.
select accountid,accounttype,balance
from accounts;

-- Retrieve Customers with Savings Accounts

-- Retrieve Accounts with Balance Greater Than 25000
select * from accounts where balance >25000;

-- Retrieve Transactions Between Specific Amounts 5000 -20000
select * from transactions where amount between 5000 and 20000;

-- Retrieve Records for Selected Customers 101,102,103,104
select * from customer where firstname like 'r%';

-- This displays customers whose names start with the letter R.
--  
-- 1. Retrieve all current account records
select * from accounts;

-- 2. Find accounts with balance less than 15000
select * from accounts where balance<15000;

-- 3. Display transactions between 1000 and 10000
select * from transactions where amount between 1000 and 10000;

-- 4. Retrieve customer records for CustomerID 104 and 105
select * from customer where customerID in (104,105);

-- 5. Display customers whose last name starts with S
 select * from customer where lastname  like "s%";
 
 
-- Display Customers in Alphabetical Order
select * from customer order by firstname asc;

-- Display Accounts with Highest Balance First
select * from accounts order by  balance desc; 


-- Retrieve Unique Account Types
select distinct (accounttype) from accounts;

-- Display Top 3 Highest Balance Accounts
select * from accounts order by balance desc limit 3;

-- Skip Initial Records While Viewing Transactions
select * from transactions limit 4 offset 1;
--  
-- 1. Display customers sorted by LastName
select * from customer order by lastname asc;


-- 2. Retrieve top 5 transactions with highest amount
select * from transactions order by amount desc limit 5; 

-- 3. Display unique transaction types
select distinct (accounttype) from (accounts);

-- 4. Skip the first 3 transaction records and display the next 4 records
select * from transactions order by amount desc limit 3;


-- Find Customers Without Phone Numbers
select * from customer where phone is not null;

-- Find Customers Having Email Addresses
select * from customer where email is not null ;
--  
-- 1. Find customers without email addresses
select * from customer where email is null or email= ' ';

-- 2. Display all accounts where balance information is available
  select * from accounts where balance is not null;
--  
-- Search Customers Whose First Name Starts with “A”
select * from customer where firstname like "a%"; 

-- Search Customers Whose Email Contains “gmail”
select * from customer where email like "%gmail%";

-- Search Customers Whose Last Name Ends with “kar”
select * from customer where lastname like "%kar";

 
-- 1. Display customers whose first name starts with R
select * from customer where firstname like "r%";

-- 2. Find customers whose email contains yahoo
select * from customer where email like "%yahoo%";

-- 3. Display customers whose last name starts with P
select * from customer where lastname like "%p";

-- 4. Search customers whose phone number ends with 99
select * from customer where phone like '%99';
   
--  
-- The finance team wants to review only Savings and Current account holders.
-- The audit department wants to investigate only Deposit and Withdrawal transactions.
-- The customer relationship team wants to review records for a specific set of customers. 101,102,105
--  
-- 1. Display accounts belonging to Salary and Savings account types
select * from accounts where accounttype in ('salary','saving');


-- 2. Retrieve transactions for Payment and Deposit categories
select * from transactions where amount in ('payment','deposite');

-- 3. Display customer records for CustomerID 103 and 104
select * from customer where customerid in (103,104);

-- 4. Retrieve selected account records using AccountID values
SELECT * FROM Accounts WHERE AccountID IN (101,102,103);
--  
-- Display Customers in Ascending Order of Last Name
-- Display Accounts with Highest Balance First
-- Display Transactions Sorted by Transaction Date
--  
-- 1. Display customers sorted by FirstName
SELECT * from customer order by firstname asc;

-- 2. Display accounts sorted by AccountType
select * from accounts order by accounttype asc;

-- 3. Display transactions sorted by Amount in descending order
select * from transactions order by amount desc;

-- 4. Display customers sorted by DateOfBirth
select * from customer order by dateofbirth asc;
--  
-- Display Only Top 5 Highest Balance Accounts
select * from accounts order by balance desc limit 5;

-- Display First 3 Customer Records
select * from customer limit 3;

-- Skip Initial Transaction Records 3 While Viewing Data record 2
select * from transactions limit 1000 offset 3;
--  
-- 1. Display top 3 transactions with highest amount
select * from transactions order by amount desc limit 3;

-- 2. Retrieve only 4 customer records
select * from customer limit 4;

-- 3. Skip first 2 account records and display next 3 records
select * from accounts limit 3 offset 2;

-- 4. Display top 5 latest transactions
select * from transactions order by transactiondate desc limit 5;
--
-- Display Savings Account Customers Sorted by Balance
select * from accounts where accounttype='saving' 
order by balance asc;

-- Categorize Accounts Using Balance

-- Balance >50000 then premium account
-- Balance >2500 then standar account
--  
-- · High Transaction
-- · Medium Transaction
-- · Low Transaction
-- based on transaction amount.
CREATE TABLE t1 (
  TransactionID   INT PRIMARY KEY,
  CustomerName    VARCHAR(50),
  City            VARCHAR(30),
  TransactionType VARCHAR(20),
  Amount          INT,
  Mode            VARCHAR(10),
  TransactionDate DATE,
  Remarks         VARCHAR(20)
);

INSERT INTO t1 VALUES
(1,  'Amit Sharma',    'Pune',      'Deposit',    15000, 'UPI',  '2026-01-05', 'Salary'),
(2,  'Priya Patil',    'Mumbai',    'Withdrawal',  3000, 'Cash', '2026-01-12', NULL),
(3,  'Rahul Verma',    'Delhi',     'Transfer',    8500, 'NEFT', '2026-01-18', 'Rent'),
(4,  'Sneha Kulkarni', 'Pune',      'Deposit',     4500, 'Card', '2026-02-02', NULL),
(5,  'Arjun Singh',    'Nagpur',    'Withdrawal', 12000, 'Cash', '2026-02-09', 'ATM'),
(6,  'Neha Joshi',     'Mumbai',    'Deposit',    25000, 'NEFT', '2026-02-15', 'Bonus'),
(7,  'Vikram Rao',     'Hyderabad', 'Transfer',    6000, 'UPI',  '2026-03-01', NULL),
(8,  'Anjali Desai',   'Pune',      'Withdrawal',  1500, 'Card', '2026-03-07', 'Shopping'),
(9,  'Rohan Mehta',    'Delhi',     'Deposit',     9800, 'UPI',  '2026-03-14', NULL),
(10, 'Kavita Nair',    'Kochi',     'Transfer',    2200, 'NEFT', '2026-03-21', 'Gift'),
(11, 'Sanjay Kapoor',  'Mumbai',    'Withdrawal',  7500, 'Cash', '2026-04-03', 'Rent'),
(12, 'Pooja Sharma',   'Nagpur',    'Deposit',    18000, 'Card', '2026-04-10', 'Salary'),
(13, 'Aakash Gupta',   'Pune',      'Transfer',    5000, 'UPI',  '2026-04-18', NULL),
(14, 'Meera Iyer',     'Chennai',   'Deposit',     3500, 'NEFT', '2026-05-02', 'Refund'),
(15, 'Aditya Bhosale', 'Pune',      'Deposit',    30000, 'UPI',  '2026-05-09', 'Bonus');

select * from t1;

select customername as c_name,city from t1
where city = "pune";

select * from t1
where transactiontype="withdrawal" and mode="cash";

select * from t1
where mode="upi" and amount>=1000
order by amount desc
limit 1;

select * from t1
where mode="upi" and amount>=1000
order by amount
limit 1 offset 4;

select transactiontype,max(amount) from t1
group by transactiontype
order by max(amount) desc
limit 1;

select * from t1
where customername like "A%";

select * from t1 where customername like "%e";

select * from t1 where customername like "%a%";

select * from t1 where mode like "u_i";

select * from t1 where mode like "---";

select * from t1 where customername regexp "^a";

select * from t1 where customername regexp "a$";

select * from t1 where mode regexp "upi";

select * from t1 where mode regexp "upi|cash";

-- 1
select * from t1 where transactiontype= "deposit";

-- 2
select transactionid,customername,amount from t1
where amount>1000;

-- 3
select * from t1 where city="pune";

-- 4
select * from t1 where TransactionType="deposit"
and amount>"10000";

-- 5
select * from t1 where TransactionType="withdrawal" and mode="cash";

-- 6
select * from t1 where city regexp "pune|mumbai";

-- 7
select * from t1 where city regexp "pune|mumbai";

-- 8
select * from t1 where mode not in ("upi");

-- 9
select * from t1 where amount between 5000 and 10000;

-- 10
select * from t1 where city not in ('pune','mumbai','delhi');

-- 11
select * from t1
where transactiondate>"2026-03-01"
and transactiondate<"2026-03-31";

-- 12
select * from t1 where customername like "a%";

-- 13
select * from t1 where customername like "%a";

-- 14
select * from t1 where customername like "_a%";

-- 15

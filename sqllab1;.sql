create database bank;

use bank;

create table accounts(
accountid int,
accounttype varchar(20),
balance float);

create table transction(
transctionid int,
transctiondate date,
account float,
transctiontype varchar(20));

select * from transction;

create table branch(
branchid int,
branchname varchar(100),
branchaddress varchar(200),
branchphone varchar(15));

select * from branch;

create table accountbranches(
assignmentdate date);

select * from accountbranches;

create table loans(
loanid int,
loanamount float,
intrestrate float,
stardate date,
enddate date);

select * from loans;

create table customer(
customerid int,
firstname varchar(50),
lastname varchar(50),
email varchar(100),
phone varchar(15));

select * from customer;

alter table customer add column dateofbirth date;

alter table customer modify phone varchar(20);







use bank;

select * from customer;

insert into customer value(101,"rahul","sharma","rahul.sharma@gmail.com","9999999999","1998-04-15");
insert into customer value(102,"priya","patil","priya@gmail.com","9988776655","2000-09-20");
insert into customer value(103,"amit","patel","amit.patel@gmail.com","9876500001","1995-06-18");
insert into customer value(104,"sneha","joshi","sneha.joshi@gmail.com","9876500002","1997-09-12");
insert into customer value(105,"rohan","kulkarni","rohan.k@gmail.com","9876500003","1993-11-25");

select * from loans;

insert into loans values(301,500000,8.50,"2025-01-15","2030-01-15",101);
alter table loans add column customerid int;
alter table loans add constraint fk_loans foreign key(customerid) references customer(customerid);
insert into loans values (302,300000,9.25,"2025-02-10","2028-02-10" ,102);
insert into loans value(303,750000,8.75,"2025-03-20","2032-03-20",103);
insert into loans value(304,250000,10,"2025-05-12","2029-04-05",104);
insert into loans value(305,1000000,7.95,"2025-05-12","2035-05-12",105);

select * from branch;

insert into branch value(1,"mumbai branch","Andhari,mumbai","0221111111");
insert into branch value(2,"pune branch","shivajinagar pune","0202222222");
insert into branch value(3,"nashik branch","collageroad nashik","0253222222");
insert into branch value (4,"nagpur branch","sitabuldi nagpur","0712333333");
insert into branch value(5,"navimumbai branch","vashi navimumbai",0224444444);

select * from accounts;

insert into accounts value(201,"saving",25000,101,default); 
alter table accounts add column branchid int;
alter table branch add constraint pk_b primary key(branchid);
alter table accounts add constraint fk_ac foreign key(branchid) references branch(branchid);

insert into  accounts value(202,"current",40000,102,default);
insert into accounts value(203,"saving",35000,103,default);
insert into accounts value(204,"current",60000,104,default);
insert into accounts value (205,"saving",45000,105,default);
alter table accounts add constraint acc_pk primary key(accountid);

select * from transactions;

create table transactions(
transactionid int,
transactiondate date,
amount float,
transactiontype varchar(20),
accountid int,
foreign key(accountid) references accounts(accountid));

insert into transactions value(301,"2025-05-10",5000,"deposite",201);
insert into transactions value(302,"2025-05-11",2500,"withdraw",202);
insert into transactions value(303,"2025-05-12",10000,"deposite",203);
insert into transactions value(304,"2025-05-13",3000,"withdraw",204);
insert into transactions value(305,"2025-05-14",7000,"deposite",205);

update customer set phone="8888888888" where customerid=101;

update customer set email="rahul.sharma@gmail.com" where customerid=101;

update accounts set balance=30000 where accountid=201;

select * from customer;

select * from accounts;

delete from transactions where transactionid=302;

delete from accounts where accountid=202;

select * from transactions;

select * from accounts;

select accountid,accounttype,balance from accounts;

select * from accounts where balance <15000;

select * from transactions where account>1000 and <10000;  

select * from loans
where intrestrate >9 
and loanamount>50000;

select * from branch 
where branchaddress="shivajinagar";

select * from accounts
where balance>25000 
and accounttype="saving";

select * from customer 
where dateofbirth>"1998-01-01";











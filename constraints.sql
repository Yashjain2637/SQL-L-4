-- constraints in sql ==> rules that we apply to limit the data in my table 
-- it is a set of rules that protact our data 
-- we use it to maintain the accuracy and reliablity of the data

-- types of contraints :- 
                         -- 1. not null
						 -- 2. unique 
                         -- 3. primary key 
                         -- 4. foriegn key 
                         -- 5. check 
						 -- 6. default

-- how to create a table :- 
-- structure (data degination language (ddl) )
-- create , alter , drop ,  truncate 
use regex;
create table test1(s_no int);
desc test1;

-- dml (insert , update,delete , merge ) 
insert into test1 values(10);
insert into test1(s_no) values(20);
insert into test1(s_no) values(null),(30);
select count(s_no),count(*) from test1;
select * from test1;
 
 
 -- not null :-
create table test2(s_no int not null , salary int);
insert into test2(s_no) values(20);
select * from test2;
insert into test2(s_no,salary) values(20,10000);
select * from test2;
insert into test2(s_no,salary) values(20,null);
select * from test2;
insert into test2(s_no,salary) values(null,6000); -- gives an error
insert into test2(salary) values(6000);  -- gives an error
select * from test2;


-- default :-
create table test3(s_no int not null default 80 , salary int);
insert into test3(salary) values(1000);
select * from test3;
insert into test3(s_no) values(100);
select * from test3;


-- unique :- 
create table test4(s_no int not null , salary int unique default 100);
insert into test4(s_no,salary) values(100,20000);
select * from test4;
insert into test4(s_no,salary) values(101,20000);  -- gives an error duplicate values 
select * from test4;
insert into test4(s_no) values(100);
select * from test4;
insert into test4(s_no) values(101); -- gives an error because default 100 already in table 
select * from test4;

-- also remember that even if we constrained the salary for unique , it can have null values
-- you might think it cant have multiple values but in truth it can have as many null values as we want
-- because null values dont take memory so the unique constraint doesnt affect them

insert into test4(s_no,salary) values(101,null);  -- we can gives multiple null values in salary 
select * from test4;
insert into test4(s_no,salary) values(102,null);
select * from  test4;


-- check :- 
create table test5( s_no int , salary int , check (s_no between 1 and 100) , check (salary in (1000,2000)) );
insert into test5(s_no,salary) values(4,1000);
select * from test5;
insert into test5(s_no,salary) values(90,1500); -- gives an error
select * from test5;
insert into test5(s_no,salary) values(150,1000); -- gives an error 
select * from test5;


-- this is fine and shows check constraint voilated 
-- but if we had 1000 lines and created multiple checks we wont know whic check constraint is voilated 
-- so its best to use allias for the check constraints


create table test6( s_no int , salary int , constraint regex_test6_s_no_check check (s_no between 1 and 100) , constraint regex_test6_salary_check check (salary in (1000,2000)) );
insert into test6(s_no,salary) values(4,1000);
select * from test6;
insert into test6(s_no,salary) values(150,1000); -- gives an error with the constraint name 
select * from test6;
insert into test6(s_no,salary) values(90,1500); -- gives an error with the constraint name 
select * from test6;


-- primary key :- 
create table test8 (s_no int primary key , salary int);
insert into test8(s_no,salary) values(4,1000);
select * from test8;
insert into test8(s_no,salary) values(null,12233); 
select * from test8;


-- foreign key :- 
create table customer1(cid int primary key, cname varchar(20));
insert into customer1 values(10,'yash'),(11,'gaurav');
select * from customer1;


create table order1(order_no int primary key , city varchar(20), cid int, foreign key (cid) references customer1(cid));
insert into order1 values(1007,'jaipur',10),(1008,'goa',11),(1009,'mumbai',10);
select * from order1;
insert into order1 values(10010,'j&k',25);  -- gives an error 
select * from order1;


-- view ==> view is a virtual table based on the result set of an sql 
-- views do not store the data physically but will access the data from the existing table
-- 1. it will make us our complex query easy 
-- 2. it will helping security
-- 3. if in view we have run subquery , joins , group by , having etc then we do not update the view 
--  . two typs of view 
-- 1. simple view   ==> we will change in 
-- 2. complex view  ==> we dont change 

use regex;
create table newactor as 
select actor_id , first_name from sakila.actor  where actor_id between 1 and 3;

select * from newactor;

create view actor_v as        -- create view here for the query 
select *, substr(first_name,2) from newactor;

select * from actor_v;


select * from newactor;  -- 3 rows 2 columns 
insert into newactor values(4,'riya');  -- 4 row table 
select * from newactor;

select * from actor_v;


-- simple view ==> any dml change will be visible on original table 
-- where view is creted 
create view actor_v2 as         
select * from newactor where actor_id in (1,2);

select * from newactor;
select * from actor_v2;

insert into newactor values(5,'sakshi');  -- 4 row

select * from newactor;
select * from actor_v2;

-- insert in view 
insert into actor_v2 values(6,'yash');
select * from newactor;
select * from actor_v2;





create table newpayment as 
select payment_id , amount from sakila.payment where payment_id between 1 and 7;

select * from newpayment;

create view payment_v as      -- complex view --> we do not update the view 
select count(*) from newpayment;

select * from payment_v;

insert into payment_v values(10); -- gives an error because this is complex view and we do not update the complex view 







-- dcl ==> data control language :- 
-- permission which user can accessbility 
-- authentication and autherization 

-- user => create => permission 


-- ddl statement 
create user regex identified by 'regex';

select * from mysql.user;

create database tushardb;
create table tushardb.actor1 as
select actor_id , first_name from sakila.actor where actor_id between 1 and 5;

create table tushardb.actor2 as
select actor_id , first_name from sakila.actor where actor_id between 3 and 7;

show grants for regex;

-- grant permisiion on database to username 
grant select on tushardb.actor2 to regex;

show grants for regex;

grant select on tushardb.* to regex;
show grants for regex;

grant all privileges on tushardb.actor1 to regex;

show grants for regex; 
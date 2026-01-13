-- DDL ==> data defination language 
-- create (table)
-- drop 
-- truncate 
-- alter 


-- create ==> 

create table raj123 (col int);

-- create a table using select (CTAS) :->

create table actor_cp as select first_name , last_name from sakila.actor;
select * from actor_cp;

-- drop :-> structure of table and data of table both are deleted

drop table actor_cp;
select * from actor_cp;   -- gives an error because actor_cp does not exists 


create table actor_cp as select first_name as fname , last_name as last from sakila.actor where actor_id between 10 and 14;
select * from actor_cp;


-- alter :-> 
       -- it is the most impotant one 
       -- it allows to make changes to an already existing table 
       -- whatever we want to do with the table structure it will be done with the help of alter 

alter table actor_cp add column (salary int);  -- alter table to add column in my table 
select * from actor_cp;
alter table actor_cp add constraint new_key primary key(fname);  -- primary key added
select * from actor_cp;
desc actor_cp;
alter table actor_cp drop column last; -- drop column 
select * from actor_cp;
alter table actor_cp rename column salary to newsalary;   -- change the column name 
select * from actor_cp;









-- DML statement :-> 
-- insert 
-- update  :- update tablename set col=value

SET SQL_SAFE_UPDATES = 0;
update actor_cp set newsalary=900;
select * from actor_cp;
update actor_cp set newsalary=888 where fname = 'UMA';
select * from actor_cp;

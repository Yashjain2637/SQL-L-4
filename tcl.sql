-- tcl ==> transaction control language ( which is use to handle logical statement )
-- transaction :- set of logical statement (changes permanent nhi hain ) 
-- update 

use regex;
create table actor_pc as select actor_id , first_name from sakila.actor where actor_id between 1 and 5;
select * from actor_pc;
insert into actor_pc values(6,'yash');

insert into actor_pc values(7,'tushar');
select * from actor_pc;

-- autocommit ==> enable 
set @@autocommit=0;
select @@autocommit;

insert into actor_pc values(8,'aakash');
select * from actor_pc;
commit;

insert into actor_pc values(9,'mitansh');
select * from actor_pc;
rollback;


-- 1. incase if u run any dml operation or u right down start transaction then the transaction will be started 
-- 2. if we use tcl command like commit and roll back then my transaction will be close 
-- 3. in case if i run any ddl / dcl operation then transaction will be close 


set @@autocommit=1;
select @@autocommit;

insert into actor_pc values(10,'gaurav');
select * from actor_pc;


start transaction;
insert into actor_pc values(11,'mahipal');
select * from actor_pc;
commit;

start transaction;
insert into actor_pc values(12,'pyyyyyy');
insert into actor_pc values(13,'ypppppp');
delete from actor_pc where actor_id in (2,3,5);
select * from actor_pc;
rollback;



start transaction;
insert into actor_pc values(14,'priya');
insert into actor_pc values(15,'yash');
savepoint db_actor_pc_svp1;
delete from actor_pc where actor_id in (2,3,5);
rollback to db_actor_pc_svp1;
select * from actor_pc;

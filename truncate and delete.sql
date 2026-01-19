use regex;
select * from actor_cp;
create table actor_co as select first_name as fname , last_name as last from sakila.actor where actor_id between 10 and 14;
select * from actor_co;
update actor_co set last='yash' where fname ='ZERO';
select * from actor_co;

-- delete :- 
-- delete is a dml statement which is used to data manipiulate
-- in delete we reveret (roll back) the data 

delete from actor_co;
select * from actor_co;


-- truncate :- delete the data 
-- truncate is a ddl statement in truncate we do not provide any conditions 
-- in truncate we can not reveret (roll back) the data 
-- in case if we execute any ddl statement then we can not roll back / undo it 
-- table is an object 
-- object :- object are the structure that can be used to store , manage or refer the data 
drop table actor_co;

create table actor_co as select first_name as fname , last_name as last from sakila.actor where actor_id between 10 and 14;
select * from actor_co;

truncate actor_co;
select * from actor_co;
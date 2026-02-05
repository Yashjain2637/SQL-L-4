-- indexex ==> they are use to optimize your sql query 

use sakila;
create table test100 as select actor_id , first_name from actor where actor_id between 1 and 10;

select * from test100;
desc test100;

explain select * from test100 where actor_id =5;   -- searching 10 row 

-- indexex :- 
-- they are use to optimize your sql query 
-- indexes is like a data structure which is used to access your data in a faster way 

-- two types of indexex :- 
-- 1. clustured index :- 

-- 2. non-clustured index :- 


-- now we make this column(axtor_id) to  clustured column 
-- primary key is a way to clustured indexing 
-- there is only one clustured index in a table 

insert into test100 values(14,'abc'),(13,'def'),(11,'yash'),(12,'aman');

select * from test100;

alter table test100 add primary key(actor_id);
desc test100;
select * from test100;
explain select * from test100 where actor_id =5;  -- searching 1 row 
explain select * from test100 where first_name = 'yash';  -- searching 14 row because we make clustured index on actor_id (column)


-- now we remove primary key 
alter table test100 drop primary key;
select * from test100;
desc test100;


explain select * from test100 where actor_id =5;   -- searching 14 rows 
explain select * from test100 where first_name = 'yash';   -- searching 14 rows 


-- create non-clustured index :- 

use sakila;
create table tes100 as select actor_id , first_name from actor where actor_id between 1 and 10;

select * from tes100;
desc tes100;
insert into tes100 values(14,'abc'),(13,'def'),(11,'yash'),(12,'aman');
select * from tes100;

create index indx1 on tes100(actor_id);
show index from tes100;

explain select * from tes100 where actor_id =5;   -- searching 1 row 
explain select * from tes100 where first_name = 'yash'; -- searching 14 row 

insert into tes100 values(12,'abc');
insert into tes100 values(15,'abc');
show index from tes100;
explain select * from tes100 where actor_id = 12;

-- create index on 2 columns 
drop index indx1 on tes100;
create index index_composite on tes100(actor_id , first_name);
show index from test100;

explain select * from tes100 where actor_id>4 and first_name = 'abc';

insert into tes100 values(16,'PENSKI'),(17,'JENPKSD'),(18,'JOHELY'),(19,'GRAPT'),(20,'MATPDV');

select * from tes100;

-- remove all indexes 
drop index index_composite on tes100;
show index from tes100;
show index from test100;

create index index_3_chr on tes100(first_name(3));
show index from tes100;

explain select * from tes100 where first_name = 'JOHNNY';
select * from tes100;

explain select * from tes100 where first_name like 'joh%';

explain select * from tes100 where first_name like 'abc%';
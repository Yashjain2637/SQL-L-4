select database();

-- tables
show tables;

--  to see the structure of table 
describe city;

-- to print data of a table 
select * from city;

-- to access column
select name, population from city;

-- column can be print in any order
select population, name, District from city;

select name , population, population+10 from city;

select name , population, countrycode,population from city;

-- query can be return in multiple line 
-- sql is not case sensitive 
select name , population,
 countrycode,
	population 
from
 city;
 
 -- alias (nick name)
 select * , population +12+12-4-5-12-4 as 'new population' from country;
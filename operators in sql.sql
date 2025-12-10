use world;

show tables;

describe city;

select * from city;

-- using the where clause we will filter the data 

select * from city where district = 'Zuid-Holland';

select * from city where countrycode ='ARG'; -- > filter the city for ARG country code 

-- 6 more than 6 lakh 
select * from city where population>600000;

select * from city where countrycode !='ARG'; -- > ( <> or != ) ==> not equals to 

select * from country;

select * from country where continent='North America';

select * from country where continent='Europe';

-- in/not in operator  --> in operator is use to filter the data in the specific set of values
-- getting countries in below continent
select * from country where continent in ('North America','Europe','Asia');

-- indepyear 
select name,continent,indepyear from country where indepyear in (1901,1960);

select name,continent,indepyear from country where indepyear not in (1901,1960);

-- range of values (between / not between) 
select name,continent,indepyear from country where indepyear between 1901 and 1960;

select name,continent,indepyear from country where indepyear not between 1901 and 1960;



-- get the code the country name and region where the region is not middle east 

select code,name ,region from country where region <> 'middle east';

-- get the name indepyear and population with a expected 10% increament of the population 

select name , indepyear,population*0.1+population as population from country ;

-- get all the columns of  the countries where lifeexpetency is 38.3 or 66.4 

select * from country where lifeExpectancy in (38.3 , 66.4);

-- get the name continet , populations and gnp columns from the table where the populaton is not from 5000 to 200000

select name, continent,population ,gnp from country where population not between 5000  and 200000;

-- like  operator --> 
-- like ==> search a pattern 
select name,continent from country where continent ='Asia';

-- to meet with pattern 
-- special character is called wildcard character
-- 1. % [we are finding zero or character] 
-- Asian  Aisa%
select name,continent from country where name like 'A%';  -- > first letter a ho 

select name,continent from country where name like '%A';  -- > last letter a ho 

select name,continent from country where name like '%A%'; -- > name me khi par bhi a ho 

select name,continent from country where name like '%Ad%'; -- > name me khi par bhi ad ho 

-- 2. _(underscore) ==> 1 character
-- _d
-- _ _ _ d

select name,continent from country where name like 'ir__';  -- > ir ke bad last 2 word kch bhi ho 4 word wala name print hoga jo ir se start honge


--  aggregate function ==> 
-- to perform the calculation on set of rows (multi line function )
-- 1. count
use world;
select * from country;
select count(indepyear) from country;
select count(*) from country;

select count(*),count(indepyear) from country;

select distinct continent,region from country;

select count(population),sum(population),avg(population) from country;
select * from country;

select count(distinct governmentform) from country;

select count(governmentform),count(distinct governmentform) from country where continent='asia';

select sum(population) from country where continent='africa';

select count(name), sum(population),count(distinct indepyear) from country where continent='africa';
 
-- que.1.  get the total countries the avg surface area the total population for the countries
-- which has got their indepyear from  year 1947 to 1998 they should be exclued 
 
  select count(name),avg(surfacearea),sum(population) from country where indepyear > 1947 and indepyear < 1998;
  
-- que.2. get the total number of country and the number of unique continents along with avg. populatiion and the total  
-- number of capitals for the countries starting with a or starting with d 

select count(name),count( distinct continent),avg(population), sum(capital) from country where name like 'a%' or name like 'd%';

select count(name) from country where continent='asia';

select count(name) from country where continent='africa';

select count(name) from country where continent='europe';

select continent,count(*) from country group by continent;

select indepyear,count(*) from country group by indepyear;

select continent,count(name),sum(population),avg(population), max(population),min(population),max(indepyear),min(indepyear)
 from country group by continent;

-- que.3. from the city table you have to find the total city,total district , unique district, total popultion from the 
-- city table 
select * from city;

select count(name),count(distinct district),sum(population) from city;

select countrycode , count(*),count(district), count(distinct district), sum(population) from city group by countrycode;





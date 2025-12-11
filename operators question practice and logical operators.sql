use world;
select * from country;

select name,continent from country where name like '%Ad%'; -- > name me khi par bhi ad ho 


-- get the name continet and region from the country where the continet is not same as Europe

select name,continent,region from country where continent <> 'Europe';

-- get the name continet and region from the country where   the second letter of a region is a 

select name,continent,region from country where region like '_a%';

-- get the name continet and region from the country where in the continet the last third character  is i

select name,continent,region from country where continent like '%i__';

-- get the name continet and region from the country where the continet should be minimum 5 character 

select name,continent,region from country where continent like '_____%';

-- get the name continet and region from the country where in the continent the second letter is c and second last character is i

select name,continent,region from country where continent like '_c%i_';

-- get the name continet and region from the country where at least two a should be there seperated with a character 

select name,continent,region from country where continent like '%a_a%';

--  logical operators :- 
-- and , or 

select name,continent from country where continent ='asia' or continent = 'africa';

select * from country where continent = 'asia' and region ='middle east';

select * from country where continent = 'africa' or region ='middle east';

select * from country where continent = 'africa' or indepyear ='1901';

select * from country where continent = 'africa' and indepyear ='1962';


select * from country;

select name,code,concat(name,' ',code) from country;

select * from country where concat(name,' ',code)='Albania ALB';


select name,code,concat(name,' ',code) from country where concat(name,' ',code)='Albania ALB';


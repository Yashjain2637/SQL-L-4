use world;

-- 2 table => data extraxt (join)

select * from city;

-- in this city table unique item is id and population and we consider id is unique because its too short numerical value 

-- id can be primary key in this city table 

describe city;

select count(id),count(distinct id),count(population),count(distinct population) from city;

-- in country table country code is primary key ==> code 
select * from country;


-- in city table city id is primary key ==> countrycode
select * from city;

select ct.name, ct.countrycode from city as ct; -- as ct it is alias we give name as nickname 

select cnty.code, cnty.name from country as cnty;

-- find out the city and thier respective country name 

select ct.name,ct.countrycode,cnty.code,cnty.name from city as ct join country as cnty 
where ct.countrycode=cnty.code;

-- you need to find city name and the population of the city along with the governmnent form in that city with the population 
-- from highest to the lowest

select ct.name,ct.population,cnty.governmentform from city as ct join country as cnty
where ct.countrycode=cnty.code order by ct.population desc;

-- you need to get the country name population and all the language spoken for each country 

select * from country; -- code is primary key 
select * from countrylanguage; -- countrycode is forgien key

select cnty.name , cnty.population,cl.countrycode,cl.language from country as cnty join countrylanguage as cl
where cnty.code = cl.countrycode;

use sakila;
select * from actor;  -- actor_id is primary key
select * from film_actor; -- actor_id is foriegn key 


-- get the actor id and the first name along with its film id 
select at.actor_id , at.first_name,fa.film_id from actor as at join film_actor as fa
where at.actor_id= fa.actor_id ;

-- use  actor , film_actor , film table actor name ,movie he worked on

select * from actor;  -- actor_id is primary key 
select * from film_actor; -- actor_id is foriegn key 
select * from film; -- film_id is primary key
select ac.first_name , f.title from actor as ac
join film_actor as fa join film as f
where ac.actor_id = fa.actor_id and fa.film_id = f.film_id;


use world;
show tables;

select name,population from world.country;

-- case ==>
/*
case population
	when population = 0 then 'very small population'
    when population = 8000 then 'population is 8000'


*/

select count(*),
case
	when population > 100000 then 'large population'
	when population >= 50000 then 'medium population'
	when population >= 8000 then 'small population'
	else 'very small population'
end as 'status' from world.country 
group by status;

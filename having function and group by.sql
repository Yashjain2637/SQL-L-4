-- group by ==> 
use world;
select region ,count(name),count(continent)from country group by region;

select region ,avg(population) from country group by region;

select * from city;

select district,count(name) as TotalCity from city group by district;

-- count cities which have a population more than 1 lakh 
-- where ( abse phle execute ) ==> group by ==> count()

select district,count(name) as TotalCity from city where population>100000 group by district;

select * from country;

select count(name) from country where continent ='asia' and indepyear>1950;

-- que. get total  country which got independence after 1950 in each continent 
select continent , count(name) from country where indepyear >1950 group by continent;

-- difference between where clause and having clause ==> 
-- where only filter the data which is exists in my table 
-- where clause is use to filter the data in my table 
-- having clause is use to filter the data in aggeregate column like sum , count , max etc.

select continent ,sum(population) from country  group by continent having sum(population)>30401150;

-- 
select continent ,sum(population)from country where lifeexpectancy>35.0 group by continent;

select * from country;
-- you need to find out the total country for each gvtmt form where the total number of country > 30
select governmentform, count(name) from country group by governmentform having count(name)>30;

-- you need to find out the total country for each gvtmt form where only for the countries 
-- having there capital > 30 and total population > 300000
select governmentform, count(name),sum(population) from country where capital>30
group by governmentform having sum(population)>300000;

-- 
select continent,region,count(name) from country group by continent, region;





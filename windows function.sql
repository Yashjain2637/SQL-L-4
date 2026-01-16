-- windows function :- 
          -- windows function is used to perform the calculation on the set of rows with refrence to current row 
          
-- windows function are three parts :- 
          -- 1. over :- 
				-- to apply the function over(set of rows) a wiondow 
		
use world;
select code , name , population from country;

select sum(population) from country;

select code , name ,continent, population,(select sum(population) from country) from country;
	-- but what if we also want another column showing the population of the related continent 
    -- you might think we can do this with corelated sub quary
    -- but the thing is that the corelated subquary can only be used to filter the data and not print it
	-- and lets not forget about the conditions 
    -- if we wanted to use the conditions or filters here , there would be a lot of problems
    -- so we use WINDOWS_FUNCTION
	-- we use OVER for this perticular case


select code , name ,continent, population,sum(population) over(), avg(population) over() from country;

-- 2. partition by :- 
            -- something like group by 
            -- which is used to divide the data into group and apply the logic on each group
            
            
select continent,sum(population) from country group by continent;

select code,name,continent,population,sum(population) over(partition by continent) from country;



-- 3.ORDER BY (with over):-
	-- SYANTAX :- over(order by column_name)
    -- it shows running sum / cummulative sum
    -- we order by population
    -- first few rows will have zero population and sum will also be zero
    -- then a country comes with 2000 population then the sum becomes 2000 and shows parallel
    -- then comes another one with 4000 population and some will show to be 6000
    -- but when the next group of countries come where 3 countries each have a population of 10k 
    -- then we get 36k as cummulative sum shown in front of all three and not 16,26,36
    -- so it performs calculations based on the groups

select code,name,continent,population,sum(population) over(order by population) from country;
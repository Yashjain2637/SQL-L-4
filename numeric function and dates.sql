-- numeric functions , dates
use world;
select lifeexpectancy,round(lifeexpectancy) from country;

select 83.62,round(83.687,2);

-- 456.23
select (456.23) , round(456.23,-1);

select (456.23) , round(456.23,-2);

select (456.23) , round(456.23,-3);

select (456.23) , round(556.23,-3);

select (456.23) , round(656.23,-2);

select (456.67) , round(456.68,1), truncate(456.67,1), mod(43,3);

select pow(2,3), ceil(3.0008) , floor(3.99999);

-- date 
-- inbuilt date ya date and time print krna 

select now(),curdate(),current_timestamp(),current_time(),current_date();

-- add date 
select now(),adddate(now(),2), adddate(now(),interval 3 month);

select now(),adddate(now(),-2), adddate(now(),interval -3 month);

select now(),subdate(now(),2),year(now());

select now(),extract(week from now());

select now(),date_format(now(),'month is %M');

select now(),date_format(now(),'month is %M & year is %y');

-- distinct ==> find duplicate 
select distinct continent from country;

select count(continent),count(distinct(continent)) from country;
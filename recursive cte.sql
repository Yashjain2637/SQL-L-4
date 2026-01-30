-- recursive cte 

-- set operator ==> used to combine two or more query 
-- 1. union --> combine results , remove duplicate 
-- 2. union all --> combine results , keeps duplicate 

select actor_id , first_name from sakila.actor where actor_id between 1 and 4 
union 
select actor_id , first_name from sakila.actor where actor_id between 3 and 5;

select actor_id , first_name from sakila.actor where actor_id between 1 and 4 
union all
select actor_id , first_name from sakila.actor where actor_id between 3 and 5;

with recursive cte as 
( select 10 as num        -- assinging values to this num column   ( starting point )
union all 
select num + 1 from cte      -- cte call karana
where num < 15)              -- terminating condition ( stop point)
select * from cte;



-- find employees hirecharcy ==>

CREATE TABLE employees (
    employeeid INT PRIMARY KEY,
    name VARCHAR(50),
    managerid INT
);


INSERT INTO employees (employeeid, name, managerid) VALUES
(1, 'Alice', NULL),      -- CEO
(2, 'Bob', 1),           -- Reports to Alice
(3, 'Charlie', 2),       -- Reports to Bob
(4, 'Diana', 2),         -- Reports to Bob
(5, 'Eve', 3);           -- Reports to Charlie

select * from employees;

with recursive cte as (
select employeeid , name , name as hierarchy_path from employees where managerid is null 
union all 
select e.employeeid , e.name , concat( e.name , '->' , cte.hierarchy_path) from cte  join employees as e on e.managerid = cte.employeeid
and e.employeeid<6
)
select * from cte;


with recursive cte as (
select employeeid , name , 1 as level from employees where managerid is null 
union all 
select e.employeeid , e.name , level+1 from cte  join employees as e on e.managerid = cte.employeeid
and e.employeeid<6
)
select * from cte;
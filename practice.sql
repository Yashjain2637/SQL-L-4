use sakila;
select * from customer;

select first_name , active,
	case 
		when active = 1 then 'Active customer'
        when active = 0 then 'Inactive customer'
	end
    from customer;
    
    
    
select * from film;

select title , length,
	case
		when length < 60 then 'Short'
        when length < 120 then 'Medium'
        else 'Long'
	end
    from film;
    
    

select rating , count(*) as total,
	case 
		when count(*) < 200 then 'Low count'
        when count(*) between 200 and 400 then 'Medium count'
        else 'High count'
        end 
        from film group by rating;
        
        
select * from payment;
select * from customer;

select c.customer_id , c.first_name , sum(amount) ,
	case
	when sum(amount) < 90 then 'Low spend'
    else 'High spend'
    end from customer as c join payment as p on 
    p.customer_id = c.customer_id group by c.customer_id , c.first_name;
    

-- find how many times each film has been rented 
select * from film;    -- film_id primary key 
select * from inventory;  -- inventory_id is pk , film_id  is fk
select * from rental;     -- rental_id is pk 

select f.title ,count(*) from film as f join inventory as i join rental as r on f.film_id = i.film_id and i.inventory_id = r.inventory_id group by f.title;


-- list pairs of customers who belong to the same store avoid duplicate and mirror pairs 
select * from customer;


-- find customers whose total payments is greater than the average total payment of all customers  
select * from customer;
select * from payment;

select c.customer_id , c.first_name , sum(p.amount) from customer as c join payment as p on c.customer_id = p.customer_id group by c.customer_id , c.first_name 
having sum(p.amount) >all (select avg(p.amount) from customer) ;


select * from film;    -- film_id primary key 
select * from inventory;  -- inventory_id is pk , film_id  is fk
select * from rental;     -- rental_id is pk 
-- find films whose rental count is greater than the average retals per film 
select f.film_id , f.title , count(*) from film as f join inventory as i join rental as r on f.film_id = i.film_id and i.inventory_id = r.inventory_id group by f.film_id,f.title
having count(*) > ( 

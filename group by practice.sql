use sakila;

select * from payment;

select customer_id,count(payment_id) from payment group by customer_id;

-- u need to find out the no. of transition for each customer where amount of the transition > 3

select customer_id,count(payment_id) from payment where amount>3 group by  customer_id;

-- u need to find to total no. of transition for each amount in the month of may 

select amount,count(*)from payment where month(payment_date)=5 group by amount;

-- you need to find out the max. amount spend the avg. amount spend and the total amount spend for each staff 

select staff_id,max(amount),sum(amount),avg(amount) from payment group by staff_id;

-- you need to find out the max. amount spend the avg. amount spend and the total amount spend for each staff only for the customer id 1,3,7,11
select staff_id,max(amount),sum(amount),avg(amount) from payment where customer_id in (1,3,7,11) group by staff_id;

-- find the total amount spend and the no. of customer who have done the payment in each month where the amount spend should be > 1 doller 

select month(payment_date),sum(amount),count(customer_id) from payment where amount>1 group by month(payment_date);

select month(payment_date),sum(amount),count(customer_id) from payment where amount>1 group by month(payment_date)
having count(customer_id)>300;

select year(payment_date),month(payment_date),count(customer_id) from payment group by year(payment_date),month(payment_date);
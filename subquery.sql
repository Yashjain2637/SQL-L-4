-- subquery ==> 
-- its a query within a query 
-- it is used to perform calculations based on related tables 
-- it is also used to perform calculations based on dynamic conditions

-- single row subquery ( subquery will return 1 row )

use sakila;
select * from payment;

select * from payment where amount=(select amount from payment where payment_id=5);

select * from payment where amount=(select amount from payment where payment_id=3);

-- all payment information where staff serving  payment_id = 8

select * from payment where staff_id=(select staff_id from payment where payment_id=8);

-- get the payment id amount and the payment date where the month of payment should be same as of payment id =20

select payment_date from payment where payment_id=20;
select payment_id,amount,payment_date from payment where month(payment_date)=(select month(payment_date) from payment where payment_id=20);

-- get the amount and the total number of payment done for each amount where the amount < amount of rental id = 1725

select amount from payment where rental_id=1725;
select amount , count(*) from payment where amount<(select amount from payment where rental_id=1725) group by amount;

select * from payment;

-- get the month and total amount spend from the table where the month > month of customer_id =1 with the payment_id=3

select month(payment_date) from payment where customer_id=1 and payment_id=3;

select month(payment_date),sum(amount) from payment where month(payment_date)>
(select month(payment_date) from payment where customer_id=1 and payment_id=3) group by month(payment_date);


-- multi row subquery (subquery returns multiple row ) --> in multi row subquery we can not use >,<,=,!= operators
-- in multi row subquery we used in,any,all operators 

select amount from payment where payment_id =2 or payment_id=3;
select * from payment where amount in (select amount from payment where payment_id =2 or payment_id=3);
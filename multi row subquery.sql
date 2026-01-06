use sakila;
select * from payment;
select amount from payment where payment_id =2 or payment_id=3;
select * from payment where amount in (select amount from payment where payment_id =2 or payment_id=3);


-- (=any) -->
select * from payment where amount =any (select amount from payment where payment_id =2 or payment_id=3);
select * from payment where amount >any (select amount from payment where payment_id =2 or payment_id=3);
select * from payment where amount >=any (select amount from payment where payment_id =2 or payment_id=3);
select * from payment where amount <any (select amount from payment where payment_id =2 or payment_id=3);
select * from payment where amount <=any (select amount from payment where payment_id =2 or payment_id=3);


-- all 
select * from payment where amount >all (select amount from payment where payment_id =2 or payment_id=3);
select * from payment where amount >=any (select amount from payment where payment_id =2 or payment_id=3);
select * from payment where amount <any (select amount from payment where payment_id =2 or payment_id=3);
select * from payment where amount <=any (select amount from payment where payment_id =2 or payment_id=3);
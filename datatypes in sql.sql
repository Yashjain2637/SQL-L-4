-- data types in sql :- 
-- 1. numeric ==> int , float , decimal 
--                tinyint , medium , big int , small int , int 
--                1 byte  , 3 byte , 8 byte  , 2 byte    , 4 byte
--  1byte => 8 bit (2**8) => 256 


-- int 
use regex;
create table test10(id tinyint);
insert into test10 values(1),(-128),(127);
select * from test10;
insert into test10 values(128);   -- gives an error ( out of range value)


create table test11(id tinyint unsigned);
insert into test11 values(129),(255);
select * from test11;



-- float :-
create table test12(price float);
insert into test12 values(9182.125) , (10.120489955);
select * from test12;


create table test13(price float , price2 double);
insert into test13 values(9182.125,9182.125) , (10.120489955,10.120489955);
select * from test13;


create table test14(price2 double(5,2));
insert into test14 values(98.1);
insert into test14 values(98.15);
insert into test14 values(4.11567);
insert into test14 values(195.11567);
insert into test14 values(1955.11567);   -- gives an error (out of range)
select * from test14;



-- varchar and char => 
-- varchar  is a datatype 
-- varchar --> in which we store string value or character value 
-- char --> character but of fix length of character 

create table test156(name char(10));
insert into test156 values('abc'),('defghi');
insert into test156 values('abcdesfhhur'); -- error (out of range) because we fix there are only 10 character
select * from test156;

-- As we store 0 to 255 charcter inside the char 
-- as we find the length of character we basically use char_length it counts how many character are stored in our char 
-- And length shows us that how much space occupied by the character.
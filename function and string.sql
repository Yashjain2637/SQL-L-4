-- select ==> data retrive/access
-- query ==> multiple line and in case sensitive 
-- where (filter) and or between in like 

-- functions ==> 
-- set of statement 
-- functions 

-- code reuseable

-- two type of functions ==>
-- 1. scaler function ==> row by row (result for each row)
-- 2. multi line function ==> multiple line pr apply and give 1 output 
-- scaler can apply ==> date,int,float,string 

-- string function 
-- case conversion 
use world;

select name,continent,upper(name),lower(name) from country;

-- 1. concat is a first function of string 

select name,continent,concat(continent,'-',code) from country;

select name,continent,concat(continent,'-',code,'-','regex') from country;

-- concat_ws ==> concat with a seperater

select name,continent, concat_ws('-',continent,code) from country;

select name,continent, concat_ws('-',continent,code,'regex') from country;

-- 2. substr(substring) ==> character extract based on the position 

select name,substr(name,1) from country;

select name,substr(name,1) ,substr(name,1,3) from country;

select name,substr(name,1) ,substr(name,2,5) from country;

select name,substr(name,1) ,substr(name,-5) from country;

select name,substr(name,1) ,substr(name,-5,3) from country;

select name,continent from country where substr(name,1,1)=substr(continent,1,1);

select name,continent from country where substr(name,1,3)='alg';

-- 3. instr ==> search position of charecter 

select name , instr(name,'e') from country;

-- 4. length ==> (tell me kitne bytes use huya hain ) 
-- 5. char_length ==> total charecter btata hain 

select char_length('yash');

select name,char_length(name) from country; 

-- trim ==> extra white space ya fir charecter ko remove krna 
-- ltrim ==> only left se space ko htayega 
-- rtrim ==> only right se space ko htayega 

select '       yash      ';
select char_length('       yash      ');

select trim('       yash      ');
select char_length(trim('       yash      '));

select trim(both 'g' from '       yaggshgggggg');

select name,trim(both 'a' from name) from country;

select name,trim(both 'A' from name) from country;


-- lpad and rpad ==> to creat data of fixed character 

select name,population,lpad(population,9,'0') from country;

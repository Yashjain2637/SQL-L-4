-- PlSQL
	-- it stands for procedural language SQL
    -- it is an extension of SQL where we combine the capablities of SQL and programing langueage together 
-- why we use plSQL :- 
    -- 1. Reusability :- we use it because it allows logic reuse
    -- 2. it allows exceptional handelling
    -- 3. it allows conditions,loops,variables,functions,etc


-- it has 3 blocks
    -- Declare block :- 
        -- we define any curser,variables,exceptions,procedures,etc then we use declare block 
        -- not compulsary
    -- begin/end block :- 
        -- we call this executive/executable block
        -- this is compulsory 
    -- exception block :- 
        -- here we handle the errors
        -- this is not compulsory


-- SET SAVEROUTPUT ON :- 
-- BEGIN
--     dbms_output.PUT_LINE('hello world');
--     DBMS_OUTPUT.PUT_LINE('regex software');
-- end;


-- JOIN TWO STRIING :- 
-- BEGIN
--     dbms_output.PUT_LINE('hello world' || '-' || 'yash');
--     DBMS_OUTPUT.PUT_LINE('regex software');
-- end;


-- CREATING VARIABLE :- 
-- declare
--     var int:=0;
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE('hello world' || '-' || var);
--     DBMS_OUTPUT.PUT_LINE('regex software');
-- end;


-- CONDITIONS :- 
-- declare
--     var int:=10;
-- BEGIN
--     var:=12;   -- value changed 
--     if(mod(var,2)=0) then 
--         DBMS_OUTPUT.PUT_LINE('hello world' || '-' || var);
--     else
--         dbms_output.PUT_LINE('regex software');
--     end if;
-- end;



-- LOOPS :- 
-- 1. WHILE LOOP :- 

-- declare 
--     var int:=0;
-- BEGIN
--     while var <= 3 LOOP
--         DBMS_OUTPUT.PUT_LINE('counter is :' || var);
--         var := var + 1;  -- manual increment needed
--     END LOOP;
-- end;



-- 2. BASIC LOOP :- 

-- DECLARE
--     var int := 10;
-- begin 
--     loop
--         DBMS_OUTPUT.PUT_LINE( 'num = ' || var );
--         var := var + 1; 
--         exit when var >20;
--     end loop;
-- end;



-- 3. FOR LOOP :- 

-- BEGIN
--     FOR i IN 1..5 LOOP
--         DBMS_OUTPUT.PUT_LINE(i);
--     END LOOP;
-- END;



-- CURSOR :- 
-- a plsql cursor is a control structure used to process the result set of a sql query one row at a time 
-- this is a pointer which provides the control over the result of sql query 

-- declare
--     v_name varchar(20);
-- begin

-- select first_name into v_name from hr.EMPLOYEES where employee_id = 101;
-- dbms_output.PUT_LINE(v_name);

-- end;


-- declare
--     v_name varchar(20);
--     v_salary hr.employees.salary%type;
-- begin

-- select first_name into v_name from hr.EMPLOYEES where employee_id = 101;
-- select salary into v_salary from hr.EMPLOYEES where employee_id = 101;
-- dbms_output.PUT_LINE(v_name || '-' || v_salary);

-- end;


-- declare
--     v_name varchar(20);
--     v_salary hr.employees.salary%type;
-- begin

-- select first_name,salary into v_name,v_salary from hr.EMPLOYEES where employee_id = 101;
-- dbms_output.PUT_LINE(v_name || '-' || v_salary);

-- end;




-- %ROWTYPE =>
-- it is a attribute which is use to create a variable of record type 
-- in this record type we store / create a column with its datatype 
-- it is kind of like dictionary (key and value)
-- it can store one row at a time

-- RECORD DATATYPE :-record datatype is a data structure which is used to store different datatypes together


-- declare
--     v_rec hr.employees%rowtype;
-- BEGIN

-- select * into v_rec from hr.EMPLOYEES where EMPLOYEE_ID=102;
-- DBMS_OUTPUT.PUT_LINE(v_rec.first_name || '-' || v_rec.hire_date);

-- end;
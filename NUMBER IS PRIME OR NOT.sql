-- CHECK NUMBER IS PRIME OR NOT 
-- USING WHILE LOOP

-- DECLARE
--     n int := 89;
--     i int := 1;
--     cnt int := 0;
-- BEGIN
--     while i <= n LOOP
--         if (mod(n,i)=0) THEN
--             cnt := cnt+1;
--         end if;
--         i := i+1;
--     END LOOP;
--     if (cnt = 2) then
--         DBMS_OUTPUT.PUT_LINE('IT IS PRIME NUMBER');
--     else 
--         DBMS_OUTPUT.PUT_LINE('IT IS NOT PRIME NUMBER');
--     end if;
-- end;




-- USING FOR LOOP 

-- DECLARE
--     n int := 97;
--     cnt int := 0;
-- BEGIN
--     for i in 1..n LOOP
--         if (mod(n,i)=0) THEN
--             cnt := cnt+1;
--         end if;
--     end LOOP;
--     if (cnt = 2) then
--         DBMS_OUTPUT.PUT_LINE('IT IS PRIME NUMBER');
--     else 
--         DBMS_OUTPUT.PUT_LINE('IT IS NOT PRIME NUMBER');
--     end if;
-- end;
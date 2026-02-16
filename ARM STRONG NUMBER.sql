-- CHECK NUMBER IS ARMSTRONG OR NOT 

-- DECLARE
--     num int := 92727;
--     n_sum int := 0;
--     temp int := num;
--     digit int;
--     temp2 int := num;
--     cnt int := 0;

-- BEGIN
--     while temp2 > 0 LOOP
--         cnt := cnt+1;
--         temp2 := trunc(temp2/10);
--     END LOOP;

--     while temp > 0 LOOP
--         digit := mod(temp,10);
--         n_sum := n_sum + power(digit,cnt);
--         temp := trunc(temp/10);
--     END LOOP;

--     if (n_sum = num) then
--         dbms_output.put_line('it is armstrong number ');
--     else 
--         dbms_output.put_line('it is not armstrong number');
--     end if;
-- end;

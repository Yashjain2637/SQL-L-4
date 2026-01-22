select * from employees;
select * from sales;
-- Q1) Add a row number for employees sorted by salary (highest first)
select * , row_number() over(order by salary desc) from employees;

-- Q2) Rank employees by salary (ties share rank)
select * , rank() over(order by salary) from employees;

-- Q3) Dense rank employees by salary (no gaps in rank numbers)
select * , dense_rank() over(order by salary) from employees;

-- Q4) Row number within each department by salary desc
select * , row_number() over( partition by department order by salary desc ) from employees;

-- Q5) Rank within each department by salary desc
select * , rank() over(partition by department order by salary desc) from employees;

-- Q6) Show previous and next salary in overall salary order (LAG/LEAD)
select * , lag(salary,1) over(order by salary desc) , lead(salary,1) over(order by salary desc) from employees;

-- Q7) Running total of sales amounts by date (overall)
select * , sum(amount) over(order by sale_date) from sales;

-- Q8) Running total of sales per employee by date
select * , sum(amount) over(partition by emp_id order by sale_date) from sales;

-- Q9) Total sales per row (same total repeated using window SUM)
select * , sum(amount) over() from sales;

-- Q10) Average salary per department shown on every employee row
select * , avg(salary) over(partition by department) from employees;



-- Medium level
-- Q1) Top 2 salaries in each department (use ROW_NUMBER)
select * from ( select * , row_number() over(partition by department order by salary) as row_value from employees ) as tempdata where row_value <= 2;
-- ==> subquery daved to a variable named as tempdata 
-- ==> first the subquery is solved save to the variable 
-- ==> and then we access the column and we filter out the data 

-- Q2) Salary difference vs department average
select * , avg(salary) over(partition by department ) , salary - avg(salary) over(partition by department) from employees;

-- Q3) Percent rank of employees by salary (overall)
select * ,sum(salary) over(), rank() over(order by salary), percent_rank() over(order by salary) from employees;
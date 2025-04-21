--syntax select */ column names/ distinct from <table name>
SELECT
    *
FROM
    employees;

select department_id, department_name from departments;
select distinct department_id from employees; -- will only show the 8 unique departments
select * from jobs;
--distnct clause will suppress the duplicates
select department_id from employees; --will show all 20 rows
desc employees; --dettermines the structure of employees
-- Airthematic expressions
select employee_id,salary, salary+100000 newsal from employees; --quotation marks around alias will keep it as it is.
select salary, nvl(commission_pct,0), salary+nvl(commission_pct,0) totalsal from employees;

-- nvl or is not null in where clause

--concat operators
select last_name,first_name, last_name ||' '|| first_name fullname from employees;

select last_name ||' salary is '|| (salary+nvl(commission_pct,0)) totalsal from employees;

-- restrict the number of rows --where clause
select employee_id, first_name,salary, department_id
from employees
where department_id=90;

select employee_id, first_name,salary
from employees
where salary>20000;

select employee_id, first_name,salary
from employees
where salary<>20000; --exclusion

-- display the employees who are sales_rep
select employee_id, first_name, job_id
from employees
where job_id = 'SA_REP';

-- SQL specific comparison operators
--between -- and --
--in 
-- like
--isnull

--display employees whose salary is between 15000 and 20000
select employee_id, first_name, job_id, salary
from employees
where salary between 15000 and 20000;

-- select employees of department 80 and 90
select employee_id, first_name, job_id, salary, department_id
from employees
where department_id in(80,90,10) and salary > 10000;
--in operator --exact match to the values in the list.

--like operator does the pattern check
select employee_id, first_name, job_id, salary, department_id
from employees
where first_name LIKE 'A%';
-- % represents group of characters, _(underscore)represents one single character

--display emp names whose name contain a in the second character
select employee_id, first_name, job_id, salary, department_id
from employees
where first_name LIKE '_a%';

-- display employee names whose name contains only 3 characters
select employee_id, first_name, job_id, salary, department_id
from employees
where first_name LIKE '___';

-- test null values in a column
select employee_id, first_name, job_id, department_id
from employees
where department_id IS NULL;

-- emp with commission
select employee_id, first_name, job_id, salary, department_id, commission_pct
from employees
where commission_pct is not null;

--sorting of data --order by clause
select employee_id, first_name, job_id, salary, department_id
from employees
where department_id in(80,90)
order by salary; --order by is the last clause, default order is always ascending

select employee_id, first_name, job_id, salary, department_id
from employees
where department_id in(80,90)
order by 3,4; --by the column at that position

select employee_id, first_name, job_id, salary, department_id dno
from employees
where department_id in(80,90)
order by dno; --can also order by alias

-- SQL row limiting clause
--syntax select */ column names/ distinct from <table name>
SELECT
    *
FROM
    employees;

select department_id, department_name from departments;
select distinct department_id from employees; -- will only show the 8 unique departments
select * from jobs;
--distnct clause will suppress the duplicates
select department_id from employees; --will show all 20 rows
desc employees; --dettermines the structure of employees
-- Airthematic expressions
select employee_id,salary, salary+100000 newsal from employees; --quotation marks around alias will keep it as it is.
select salary, nvl(commission_pct,0), salary+nvl(commission_pct,0) totalsal from employees;

-- nvl or is not null in where clause

--concat operators
select last_name,first_name, last_name ||' '|| first_name fullname from employees;

select last_name ||' salary is '|| (salary+nvl(commission_pct,0)) totalsal from employees;

-- restrict the number of rows --where clause
select employee_id, first_name,salary, department_id
from employees
where department_id=90;

select employee_id, first_name,salary
from employees
where salary>20000;

select employee_id, first_name,salary
from employees
where salary<>20000; --exclusion

-- display the employees who are sales_rep
select employee_id, first_name, job_id
from employees
where job_id = 'SA_REP';

-- SQL specific comparison operators
--between -- and --
--in 
-- like
--isnull

--display employees whose salary is between 15000 and 20000
select employee_id, first_name, job_id, salary
from employees
where salary between 15000 and 20000;

-- select employees of department 80 and 90
select employee_id, first_name, job_id, salary, department_id
from employees
where department_id in(80,90,10) and salary > 10000;
--in operator --exact match to the values in the list.

--like operator does the pattern check
select employee_id, first_name, job_id, salary, department_id
from employees
where first_name LIKE 'A%';
-- % represents group of characters, _(underscore)represents one single character

--display emp names whose name contain a in the second character
select employee_id, first_name, job_id, salary, department_id
from employees
where first_name LIKE '_a%';

-- display employee names whose name contains only 3 characters
select employee_id, first_name, job_id, salary, department_id
from employees
where first_name LIKE '___';

-- test null values in a column
select employee_id, first_name, job_id, department_id
from employees
where department_id IS NULL;

-- emp with commission
select employee_id, first_name, job_id, salary, department_id, commission_pct
from employees
where commission_pct is not null;

--sorting of data --order by clause
select employee_id, first_name, job_id, salary, department_id
from employees
where department_id in(80,90)
order by salary; --order by is the last clause, default order is always ascending

select employee_id, first_name, job_id, salary, department_id
from employees
where department_id in(80,90)
order by 3,4; --by the column at that position

select employee_id, first_name, salary 
from employees
order by salary desc
fetch first 3 rows only;

-- 4 senior employees in the org
select employee_id, first_name, hire_date
from employees
order by hire_date
fetch first 4 rows only;

--printh the employees between 5th to 10th positions in order of salary
select employee_id, first_name, salary 
from employees
order by salary desc
offset 5 rows fetch next 5 rows only;

-- substitution variable
-- (&) temporary
-- (&&) defining the value
select employee_id, first_name, salary, department_id
from employees
where department_id=&&n;

undefine n

define depno = 80;

select employee_id, first_name, salary, department_id
from employees
where department_id=&depno;

select last_name, salary
from employees
where salary > 12000;

select last_name, department_id
from employees 
where employee_id = 176;

select last_name, salary
from employees 
where salary not between 5000 and 12000
order by salary desc;

select last_name, job_id, hire_date
from employees
where last_name in ('Matos', 'Taylor')
order by hire_date;

select last_name, department_id
from employees
where department_id in (20,50)
order by last_name;

select last_name "Employee", salary "Monthly Salary"
from employees 
where (salary between 5000 and 12000) and department_id in (20,50)
order by salary desc;

-- functions
-- functions takes arguments performs a task and returns a value
-- we can use a dummy table dual to fill the where condition if the arguments does not belong to any table
--performs calculations on data
--notify individual data items
--format dates
--convert column data types

--single row functions -- character, number, date, conversion, general function 
--perform on every row and return one value per row
--group functions -- sum, avaerage, min, max, count, standard deviation 
--performs on group of rows and returns one value per group

--character functions --case conversion functions, character manipulation
select upper('sze kye') from departments; --will repeat for the total number of rows in the table
select lower(first_name), first_name, initcap(first_name), upper(first_name) from employees where department_id = 90;

select concat(first_name, concat(' ', last_name)) from employees where department_id = 90;

select upper(substr(last_name, 3,2)) str, last_name from employees where department_id =90; 
--from the third character, select it and the next character

select length(last_name), last_name from employees; --takes character as input and number as output.

select salary, lpad(salary, 10,'$') from employees where department_id = 90; --pads from the left until total of 10 characters 

select trim('H' from 'HHHHHelloWorld!HHHHH') from dual;

select ltrim('HHHHHelloWorld!HHHHH', 'H') from dual;

select rtrim('HHHHHelloWorld!HHHHH', 'H') from dual;

select replace('jack and jue', 'j', 'bl') from dual;

--numeric functions
--round, trunc, ceil, floor, mod
select round(678.89) from dual;
select trunc(678.89) from dual;

select round(678.98768,2) from dual; --678.99
select trunc(678.98768,2) from dual; --678.98

select ceil(2.86) from dual; --3
select floor(2.86) from dual; --2

select mod(45,2) from dual;

-- date functions
select sysdate from dual;
select current_date from dual;
select SESSIONTIMEZONE,current_date FROM DUAL;

--arithematic with dates
select sysdate + 2 from dual;
select sysdate - 5 from dual;

--displays employees and number of weeks employee was working with us from dept 90
select last_name, round((sysdate - hire_date)/7) as "weeks"
from employees
where department_id = 90;

--date manipulation functions in oracle
--months_between, add_months, next_day, last_day
select months_between('10-dec-2025', '10-Jun-2025') "months" from dual; --larger date first

select add_months(sysdate,3) from dual;

select last_day(sysdate) from dual;
select last_day('10-feb-2025') from dual;

select next_day(sysdate, 'mon') from dual;

--conversion function
--to_number, to_character,to_date
select last_name, to_char(hire_date, 'dd month yyyy') "Hire date"
from employees
where department_id= 90;

select last_name, to_char(hire_date, 'fmddspth month yyyy') "Hire date" --with the th
from employees
where department_id= 90;

select last_name, to_char(hire_date, 'fmdd month yyyy') "Hire date" --formated
from employees
where department_id= 90;

select last_name, to_char(hire_date, 'fmddspth "of" month yyyy MM:SSSS:AM') "Hire date"
from employees
where department_id= 90;

select to_char(salary, '$99999') from employees where department_id=90;

--general function case expression
select last_name, job_id, salary,
case job_id when 'IT_PROG' then 1.10*salary
    when 'ST_CLERK' then 1.15*salary
else 
    salary end "revised salary"
from employees; --updating a database in a single line

--decode function
select last_name, job_id, salary,
decode(job_id, 'IT_PROG', 1.10*salary, 'ST_CLERK' , 1.15*salary, salary) "revised salary"
from employees;

--case expression is better practice to write if-then-else enquiry into the data
--decode function is more resource intensive

-- if employee salary <3000 then "low"
-- if salary < 10000 then "medium"
-- if salary < 20000 then "good"
-- else "excellent"

select last_name, job_id, salary,
case when salary < 3000 then 'low'
when salary <20000 then 'medium'
else 'excellent' end "salary rating"
from employees;

-- Group functions -- works on group of rows and returns one value per group
select min(salary), max(salary), avg(salary), count(*), sum(salary) from employees;

--sum and avg are performed only on numeric data
-- min max count can be performed on numbers and character data

select min(last_name), max(last_name)
from employees;

select count(last_name)from employees;
select count(*), count(department_id) from employees; --count does not include null values
--group functions ignores the null values

--group by dept no give me total salary
select department_id, sum(salary)
from employees
where department_id is not null
group by department_id
order by department_id desc;

--where clause to filter rows
--having clause to filter groups

--display the data where sum(salary)>20000
select department_id, sum(salary)
from employees
where department_id in (80,90) and department_id is not null
group by department_id
having sum(salary) > 20000
order by department_id desc;

--display the job with min avg salary
--find avg salary group by job
--find the min avg salary 
-- the column in group by need not be in select list 
--but whatever column in select list along with group by function
--should be in group by clause
select job_id, avg_salary
from (
    select job_id, avg(salary) as avg_salary
    from employees
    group by job_id
) t
where avg_salary = (
    select min(avg_salary)
    from (
        select avg(salary) as avg_salary
        from employees
        group by job_id
    ) x
);

--determine the number of managers without listing them
select count(distinct(manager_id)) managers from employees;

--display the manager and the lowest paid employees for that manager
select e.manager_id, e.employee_id, e.salary
from employees e
join (
    select manager_id, min(salary) as min_salary
    from employees
    where manager_id is not null
    group by manager_id
) m
on e.manager_id = m.manager_id and e.salary = m.min_salary;

-- display data from multiple tables
--association among entity is relationship
--in normalised schema we manage association
--association can be based on primary key and foreign key reference --referential integrity
--asociated values in the columns in two different tables

--types of joins 
-- 1. inner join or equal join
--2. natural join
--3. non equi join
-- 4. outer join, right outer join, left outer join, right outer join, full outer join
-- 5. self join

--display last_name, and department_name
select last_name, department_name, city, country_name
from employees e
join departments d
on(e.department_id = d.department_id) join locations lo
on(d.location_id=lo.location_id) join countries c
on(lo.country_id = c.country_id);

--outer join
--extension to inner join, get the data which is not qualified in inner join
select last_name, department_name
from employees e
right join departments d
on(e.department_id = d.department_id);

select last_name, department_name
from employees e
left join departments d
on(e.department_id = d.department_id);

select last_name, department_name
from employees e
left outer join departments d
on(e.department_id = d.department_id);

select last_name, department_name
from employees e
right outer join departments d
on(e.department_id = d.department_id);

select last_name, department_name
from employees e
full outer join departments d
on(e.department_id = d.department_id);

--self join
--joining a table to itself
--referential integrity will be within the table
--managers employed is employees manager id

select m.last_name "Employee Last Name", e.last_name "Manager Last Name"
from employees e join employees m
on(e.manager_id = m.employee_id);

-- non equi join
-- grade the employee based on their salary
select first_name, grade_level
from employees join job_grades
on(salary between lowest_sal and highest_sal);

--subquery
select last_name, department_id
from employees
where department_id = (select department_id from departments where department_name='Sales');
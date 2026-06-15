use practice_db;
create table employees(
id int,
Name varchar(20),
department varchar(30),
salary int
);

insert into Employees values
(1,'Rahul','IT',50000),
(2,'Priya','HR',45000),
(3,'Amit','IT',60000),
(4,'Neha','Finance',55000),
(5,'Rohan','HR',48000);

select * from Employees;
select Name, salary 
from Employees;

select salary AS Salary
from Employees;

select department AS dept
from Employees;

select distinct department 
from Employees;
select distinct salary 
from Employees;
select distinct department, salary 
from Employees;


select * from Employees 
where department = 'IT';

select *
from Employees
where salary>50000;

select * from Employees
where department = 'HR';

select * from Employees
where salary between 45000 and 55000;

select *
from Employees
where department = 'HR' or department = 'Finance';

SELECT * FROM Employees 
WHERE Department IN ('HR','Finance');



-- Show all employees sorted by salary ascending.
-- Show all employees sorted by salary descending.
-- Show all employees sorted by Name.
-- Show employee names and salary sorted by salary descending.
-- Show all employees sorted first by department and then by salary descending. 

select *
from Employees
order by salary ASC;

select * 
from Employees 
order by salary desc;

select * 
from Employees 
order by Name ;

select Name, salary 
from Employees
order by salary desc;

select *
from Employees
order by name, salary desc;

select * from Employees
order by department, salary desc;


-- Show only the first 2 rows from the Employees table.

-- Show the employee who has the highest salary.

-- Show the top 3 employees with the highest salaries.

-- Show the employee who has the second highest salary.

-- What will happen if the data is sorted first by department in ascending order and then by salary in descending order?


select * 
from Employees 
limit 2;

select * from Employees
order by salary desc
limit 1;

select * from Employees
order by salary desc
limit 3;

select *
From employees
order by Salary desc
limit 1 offset 1;

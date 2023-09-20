CREATE database my_employment;
Use my_employment;
/*
creating databases and creating tables and adding values into each table 17-8-2023 
learn - unlearn - relearn 
*/
CREATE TABLE employees_details (
    emp_no INT PRIMARY KEY,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender ENUM ('m', 'f'),
    hire_date DATE
);

INSERT INTO employees_details 
(    
    emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
)
VALUES
    (1, '1995-08-27', 'jane', 'francis', 'F', '2020-06-26'),
    (2, '1999-06-15', 'emily', 'wise', 'F', '2020-04-23'),
    (3, '1991-04-05', 'james', 'johnson', 'M', '2020-05-12'),
    (4, '1992-06-12', 'felix', 'duda', 'M', '2020-03-19'),
    (5, '1995-04-06', 'george', 'bens', 'M', '2020-05-18'),
    (6, '1995-06-07', 'helen', 'made', 'F', '2020-04-20'),
    (7, '1994-08-04', 'bella', 'danely', 'F', '2020-03-12'),
    (8, '1993-08-03', 'yela', 'james', 'M', '2020-03-16'),
    (9, '1992-07-21', 'redish', 'jane', 'F', '2021-06-13'),
    (10, '1994-07-23', 'ugo', 'mannay', 'M', '2021-05-21');
    
select *
from employees_details;

CREATE TABLE dept_manager (
    dep_no INT,
    emp_no INT,
    from_date DATE,
    to_date DATE
);

INSERT INTO dept_manager (dep_no, emp_no, from_date, to_date)
VALUES
    (2, 1, '2020-08-26', '2023-03-15'),
    (1, 2, '2020-07-24', '2023-05-21'),
    (3, 3, '2020-05-20', '2023-04-13'),
    (1, 4, '2020-04-19', '2023-03-12'),
    (5, 5, '2020-05-25', '2023-08-17'),
    (4, 6, '2020-06-20', '2023-07-24'),
    (1, 7, '2020-05-18', '2023-03-23'),
    (2, 8, '2020-04-17', '2023-02-17'),
    (3, 9, '2021-05-14', '2023-05-23'),
    (5, 10, '2021-05-20', '2023-08-30');
    
    select *
    from dept_manager;
    
    CREATE TABLE department (
    dept_no INT PRIMARY KEY,
    depart_name VARCHAR(50)
);

INSERT INTO department (dept_no, depart_name)
VALUES
    (1, 'saleperson'),
    (2, 'Hr'),
    (3, 'managers'),
    (4, 'director'),
    (5, 'admins');

select *
from department;

CREATE TABLE titles (
    emp_no INT,
    title VARCHAR(50),
    from_date DATE,
    to_date DATE
);

INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES
    (1, 'HR', '2020-08-26', '2023-03-15'),
    (2, 'salesperson', '2020-07-24', '2023-05-21'),
    (3, 'manager', '2020-05-20', '2202-04-13'),
    (4, 'salesperson', '2020-04-19', '2023-03-12'),
    (5, 'admin', '2020-05-25', '2023-08-17'),
    (6, 'director', '2020-06-20', '2023-07-24'),
    (7, 'salesperson', '2020-05-18', '2023-03-23'),
    (8, 'HR', '2020-04-17', '2023-02-17'),
    (9, 'manager', '2021-05-14', '2023-05-23'),
    (10, 'admin', '2021-05-20', '2023-08-30');
    
    select *
    from titles ;
    
    CREATE TABLE salaries (
    emp_no INT,
    salary DECIMAL(10, 2),
    from_date DATE,
    to_date DATE
);

INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES
    (1, 25000.00, '2020-08-26', '2023-03-15'),
    (2, 20000.00, '2020-07-24', '2023-05-21'),
    (3, 50000.00, '2020-05-20', '2020-04-13'),
    (4, 20000.00, '2020-04-19', '2023-03-12'),
    (5, 15000.00, '2020-05-25', '2023-08-17'),
    (6, 45000.00, '2020-06-20', '2023-07-24'),
    (7, 20000.00, '2020-05-18', '2023-03-23'),
    (8, 25000.00, '2020-04-17', '2023-02-17'),
    (9, 50000.00, '2021-05-14', '2023-05-23'),
    (10, 15000.00, '2021-05-20', '2023-08-30');
    
    
    select *
    from salaries ; 
    
    CREATE TABLE dept_emp (
    emp_no INT,
    dept_no INT,
    from_date DATE,
    to_date DATE
);

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES
    (1, 2, '2020-08-26', '2023-03-15'),
    (2, 1, '2020-07-24', '2023-05-21'),
    (3, 3, '2020-05-20', '2202-04-13'),
    (4, 1, '2020-04-19', '2023-03-12'),
    (5, 5, '2020-05-25', '2023-08-17'),
    (6, 4, '2020-06-20', '2023-07-24'),
    (7, 1, '2020-05-18', '2023-03-23'),
    (8, 2, '2020-04-17', '2023-02-17'),
    (9, 3, '2021-05-14', '2023-05-23'),
    (10, 5, '2021-05-20', '2023-08-30');
    
    select *
    from dept_emp ;
    
 /*
 Employee Information:
Who are the employees in the organisation?
What are the details of an employee with a specific employee_id?
What is the birthdate of an employee with a given first name?   
*/

    /*
solutions below 
*/

 /*
 Employee Information:
Who are the employees in the organisation?   
*/

SELECT emp_no, first_name, last_name
FROM employees_details;

 /*
What are the details of an employee with a specific employee_id?
*/
SELECT *
FROM employees_details
WHERE emp_no = 10;

SELECT *
FROM employees_details
WHERE emp_no = 4;

 /*
What is the birthdate of an employee with a given first name?   
*/

SELECT birth_date
FROM employees_details
WHERE first_name = 'jane';

SELECT birth_date
FROM employees_details
WHERE first_name = 'felix';

/*
Department Information:
What are the different departments in the organisation?
How many employees are in each department?
*/

/*
solution
*/

SELECT DISTINCT depart_name
FROM department;

SELECT depart_name, COUNT(*) AS total_employees
FROM department
GROUP BY depart_name;


/*
Title and Salary Information:
What titles have employees held over time?
What are the salaries of employees with a particular title?
What is the average salary for a specific title?
What is the highest salary ever earned in the organisation?
*/

/* 
  solution below 
  */
  
  /*
    What titles have employees held over time?
    */
    
SELECT emp_no, title, from_date, to_date
FROM titles
ORDER BY emp_no, from_date;

/*
What are the salaries of employees with a particular title?
*/

SELECT e.first_name, e.last_name, s.salary
FROM employees_details e, titles t, salaries s
WHERE e.emp_no = t.emp_no AND e.emp_no = s.emp_no AND t.title = 'salesperson';

SELECT e.first_name, e.last_name, s.salary
FROM employees_details e, titles t, salaries s
WHERE e.emp_no = t.emp_no AND e.emp_no = s.emp_no AND t.title = 'manager';

/*
What is the highest salary ever earned in the organisation?
*/

SELECT MAX(salary) AS highest_salary
FROM salaries;

Use my_employment;

/*
count last_name?
*/


SELECT COUNT(last_name) AS lastname_count
FROM employees_details;

/*
What is the average salary ever earned in the organisation?
*/

select avg (salary) as avg_salary
from salaries;

/*
select top 5 employee
*/

SELECT *
FROM employees_details
LIMIT 5;

/*
max salary
*/

SELECT MAX(salary) 
FROM salaries;


/*
where statements
*/
    
SELECT * 
FROM employees_details 
WHERE last_name = 'jane' or  gender = 'male';

 SELECT * 
FROM employees_details 
WHERE last_name = 'jane' and gender = 'male';   

/*
wildcards (%sd%) last_name start with s
*/

select *
from employees_details
where last_name like '%d%';

select *
from employees_details
where last_name like 'e%d%';

/*
trying out my first sql language *symtax
*/

/*
group by / order by
*/

SELECT gender, COUNT(gender)
FROM employees_details
GROUP BY gender;

SELECT gender
FROM employees_details
GROUP BY gender;

select *
from employees_details 
order by gender ;

/*
join statements 
*/

use my_employment

select*
FROM employees_details
INNER JOIN salaries 
ON employees_details.emp_no = salaries.emp_no;

select *
FROM employees_details
left JOIN salaries 
ON employees_details.emp_no = salaries.emp_no;

/*
have something to link it with i.e in this case emp_no
*/

select *
FROM employees_details
right JOIN salaries 
ON employees_details.emp_no = salaries.emp_no;

select employees_details.emp_no,first_name,last_name,from_date 
from employees_details
inner join salaries
on employees_details.emp_no = salaries.emp_no;

select employees_details.emp_no,first_name,last_name,from_date 
from employees_details
right outer join salaries
on employees_details.emp_no = salaries.emp_no;

select employees_details.emp_no,first_name,last_name,from_date,salary
from employees_details
inner join salaries
on employees_details.emp_no = salaries.emp_no;

select employees_details.emp_no,first_name,last_name,from_date,salary
from employees_details
inner join salaries
on employees_details.emp_no = salaries.emp_no
where first_name <> 'felix'
limit 5;

Use my_employment;
/*
using the union statement 
*/

select emp_no, last_name,hire_date
from employees_details
union
select emp_no,salary,hire_date
from employees;

/*
thanks so much 
*/























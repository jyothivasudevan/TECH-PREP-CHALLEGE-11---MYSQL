use tech_prep11;

--  Display the employee names in lowercase. 
select LOWER(ENAME) FROM employee;

-- Display the first three characters of each employee’s name.
SELECT substring(ENAME,1,3) FROM employee;

--  Display the length of each employee’s name
SELECT LENGTH (ENAME ) FROM EMPLOYEE;

--  Display the salary of each employee rounded to the nearest thousand. 
SELECT ROUND(SAL) AS ROUNDED_SALARY FROM employee;

--  Display the remainder of dividing the salary by 1000 for each employee. 
SELECT MOD(SAL,1000) AS REMAINDER FROM EMPLOYEE;

-- Display the current date and time.
SELECT now();

--  Display the year each employee was hired.
SELECT ENAME, YEAR(HIREDATE) FROM EMPLOYEE;

-- Display the name of the month each employee was hired. 
SELECT MONTHNAME (HIREDATE) FROM EMPLOYEE;

-- Display the number of years each employee has been with the company (assuming the current year is 2025).  
SELECT ENAME, 2025- year(HIREDATE) FROM EMPLOYEE;



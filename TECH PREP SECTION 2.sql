--  Display employee details sorted by their name in alphabetical order.
USE TECH_PREP11;
SELECT * FROM EMPLOYEE 
ORDER BY ENAME;

--  Display employee details sorted by department number, and then by salary in descending order

SELECT * FROM EMPLOYEE 
ORDER BY DEPT_NO, SAL DESC;

-- Display the total number of employees.

SELECT count(EMP_NO) FROM EMPLOYEE;

-- Find the total salary paid to all employees.

SELECT SUM(SAL) FROM EMPLOYEE;

-- Find the average salary of all employees. 

SELECT AVG(SAL) FROM EMPLOYEE;

-- Find the maximum and minimum salary from the EMPLOYEE table.

SELECT MAX(SAL)  AS MAX_SALARY FROM EMPLOYEE;
SELECT MIN(SAL) AS MIN_SALARY FROM EMPLOYEE;

-- Count the number of employees in each department. 

SELECT DEPT_NO, COUNT(EMP_NO) AS NO_OF_EMP FROM EMPLOYEE 
GROUP BY DEPT_NO;

-- Find the average salary for each job type.

SELECT JOB, AVG(SAL) AS AVG_SAL FROM EMPLOYEE 
GROUP BY JOB;

--  Find the total salary for each department. 

SELECT DEPT_NO, SUM(SAL) AS TOTAL_SAL FROM EMPLOYEE 
GROUP BY DEPT_NO;

--  Display the department numbers that have more than 3 employees. 

SELECT DEPT_NO, COUNT(EMP_NO) AS TOTAL_EMP FROM EMPLOYEE 
GROUP BY DEPT_NO
HAVING COUNT(EMP_NO)>3;

-- Display the jobs where the average salary is more than 2000. 

SELECT JOB, AVG(SAL) AS AVG_SALARY FROM EMPLOYEE 
GROUP BY JOB
HAVING AVG(SAL)>2000;










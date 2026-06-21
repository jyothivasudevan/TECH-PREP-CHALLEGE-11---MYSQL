CREATE database TECH_PREP11;

-- DISPLAY EMPLOYEE TABLE

CREATE TABLE EMPLOYEE(
EMP_NO INT, 
ENAME VARCHAR(50),
JOB VARCHAR(50),
MGR INT,
HIREDATE DATE ,
SAL INT ,
COMM INT, 
DEPT_NO INT);
DESC EMPLOYEE;
INSERT INTO EMPLOYEE VALUES
(7369, 'SMITH','CLERK',7902,'1980-12-17',800,null,20);
SELECT * FROM EMPLOYEE;
SET SQL_SAFE_UPDATES =0;
DELETE FROM EMPLOYEE WHERE COMM=0;
INSERT INTO EMPLOYEE VALUES
(7499,'ALLEN', 'SALESMAN', 7698,'1981-02-20',1600,300,30), 
(7521,'WARD', 'SALESMAN', 7698,'1981-02-22', 1250,500,30), 
(7566,'JONE','MANAGER',7839,'1981-04-02',2975,NULL, 20), 
(7654, 'MARTIN', 'SALESMAN', 7698,'1981-09-28', 1250,1400,30), 
(7698, 'BLAKE', 'MANAGER', 7839,'1981-05-01', 2850,NULL,30), 
(7782,'CLARK', 'MANAGER', 7839,'1981-06-09', 2450, NULL,  10);
INSERT INTO EMPLOYEE VALUES
(7788,'SCOTT', 'ANALYST',  7566,'1987-04-19', 3000,NULL,20), 
(7839,'KINGG', 'PRESIDENT', NULL, '1981-11-17', 5000,NULL,10),
(7844,'TURNER', 'SALESMAN', 7698,'1981-09-08', 1500,NULL,30),
(7876,'ADAMS', 'CLERK', 7788,'1987-05-23', 1100,NULL,20),
(7900, 'JAMES','CLERK', 7698,'1981-12-03', 950,NULL,30),
(7902,'FORD', 'ANALYST', 7566,'1981-12-03', 3000,NULL,20),
(7934,'MILLER', 'CLERK', 7782,'1982-01-23', 1300,NULL,10);

-- Display the employee number, name, and salary of all employees. 

SELECT EMP_NO, ENAME,SAL FROM EMPLOYEE;

-- Display the unique job titles from the EMPLOYEE table.

SELECT DISTINCT JOB FROM EMPLOYEE;

--  Display the employee name and their annual salary (SAL * 12).

SELECT ENAME, SAL*12 AS ANNUAL_SALARY FROM EMPLOYEE;

-- Display the details of all employees from department number 10.

SELECT * FROM EMPLOYEE WHERE DEPT_NO = 10;

--  Display the name and job of employees who are ‘CLERK’. 

SELECT ENAME,JOB FROM EMPLOYEE WHERE JOB = 'CLERK';

-- Display the name of employees whose name starts with ‘S’

SELECT ENAME FROM EMPLOYEE WHERE ENAME LIKE 'S%';


-- Display the name of employees where the second letter of their name is ‘L’

SELECT ENAME FROM  EMPLOYEE WHERE ENAME LIKE '_L%';

-- Display the name of employees who have ‘AR’ in their name. 

SELECT ENAME FROM  EMPLOYEE WHERE ENAME LIKE '%AR%';

--  Display the details of employees who were hired in the year 1981. 
 
SELECT * FROM EMPLOYEE WHERE HIREDATE BETWEEN '1981-01-01' AND '1981-12-31'; 

--  Display the name and salary of employees who earn more than 2500.

SELECT ENAME, SAL FROM EMPLOYEE WHERE SAL> 2500;

-- Display the details of employees who are not ‘MANAGER’. 

SELECT * FROM EMPLOYEE WHERE JOB NOT IN ('MANAGER') ;

-- Display the details of employees who have a commission. 

SELECT * FROM EMPLOYEE WHERE COMM IS NULL;

-- Display the details of employees who do not have a manager.

SELECT * FROM EMPLOYEE WHERE MGR IS NULL;

--  Display the names of all employees from department 30 who are ‘SALESMAN’. 

SELECT ENAME FROM EMPLOYEE WHERE DEPT_NO = 30 AND JOB ='SALESMAN';

-- Display the names of all ‘CLERK’s and ‘ANALYST’s.

SELECT ENAME FROM EMPLOYEE WHERE JOB IN ('CLERK', 'ANALYST');

-- Display the names of employees whose salary is between 1000 and 2000.
 
 SELECT ENAME FROM EMPLOYEE WHERE SAL BETWEEN 1000 AND 2000;
 
 






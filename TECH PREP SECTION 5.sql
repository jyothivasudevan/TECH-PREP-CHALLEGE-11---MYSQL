-- : Write the SQL command to create the DEPARTMENT table with DEPTNO as the  primary key. 
create table department(deptno int PRIMARY KEY ,dname varchar (50), loc varchar (50));

-- Add a new column PINCODE of type INT to the DEPARTMENT table.
ALTER TABLE DEPARTMENT ADD PINCODE INT;
SELECT * FROM DEPARTMENT;

--  Insert a new record for department 50, ‘HR’, located in ‘HOUSTON’ into the DEPARTMENT table. 
INSERT INTO DEPARTMENT VALUES ( 50,'HR','HOUSTON', NULL); 

--  Update the location of the ‘SALES’ department to ‘ATLANTA’. 
UPDATE DEPARTMENT SET LOC = 'ATLANTA'  WHERE DNAME = 'SALES';
SET SQL_SAFE_UPDATES =0;

-- Delete the ‘OPERATIONS’ department from the table. 
DELETE FROM DEPARTMENT WHERE DNAME = 'OPERATIONS' ;
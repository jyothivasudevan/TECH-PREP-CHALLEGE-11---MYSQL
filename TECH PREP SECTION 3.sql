use tech_prep11;

create table department(deptno int,dname varchar (50), loc varchar (50));

insert into department values 
(10, 'accounting', 'new york'),
(20, 'research','dallas'),
(30,'sales','chicago'),
(40,'operatons','boston');

select * from department ;
select * from employee;

-- Display employee details sorted by their name in alphabetical order. 
select e.ename, d.dname
from employee e 
left join department d 
on e. dept_no = d.deptno
order by  d.deptno; 


-- Display the employee name, department name, and location for all employees 
select e.ename, d.dname, d.loc
from department d
left join employee e
on e.dept_no = d.deptno;

-- Display the name of the employee and the name of their manager. 
select e1.ename as employee, e2.ename as manager
from employee e1
join employee e2
on e1.emp_no = e2.mgr;

-- Display the employee name, salary, and salary grade.
 create table grade( grade int, losal int, hisal int);
 insert into grade values 
 (1,700,1200),
 (2,1201,1400),
 (3,1401,2000),
 (4,2001,3000),
 (5,3001,9999);
 select *  from grade;
 select e.ename, e.sal, g.grade
 from employee e 
 inner join grade g
 on e.sal between g.losal and g.hisal;
 
 --  Display the employee name for those working in ‘NEW YORK’
 select e.ename, d.loc 
 from employee e
 inner  join  department d
 on e.dept_no = d.deptno
 where d.loc = 'new york';
 
 -- Find the name of the department where ‘SMITH’ works
 select d.dname as smith_dept
 from department d 
 inner join employee e 
 on d.deptno = e.dept_no
 where e.ename = 'smith';
 
--  Display the names of employees who earn more than ‘ALLEN’. (Subquery) 



-- Display the names of employees who work in the same department as ‘SCOTT’.




-- Display the names of employees who have the same job as ‘JONES’.




-- Display the names of managers who manage more than 2 employees.


 
 
 
 
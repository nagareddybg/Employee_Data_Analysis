create database Employee_Data_Analysis;
use Employee_Data_Analysis;

/*1. Write a query to create an employee table with employee ID, first name, last name, 
job ID, salary, manager ID, and department ID fields*/

create table employee (
	employeeid int not null,
	fname varchar(40) null,
	lname varchar(40) not null,
	job_id varchar(40) not null,
	salary decimal(8,2) not null,
	managerid int not null,
	deptid varchar(40) not null,
	primary key(employeeid));
    
#2. Write a query to insert values into the employee table

insert into employee (employeeid,fname,lname,job_id,salary,managerid,deptid)
values ('101','rohan','raj','A991','650000','07','001');

insert into employee (employeeid,fname,lname,job_id,salary,managerid,deptid)
values ('102','hari','kisp','A999','810000','4','005');

insert into employee (employeeid,fname,lname,job_id,salary,managerid,deptid)
values ('103','mohan','shah','A994','460000','7','004');

insert into employee (employeeid,fname,lname,job_id,salary,managerid,deptid)
values ('104','disha','ties','A996','570000','8','003');

/*3. Write a query to find the first and last names of every employee whose salary is 
higher than the employee with the last name Kumar*/

select fname,lname from employee 
where salary> (select salary from employee where lname='shah');

/*4. Write a query to display the employee ID and last name of every employee whose 
salary is greater than the average*/

select employeeid,lname from employee 
where salary> (select avg(salary) from employee);

/*5. Write a query to display the employee ID and first name of every employee whose 
salary is higher than the salary of the shipping clerks (JOB_ID = HP122) and sort the 
results in the ascending order of the salary*/

select employeeid,fname,salary from employee 
where salary> (select salary from employee where job_id='A994' order by salary);

/*6. Write a query to display the first name, employee ID, and salary of the three 
employees with the highest salaries*/

select fname,employeeid,salary from employee 
where salary> 44000
order by salary desc
limit 3;

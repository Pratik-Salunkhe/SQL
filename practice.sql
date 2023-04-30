					    #### search databases ####
show databases;
						#### Database Created ####
create database Practice;
						#### search table from the specific database ####
show tables from Practice;
						#### Use database ####
use Practice;
						
                        #### Create Table  with NAME WORKER ####
                        
CREATE TABLE Worker (WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25));
    
						#### Insert Values in table NAME Worker ####
                        
INSERT INTO Worker  VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
						#### Create Table with NAME Bonus ####

CREATE TABLE Bonus (WORKER_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE);
        
						#### Insert value in table Name bonus ####
                        
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
        
						#### create table with name title ####
                        
CREATE TABLE Title (WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE);
        
						#### Insert the values in table name title ####
                        
INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');


/* Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>. */

select Worker_ID,First_Name as Workers_Name from Worker;

/* Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case. */

Select upper(First_Name) from worker;

/* Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table. */

select distinct(department) from worker;

/* Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table. */

SELECT substring( first_name, 1, 3 ) FROM worker;       # substring is used to fond out the first 3 values from the rows

SELECT substring( first_name,-3 ) FROM worker;			# to find out the last 3 charecters from the value

/* Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table. */

SELECT POSITION("a" IN "Amitabh")  from worker where first_name = 'Amitabh';

				#### OR ####

Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';

/* Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side. */

select trim(first_name) from worker;
			### OR ###
Select RTRIM(FIRST_NAME) from Worker;    # right trim

/* Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side. */

Select LTRIM(department) from Worker;  # left trim

/* Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length. */

select distinct(department) as unique_value_dept, length(department) as len from worker;
				#### OR ####
Select distinct length(DEPARTMENT) from Worker;

/* Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’. */

select replace(first_name, 'a', 'A') from  worker;   

/*  Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them. */

select concat(first_name," ",last_name) complete_name from worker;  # concatination of two columns

/* Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending. */ 
 
select * from worker order by first_name asc;   

/* Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. */ 

select * from worker order by first_name asc, department desc  ;

/* Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table. */

select * from worker where first_name in ('vipul','satish') ;

/* Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table. */

select * from worker where first_name not in ('vipul', 'satish') ;

/* Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”. */

select * from worker where department in ('admin');
				#### OR ####
Select * from Worker where DEPARTMENT like 'Admin%';

/* Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’. */

select * from worker where first_name like '%a%';

/* Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. */

select * from worker where FIRST_NAME like '_____h';

/* Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000. */

select * from worker where salary > 50000 or salary < 100000;
				#### OR ####
Select * from Worker where SALARY between 100000 and 500000;

/* Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014. */

select * from worker where month(joining_date) = 2 and year(joining_date)= 2014;

/* Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’. */

select count(*) from worker where department = "admin";

/* Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000. */

select concat(first_name," ",last_name) as worker_name, salary from worker where SALARY >= 50000 and salary <= 100000; 
						#### OR ####
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, Salary FROM worker WHERE WORKER_ID IN 
(SELECT WORKER_ID FROM worker WHERE Salary BETWEEN 50000 AND 100000);
					   #### OR ####
select concat(first_name," ",last_name) as worker_name, salary from worker where salary BETWEEN 50000 AND 100000;

/* Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order. */

select distinct(department), count(worker_id) as no_workers from worker group by department order by no_workers desc;
 
 /* Q-24. Write an SQL query to print details of the Workers who are also Managers. */
 
 select w.WORKER_ID,w.FIRST_NAME,t.WORKER_REF_ID,t.worker_title from worker w, title t where W.WORKER_ID = T.WORKER_REF_ID
 AND t.WORKER_TITLE in ('Manager');
						#### OR ####
SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE FROM Worker W INNER JOIN Title T ON
 W.WORKER_ID = T.WORKER_REF_ID AND T.WORKER_TITLE in ('Manager');

/* Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table. */

SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*) FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM HAVING COUNT(*) > 1;

/* Q-26. Write an SQL query to show only odd rows from a table. */

select * from worker where mod(worker_id,2);
			#### OR ####
SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) <> 0;

/* Q-27. Write an SQL query to show only even rows from a table. */

select * from worker where mod(worker_id,2) = 0;

/* Q-28. Write an SQL query to clone a new table from another table. */

CREATE TABLE WorkerClone LIKE Worker;
SELECT * FROM  WorkerClone;
SELECT * INTO WorkerClone FROM Worker WHERE 1 = 0;

/* Q-29. Write an SQL query to fetch intersecting records of two tables. */

#SELECT worker_id FROM Worker IN
(SELECT  worker_ref_id FROM WorkerClone); 

/* Q-30. Write an SQL query to show records from one table that another table does not have. */

 # SELECT * FROM Worker MINUS (SELECT * FROM Title);

/* Q-31. Write an SQL query to show the current date and time. */

select now();

SELECT CURDATE();

/* Q-32. Write an SQL query to show the top n (say 10) records of a table. */

select * from worker where salary limit 10 ;
			#### OR ####
SELECT * FROM Worker ORDER BY Salary DESC LIMIT 10;
		
/* Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table. */

SELECT Salary FROM Worker ORDER BY Salary DESC LIMIT 4,1;

/* Q-34. Write an SQL query to determine the 5th highest salary without using TOP or limit method.*/

select salary from worker order by salary desc limit 4,1; 
			#### OR ####
SELECT Salary FROM Worker W1 WHERE 4 = ( SELECT COUNT( DISTINCT ( W2.Salary ) )FROM Worker W2 WHERE W2.Salary >= W1.Salary);

/* Q-35. Write an SQL query to fetch the list of employees with the same salary */

select a.FIRST_NAME,a.salary from worker a join worker b on a.salary = b.salary where a.WORKER_ID <> b.WORKER_ID order by salary desc;

/* Q-36. Write an SQL query to show the second highest salary from a table. */

select distinct salary from worker order by salary desc limit 1,1;
			#### OR ####
Select max(Salary) from Worker where Salary not in (Select max(Salary) from Worker);

/* Q-37. Write an SQL query to show one row twice in results from a table. */

select * from worker as a union all select * from worker as b;
				#### OR ####
select FIRST_NAME, DEPARTMENT from worker W where W.DEPARTMENT='HR' union all 
select FIRST_NAME, DEPARTMENT from Worker W1 where W1.DEPARTMENT='HR';

/* Q-38. Write an SQL query to fetch intersecting records of two tables. */
####################################################################################
select worker.WORKER_ID from worker where worker.WORKER_ID in (select title.worker_title work from title);

/* Q-39. Write an SQL query to fetch the first 50% records from a table. */

SELECT * FROM WORKER WHERE WORKER_ID <= (SELECT count(WORKER_ID)/2 from Worker);

/* Q-40. Write an SQL query to fetch the departments that have less than five people in it. */

SELECT DEPARTMENT, COUNT(WORKER_ID) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT HAVING COUNT(WORKER_ID) < 5;
 
 /* -41. Write an SQL query to show all departments along with the number of people in there. */
 
SELECT  DEPARTMENT, COUNT(WORKER_ID) as 'Number of people' FROM Worker GROUP BY DEPARTMENT HAVING COUNT(WORKER_ID);

/* Q-42. Write an SQL query to show the last record from a table. */

Select * from Worker where WORKER_ID = (SELECT max(WORKER_ID) from Worker);

/* Q-43. Write an SQL query to fetch the first row of a table. */

 Select * from Worker where WORKER_ID = (SELECT min(WORKER_ID) from Worker);
 
/* Q-44 Write an SQL query to fetch the last five records from a table. */

select * from worker order by worker_id desc limit 5;
				#### OR ####
SELECT * FROM Worker WHERE WORKER_ID <=5 UNION 
SELECT * FROM (SELECT * FROM Worker W order by W.WORKER_ID DESC) AS W1 WHERE W1.WORKER_ID <=5;

/* Q-45. Write an SQL query to print the name of employees having the highest salary in each department. */

select max(salary), DEPARTMENT from worker group by DEPARTMENT having max(salary) order by DEPARTMENT desc;

				#### OR ####
SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Worker group by DEPARTMENT) as TempNew 
Inner Join Worker t on TempNew.DEPARTMENT=t.DEPARTMENT and TempNew.TotalSalary=t.Salary;

/* Q-46. Write an SQL query to fetch three max salaries from a table. */

SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;

/* Q-47. Write an SQL query to fetch three min salaries from a table. */

SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary >= b.Salary) order by a.Salary desc;


 
select * from practice.worker;
select * from practice.Bonus;
select * from practice.Title;	


use practice;

create table salesman (salesman_id int (50), Name1 varchar (50), city varchar (50), commission float (50)) ; 
insert into salesman values ( 5001, "James Hoog", "New York", 0.15),
        (5002, "Nail Knite", "Paris",0.13),
        (5005, "Pit Alex", "London", 0.11),
        (5006, "Mc Lyon", "Paris", 0.14),
		(5007, "Paul Adam", "Rome", 0.13),
        (5003, "Lauson Hen", "San Jose", 0.12);
create table customer1 (customer_id int (50), cust_name varchar (50), city varchar (50), grade int (50), salesman_id int (50)); 
insert into customer1 values (3002,"Nick Rimando","New York",100,5001),
        (3007,"Brad Davis","New York",200,5001),
        (3005,"Graham Zusi","california",200,5002),
        (3008,"Julian Green","London",300,5002),
		(3004,"Fabian Johnson","Paris",300,5006),
        (3009,"Geoff Cameron","Berlin",100,5003),
        (3003,"Jozy Altidor","Moscow",200,5007);
insert into customer1 (customer_id, cust_name, city,salesman_id) values (3001,"Brad Guzan","London",5005);

/* 1. From the following tables write a SQL query to find the salesperson and customer who reside in the same city.
 Return Salesman, cust_name and city. */
 
 select salesman.name1 as salesperson,customer1.cust_name, customer1.city from salesman , customer1 where salesman.city = customer1.city;
 
/* 3. From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents.
 Return Customer Name, city, Salesman, commission.  */

select customer1.cust_name as customer_name, customer1.city, salesman.Name1 as sales_man, salesman.commission from salesman , customer1
where salesman.salesman_id = customer1.salesman_id  ;

/* 4. From the following tables write a SQL query to find salespeople who received commissions of more than 12 percent from the company. 
Return Customer Name, customer city, Salesman, commission. */

select customer1.cust_name, customer1.city, salesman.Name1 as salesman1, salesman.commission from customer1 , salesman 
where salesman.salesman_id = customer1.salesman_id and salesman.commission > 0.12;

SELECT a.cust_name AS "Customer Name", 
a.city, b.name1 AS "Salesman", b.commission 
FROM customer1 a 
INNER JOIN salesman b 
ON a.salesman_id=b.salesman_id 
WHERE b.commission>.12;

select * from practice.salesman;
select * from practice.customer1;
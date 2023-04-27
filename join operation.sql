use db2;

################################# table 1 created #######################
create table t1 (custID int);
Insert into t1 values(1),(2),(3);
select * from t1;

############################### table 2 created ###################################
create table t2 (custID int);
Insert into t2 values(2),(3),(4);
select * from t2;

############################### UNION Function #############################

select * from t1 union select * from t2;		# returns only unique values while combining 2 tables

############################# UNION ALL Function ###############################

select * from t1 union all select * from t2;   # returns all the values from both the tables 

############################## Intersect command ###############################

select * from t1 where t1.custID in (select t2.custID from t2);  # gives the value which is common in both table

#################################################################################################################
############################################ ***JOINING*** ######################################################
#################################################################################################################


############################## Table1 created #######################################################
CREATE TABLE Customer (cust_id INT,
    cust_name VARCHAR(20),
    contact_name VARCHAR(20),
    city VARCHAR(10),
    telephone VARCHAR(10));

INSERT INTO Customer VALUES (101, "Oliver", "Joy", "New York", 2016776708), 
							(102,"George", "George", "Chicago" , "209761700"),
                            (103,"Harry", "Harry", "Texas" , "2097617866"),
                            (104,"Jack", "Noah", "California", "2097627999");
select * from customer;


######################################## Table2 created ####################################################
CREATE TABLE Orders (cust_id INT,
    order_id INT,
    order_date VARCHAR(20),
    shipper_id VARCHAR(20));

INSERT INTO Orders VALUES (101, 4501, '12/03/1997', 'A111' ),
						  (102, 4502, '13/03/1997', 'A112'),
                          (103, 4503, '14/03/1997', 'A113'),
                          (105, 4505, '16/03/1997', 'A115'),
                          (106, 4506, '17/03/1997', 'A116');
select * from orders;

##################################### ALIAS FOR TABLES ##############################################
# Alias is the short name for the table 
select cust.cust_id, cust.cust_name,ord.cust_id, ord.order_id from customer as cust, orders as ord; # O/P is permitation combination

################################## INNER JOIN ###################################

select * from customer inner join orders;
select * from customer inner join orders where customer.cust_id = orders.cust_id; # in place of where we can also use 'On'

################################ RIGHT JOIN ######################################

select * from customer right join orders on customer.cust_id = orders.cust_id;  # where conditions not works 

############################### Left Join #########################################

select * from customer right join orders on customer.cust_id = orders.cust_id;  #  where conditions not works 

############################## OUTER JOIN = left join union right join ###############################################

select * from customer left join orders on customer.cust_id = orders.cust_id union select * from customer right join orders on customer.cust_id = orders.cust_id;

################################ SELF_ JOIN ######################################################################

CREATE TABLE employee (Name1 VARCHAR(20),
						Age INT,
						City VARCHAR(20),
						Salary INT);
INSERT INTO employee (Name1, Age, City, Salary) Values ('Allex', 34, 'New York', 50000), 
														('Mia', 25, 'Texas', 30000), 
                                                        ('Sara', 30, 'California', 67000), 
                                                        ('Allen', 29, 'New York', 45000), 
                                                        ('John',45, 'Texas', 55000); 

SELECT DISTINCT
    b.Name1, b.Name1, a.City, b.city , a.salary, b.Salary FROM
    employee AS a, employee  AS b
WHERE a.City = b.City AND a.Salary > 50000;
SELECT DISTINCT
    b.Name1, b.Name1, a.City, b.city , a.salary, b.Salary FROM
    employee AS a, employee  AS b
WHERE a.City = b.City AND a.Salary > 50000 and b.name1 <> a.name1;
select * from employee;
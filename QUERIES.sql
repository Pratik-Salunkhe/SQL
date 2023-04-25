use db2;
#select * from customer.info custormer.customer;
select * from customer;

##################################### Create index #######################################
create unique index cust_index1 on customer(cust_id);
show index from customer;

create index cust_index2 on customer(cust_id);
show index from customer;

alter table customer add fulltext cust_index3(cust_id);
show index from customer;
####################################### DROP Index #########################################
alter table customer drop index cust_index2;
show index from customer;

###################################### Queries ###########################################
select * from customer where city in ('Pratik');
select cust_id from customer where city in ('satara');
select * from customer where cust_id in (select cust_id from customer where city in ('satara'));
##################################### single line sub query #######################################

select * from orders;
select * from orders where cust_id in (select cust_id from customer);

################################### Multiple line query ########################################

select * from orders where cust_id in (select cust_id from customer where city = 'Texas');

################################### Nested SUB QUERY #######################################
SELECT * FROM orders WHERE cust_id IN (SELECT cust_id FROM customer WHERE city IN
									(SELECT city FROM customer WHERE cust_name IN ('Harry' , 'jack', 'George')));
                                    
################################ CORELATED SUB QUERY #######################################
select * from orders where cust_id in (select cust_id from customer where orders.cust_id = customer.cust_id);

##################################################################################################################
######################################**************EXAMPLE***************########################################
##################################################################################################################
use mydb1;
show tables;
create table nagaland (cust_id int, sales1 int);
insert into nagaland values (1,100),(2,200),(3,300),(4,450),(5,550);
select * from nagaland;

create table pune (custid int, sales2 int, name1 char);
insert into pune values (2,560,'a'),(3,587,'b'), (4,254,'c'), (5,2158,'d'), (6,210,'e');
select * from pune;


select * from pune where sales2 < (select avg(sales1) from nagaland where custid in (select cust_id from nagaland where pune.custid = nagaland.cust_id));

select cust_id from nagaland, pune where pune.custid = nagaland.cust_id; # step 1 of example
select avg(sales1) from nagaland; # step 2 of example
select * from pune where sales2; # step 3 of example 


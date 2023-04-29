use db2;
use customer;
select * from orders;
################################################ Create view ############################################

create or replace view  cust_view1 as select cust_id, cust_name from customer;
select * from cust_view1;


insert into customer values (108,'pratik','S','satara','8888376624'); # any such changes in base table are reflected in views
select * from cust_view1;

############################################# VERTICAL VIEW ################################################
create or replace view cust_view2 as select cust.cust_id, cust.cust_name, ord.order_id, ord.shipper_id from customer as cust, orders as ord;
select *  from cust_view2;

############################################ HORIZONTAL VIEW ###############################################

select * from customer;
create or replace view horizantal_view1 as select * from customer where cust_name in ('Pratik','Jack'); 
select * from horizantal_view1;

######################################### Combo/ column and row subset view ####################################
create or replace view combo_view1 as select cust_id, cust_name from customer where cust_name in ('Pratik','Jack');
select * from combo_view1;

######################################## Group views #########################################################
select * from employee;

CREATE OR REPLACE VIEW group_view1 (city , number_of_employee , total_salary , max_salary , min_salary , avg_salary) AS
    SELECT  city, COUNT(*), SUM(Salary), MAX(Salary), MIN(Salary), avg(salary) FROM employee GROUP BY city;
    
 select * from group_view1;
   
########################################### DATA DEFINATION LANGUAGE ###########################################

# CREATE 
# DROP
# TRUNCATE
# ALTER
# RENAME


################# CREATE DATABASE #################

create database mydb1;
show databases;

################# DROP DATABASE #################

DROP database mydb1;
show databases;

################# USE DATABASE #################

use mydb1;

################# CREATE TABLE #################

create table  imarticus5 (Name char(20) ,Age int,Adress Varchar(30),email varchar(100) unique,mobile bigint unique);
select * from imarticus5;

################# DROP TABLE #################

DROP TABLE imarticus5;
show tables;

################# TRUNCATE TABLE #################

truncate table imarticus5;
show tables;

################# ALTER TABLE #################

insert into identyinfo (IdentityName,Birthdate,identityAdress,email,Mobile) values ('pratik',24,'satara','salunkhepratik@gmail.com',8855376624),
('Vijay', 26,'kolhapur', 'Vijaypatil@gmail.com',8300838484),
('ram',24,'hinjevadi','ram12@gmail.com',4785965876);
select * from identyinfo;
show tables;
alter table identyinfo change Birthdate age int;
select * from identyinfo;

################# RENAME TABLE #################

rename table identityinfo to identity_info;
show tables;



















#######    Modify    #######
# if we want to modify the conditions or the data type of the coloum then we used modify

use mydb1;
create table  Pratikk(Name1 char(20) ,Age int,Adress Varchar(30),email varchar(100) unique,mobile bigint unique);
select * from Pratikk;
insert into Pratikk (Name1,Age,Adress,email,Mobile) values 
('pratik',24,'satara','salunkhepratik99@gmail.com',8888376624);
select * from Pratikk;
alter table Pratikk change age Birthday int; # change is used to change the coloum name
select * from Pratikk;
alter table Pratikk modify Birthday Varchar(30); #  we can change the int value to char
insert into Pratikk (Name1,Birthday,Adress,email,Mobile) values 
('pratiks','wed','sataraa','saalunkhepratik99@gmail.com',8888376627);
select * from Pratikk;

#####  to add new column in table    ####

alter table Pratikk add education varchar(50);
select * from Pratikk;

###  If we want to add the colum at the specific place in between two column   ###
###  By using after function  ###

alter table Pratikk add Marks varchar(20) after mobile ;
select * from Pratikk;

###  Primary coloum  ###
alter table Pratikk add primary key(Name1);
select * from Pratikk;

###   Describe table info  in details   ###
describe pratikk;
 
###   Drop a colunm    ###

alter table Pratikk drop education;
select * from Pratikk;
  
###   to rename table name   ###

rename	 table	pratikk to salunkhe;
select * from Pratikk;
select * from salunkhe;


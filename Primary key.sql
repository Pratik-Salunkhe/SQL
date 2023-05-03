# Primary key

use mydb1;
create table  imarticus7 (Name char(20) Not null ,Age int,Adress Varchar(30),email varchar(100) unique,mobile bigint unique, primary key(Name));
select * from imarticus7;

insert into imarticus7 (Name,Age,Adress,email,mobile) values('pratik',24,'satara','salunkhepratik99@gmail.com',8888376624),
															('pratik', 26,'kolhapur', 'Vijaypatil3116@gmail.com',8308838484),
															('ram',27,'hingoli','ram13@gmail.com',124567890);
select * from imarticus7
######################## sorting algorithm ####################
use mydb1;
select * from salunkhe;	


select * from salunkhe order by Marks;  #  arrange the column by assending order
select * from salunkhe order by Marks desc; # arrange the column by descending order

select * from salunkhe order by Marks desc, adress asc; # sorting the colunm by condition of different column

################  Agreation function  ####################
##########################################################

############ count function ################

select count(Education) from salunkhe;
select count(Marks) from salunkhe; # as there is null value in table hence it is showing count 5

########### distinct function  #################
select count(distinct(Education)) from salunkhe;  # gives only unique count

############ Min / Max  also with where conditions ###########

select min(birthday) from salunkhe; # gives minimum value from column 

select max(birthday) from salunkhe; # gives maximum value from table
select max(birthday) from salunkhe where Adress = 'wardha'; # by using where condition 

######################## GROUP BY FUNCTION #########################
select Marks from salunkhe;
select Marks from salunkhe group by Marks;
select Name1, max(Marks)from salunkhe group by Name1;
select Name1, Max(Marks), sum(Marks) from salunkhe group by Name1 ;


insert into salunkhe (Name1,Birthday,Adress,email,Mobile,Marks,education) values ('yoga','28','wardha','yogu@gmail.com',8888456001,null,'BTech.');
select * from salunkhe;
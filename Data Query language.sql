##########################   Data query language   ######################
use mydb1;
select distinct Name1 from salunkhe;     # single colunmn
select * from salunkhe;					 # all table
select Name1,Birthday,Adress from salunkhe; 
select Name1,Adress,Birthday from salunkhe;

#########################   where conditions  ###################

select Marks from salunkhe where Marks <= '78%';
select * from salunkhe where Name1 = 'Pratik' and Marks = '75%';

#########################  Between clause  ######################
insert into salunkhe (Name1,Birthday,Adress,email,Mobile,Marks,education) values ('pratikk','24wed','sangli','salunkhek99@gmail.com',8888376024,'76%','BTech.');
select * from salunkhe where Marks between '76%' and '78%' ;
select * from salunkhe where Marks is null;

#######################   Like clause  ###########################
select * from salunkhe where  Name1 like 'pra%'  ;   # find out the names which starts with 'pra'
select * from salunkhe where  Name1 like '%k'  ;  # find outs the name which ends with 'k'
select * from salunkhe where  Name1 like '%a%'  ; # find out the name which has letter 'a' in it
select * from salunkhe where  Education like 'B_' ###### underscore specifies 1 character only

######################  wild card  ####################################### sorting algorithm ####################
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


select * from salunkhe;	


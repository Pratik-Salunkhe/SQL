######################   Data Modification language  ######################

use mydb1;
select * from salunkhe;

######################  insert values in table column  #####################

insert into salunkhe values ('ram', 27, 'hingoli','ram@gmail.com', 1245451215, '78%', 'BTech.');
select * from salunkhe;

#####################  update cell records based on conditions ######################
update salunkhe set Marks = '75%' where Name1 = 'pratik'or Name1='pratiks';
select * from salunkhe;

###################  delete row record based on conditions  ######################
delete from salunkhe where Name1 = 'pratiks';
select * from salunkhe;

##################  update clause  ################
alter table salunkhe add Education varchar(20) ;
update salunkhe set education = 'BTech.' where Name1 in ('Pratik', 'Vijay');
select * from salunkhe;
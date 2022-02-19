use mytestdb

create table mytesttable (

rolno int,
firstname varchar(50),
lstname varchar(50)
)

select rolno,firstname,lastname from mytesttable

insert into mytesttable(rolno, firstname,lastname)
values (1,'Paul','Juverdeanu'),
		(2,'Ernest','Juverdeanu'),
		(3,'Karoline','Juverdeanu'),
		(4,'Izabella','Fejer');
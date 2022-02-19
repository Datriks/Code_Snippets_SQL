create table exercise (

	id int identity primary key not null,
	type_1 TEXT,
	minutes_1 int,
	calories int,
	heart_rate int);

insert into exercise (type_1,minutes_1,calories,heart_rate)
values ('bike',30,100,110),
		('biking',10,30,105),
		('dancing',15,200,120);

select * from exercise;
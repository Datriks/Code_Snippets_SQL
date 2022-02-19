create table Swimming (

	id int identity primary key not null,
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	Age int not null,
	Competition varchar(50) not null,
	DateComp date not null,
	Club varchar(50) not null
);
alter table Content 
ADD ID int primary key not null,
Date_of_birth date not null,
Street varchar(50) not null,
Post_Code numeric(8) not null,
City varchar(50) not null,
County varchar(50) not null,
Country varchar(50) not null
;
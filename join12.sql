create database deliverycompanyabc
use deliverycompanyabc

create table students
("student_id" int not null,
"student_name" varchar(45) not null,
primary key ("student_id"));


create table scores
("exam_id" int not null,
"student_id" int not null,
"student_score" int not null,
primary key(exam_id));

insert into students
values 
(101,'Jack'),
(102,'John'),
(103,'Marry'),
(104,'Rebeca'),
(105,'Davis'),
(106,'Alisa');

insert into scores values
(12,101,85),
(22,101,92),
(32,103,96),
(42,104,73),
(52,106,80),
(62,107,88);













create database students_details;

use students_details;

create table students(id int primary key auto_increment, 
register_no int unique not null,
name varchar(50) not null, 
total_mark int not null,
date_of_birth date not null);

insert into students (register_no, name, total_mark, date_of_birth) values 
(123456, "student1", 35, '2003-10-21'),
(124567, "student2", 38, '2001-06-17'),
(176534, "student3", 40, '2004-07-20');

select * from students;

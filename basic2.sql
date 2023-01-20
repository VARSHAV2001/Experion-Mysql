create database experion_software;

use experion_software;

create database if not exists experion_software;

drop database experion_software;

create schema experion_software;

drop schema experion_software;

create table users(
name varchar(50),
email varchar(50),
age int );

insert into users (name, email, age) values 
('user1', 'user1@gmail.com', 22),
('user2', 'user2@gmail.com', 23),
('user3', 'user3@gmail.com', 21);


select * from users;

drop table users;

create table users(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(100) not null unique,
age int not null default 18 check(age >= 18),
country varchar(10) not null default 'IN');

insert into users(name, email, age, country) values
('user1', 'user1@gmail.com', 25, 'India'),
('user2', 'user2@gmail.com', 23, 'UK'),
('user3', 'user3@gmail.com', 24, 'US'),
('user4', 'user4@gmail.com', 26, 'UK');

desc users;

insert into users(name, email, age, country) values
('', 'user5@gmail.com', 26, 'UK');

insert into users(name, email, age, country) values
('user7', 'user7@gmail.com', 26, 'UK');

select * from users limit 2;

select * from users limit 2 offset 2;








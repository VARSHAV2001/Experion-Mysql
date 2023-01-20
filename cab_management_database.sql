create database cab_booking_system;

use cab_booking_system;

create table `cab_details`(
`cab_no` int primary key,
`cab_model` varchar(50) not null,
`cab_description` varchar(100) not null,
`cab_capacity` int not null
);

drop table `cab_details`;

insert into `cab_details`(`cab_no`,`cab_model`,`cab_description`,`cab_capacity`) 
values (12345,"Maruti Suzuki","Affordable price tag and impressive performance",4),
(23543,"Hyundai Aura","Its superior comfort and performance",3),
(53324,"Maruti Suzuki Celerio","It is quite comfortable for 3-4 passengers",4);


create table passenger(
passenger_id int primary key auto_increment,
name varchar(50) not null,
username varchar(30) not null,
email varchar(30) not null unique,
password varchar(20) not null,
gender varchar(10) not null,
mobile_no bigint not null,
address varchar(100) not null,
date_of_birth date
);

drop table passenger;

insert into passenger (passenger_id,name,username,email,password,gender,mobile_no,address,date_of_birth)
values (1001,"Sam Curren","sam1999","samcurren@gmail.com","Sam@1999","male",9988776655,"SC11 Villa","1999-10-04"),
(1002,"Ann Thomas","ann2000","annthomas@gmail.com","Ann@2000","Female",8877665544,"AN villa","2000-04-07"),
(1003,"Helen John","helen1998","helen@gmail.com","Helan@1998","Female",7766554433,"HJ Villa","1998-08-11");

select * from passenger;

create table cab_routes(
route_id int primary key,
route_from varchar(50) not null,
route_to varchar(50) not null,
route_rate int not null
);

drop table cab_routes;

insert into cab_routes (route_id,route_from,route_to,route_rate) 
values (564,"Kochi","Kakkanad",300),
(654,"kakkanad","Palarivattam",250),
(646,"Aluva","Kochi",400);

select * from cab_routes;


create table drivers 
(driver_id int primary key,
driver_name varchar(25) not null,
driver_address varchar(100) not null,
driver_email varchar(25) unique,
driver_phone bigint not null,
driver_gender varchar(10) not null,
driver_vehicle varchar(30) not null,
driver_license varchar(20) not null);

insert into drivers (driver_id,driver_name,driver_address,
driver_email,driver_phone,driver_gender,driver_vehicle,driver_license)
values (765,"John","JS12 Villa","john@gmail.com",987654329,"Male","Maruti Suzuki","ad5332fd75"),
(753,"Jack","AED254 Villa","jack@gmail.com",8796534567,"Male","Hyundai Aura","324dgfy57"),
(435,"Jonny","SK356 Villa","jonny@gmail.com",5799897890,"Male","Maruti Suzuki Celerio","es65324gfhg");

select * from drivers;

create table cab_booking(
booking_id int primary key auto_increment,
passenger_id int,
driver_id int,
route_id int,
Date_if_booking date not null,
time_of_booking time not null,
date_of_travel date not null,
time_of_travel time not null
);

alter table cab_booking add constraint 
fk_bc_cs foreign key (passenger_id) 
references passenger(passenger_id);


alter table  cab_booking add constraint 
fk_bc_pc foreign key (route_id)
 references cab_route(route_id);
 
 alter table  cab_booking add constraint 
fk_bc_pc foreign key (driver_id)
 references drivers(driver_id);
 
 
 drop table booked_cabs;
 
 insert into cab_booking (booking_id,passenger_id,driver_id,route_id,
 Date_if_booking,time_of_booking,date_of_travel,time_of_travel) 
 values (1500,1001,765,564,"2023-01-19","09:15","2023-01-20","04:00"),
 (1501,1002,753,654,"2023-01-21","12:15","2023-01-22","05:30"),
 (1502,1003,435,646,"2023-01-24","08:20","2023-01-25","09:00");
 
 
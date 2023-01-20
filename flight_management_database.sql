create database flight_ticket;

use flight_ticket;

create table flight(
flight_no int primary key, 
flight_name varchar(100) not null, 
flight_description varchar(250) not null,
flight_capacity int not null
);


insert into flight (flight_no,flight_name, flight_description, flight_capacity)
 values (134476,"indigo", "Domestic and international and cargo flights ", 500),
 (546787,"AirIndia", "Domestic and international flights", 600),
 (234677,"SpiceJet", "Domestic and international flights", 550);
 
 select * from flight;
 
 drop table flight;z
 
 
 create table passenger (
passenger_id int primary key auto_increment, 
name varchar(30) not null,
username varchar(30) not null,
email varchar(50) not null,
password varchar(20) not null,
mobile_number bigint not null,
address varchar(100) not null,
date_of_birth date
);

insert into passenger (passenger_id,name,username,email,password,mobile_number,address,date_of_birth) 
values (111,"Varsha","varsha@2001","varsha@gmail.com","Varsha1234",9988776655,"VV Bhavan", "2001-06-17"),
(112,"Nimisha","nimisha@2000","nimisha@gmail.com","Nimisha1234",8877665544,"NE Nivas","2000-10-19"),
(113,"Akshaya","akshaya@2001","akshaya@gmail.com","Akshaya1234",7766554433,"AK Nivas","2001-07-16");

select * from passenger;

truncate table passenger;

drop table passenger;

create table flight_schedule(
schedule_id int primary key auto_increment,
flight_from varchar(50) not null,
flight_to varchar(50) not null,
flight_date date,
flight_time time,
cost int not null,
flight_no int
);

alter table flight_schedule add constraint fk_fs_fn foreign key (flight_no) references flight(flight_no);


insert into flight_schedule (schedule_id,flight_from,flight_to,flight_date,flight_time,cost,flight_no) 
values(1001,"Trivandrum","Kochi","2023-01-24","02:30",7000,134476),
(1002,"Trivandrum","Delhi","2023-01-28","09:00",12000,546787),
(1003,"Mumbai","Delhi","2023-01-30","12:00",10000,234677);

select * from flight_schedule;

drop table flight_schedule;


create table booked_ticket (
ticket_no int primary key,
date_of_booking date,
date_of_travel date,
schedule_id int,
flight_from varchar(50) not null,
flight_to varchar(50) not null,
flight_time time,
boarding_time time,
flight_seat varchar(10) not null,
passenger_id int
);


alter table booked_ticket add constraint fk_bt_fk foreign key 
(schedule_id) references flight_schedule(schedule_id);

alter table booked_ticket add constraint fk_bt_pt foreign key 
(passenger_id) references passenger(passenger_id);

drop table booked_ticket;

insert into booked_ticket (ticket_no,date_of_booking,date_of_travel,
schedule_id,flight_from,flight_to,flight_time,boarding_time,flight_seat,passenger_id)
values (098687,"2023-01-05","2023-01-24",1001,"Trivandrum","Kochi","02:30","01:00","2AC",111),
(977687,"2023-01-15","2023-01-28",1002,"Trivandrum","Delhi","09:00","07:00","3SC",112),
(678965,"2023-01-20","2023-01-30",1003,"Mumbai","Delhi","12:00","10:30","4SC",113);


select * from booked_ticket;






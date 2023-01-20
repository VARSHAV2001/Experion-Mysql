use experion_software;

-- **** with primary key ****

create table address(
id int auto_increment, address varchar(250) not null,
name varchar(10) not null,
pin int not null,
user_id int,
primary key(id)
);


drop table address;

-- **** give primary key externaly****

create table address(
id int, address varchar(250) not null,
name varchar(10) not null,
pin int not null,
user_id int
);

alter table address add constraint pk_id primary key(id);

alter table address modify column id int auto_increment;

-- ****  give the foreign key****

create table address(
id int, address varchar(250) not null,
name varchar(10) not null,
pin int not null,
user_id int,
constraint fk_user_id foreign key (user_id)
references users(id)
);


-- **** give the foreign key external****

create table address(
id int, address varchar(250) not null,
name varchar(10) not null,
pin int not null,
user_id int
);

alter table address add constraint fk_user_id foreign key (user_id) references users(id);

-- ****give the unique key****

create table address(
id int, address varchar(250) not null,
name varchar(10) not null,
pin int not null,
user_id int
);


-- ****using unique key external*****
create table address(
id int, address varchar(250) not null,
name varchar(10) not null,
pin int not null,
user_id int, 
);

alter table address add constraint uq_name_user_id unique key (name, user_id);


-- create table and give constraints

create table address(
id int, address varchar(250) not null,
name varchar(10) not null,
pin int not null,
user_id int
);

alter table address add constraint pk_id primary key(id);

alter table address modify column id int auto_increment;

alter table address add constraint fk_user_id foreign key (user_id) references users(id);

alter table address add constraint uq_name_user_id unique key (name, user_id);


-- insert data

insert into address(address, name, pin, user_id) values 
('sdfsgfd', 'user1', 123, 1),
('vcfhghg', 'user2', 143, 1),
('ghfhghj', 'user3', 165, 3);

select * from address; 

truncate table address;

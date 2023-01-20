create database Developers;

use Developers;

create table Develop(id int, name varchar(20), email varchar(20), age tinyint, phoneno numeric(10));

insert into Develop(id,name,email,age,phoneno) 
values (1,"John","John@gmail.com",30,9988776655),
(2,"Christina","Christina@gmail.com",25,8877665544),
(3,"Sam","Sam@gmail.com",28,7766554433),
(4,"Joseph","Joseph@gmail.com",30,6655443322);

select * from Develop;

select name from Develop;

truncate table Develop;

drop table Develop;



select * from Develop where name="Sam";

select name from Develop where age <= 30 and age > 25;

update Develop set phoneno = 1122334455 where name="Sam";

delete from Develop where name="Joseph";

insert into Develop(id,name,email,age,phoneno) values (4,"Joseph","Joseph@gmail.com",30,6655443322);




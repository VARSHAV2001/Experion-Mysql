use experion_software;

select *  from address where user_id=(
select id from users where email='user1@gmail.com');

select *, count(id) from users group by country;


select * from users where id=(
select user_id from(
select user_id, count(id) as total 
from address group by user_id order by total desc limit 1) as temp
);


select user_id, count(id) as total 
from address group by user_id order by total desc limit 1;

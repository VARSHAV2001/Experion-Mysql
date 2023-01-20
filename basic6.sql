select users.id, users.name, email, address, pin from users 
inner join address
on users.id = address.user_id;


-- ****View****

create view newview as 
select * from address where id='2';

select * from newview;

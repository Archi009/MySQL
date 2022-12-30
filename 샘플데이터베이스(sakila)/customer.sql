select last_insert_id();
insert into dev.customers ( name, email, phone, address)
value('John Doea', 'jo12n@mail.com', '010-022-0000', '');
-- value((select max(id)+1 from customers),'John Doea', 'jo12n@mail.com', '010-022-0000', ''); 자동번호 저장으로 설정되지 않았을때 그냥 순서대로 번호 지정하고싶으면사용


update customers set name = '이순신' where id = 2;

delete from customers where id = 2; 

select * from customers;

create user 'dev01'@'%' identified with mysql_native_password by '1234';
grant all privileges on dev.* to 'dev01'@'%' with grant option;
flush privileges;
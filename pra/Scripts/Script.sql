create database pra;

use pra;

create table tbl_user(
	user_id varchar(30) primary key,
	user_password varchar(30),
	user_name varchar(30)
);

select * from tbl_user;

select user_name from tbl_user where user_id
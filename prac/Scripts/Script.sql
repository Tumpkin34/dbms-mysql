create database prac;

use prac;

create table tbl_prac(
	prac_number int auto_increment primary key,
	prac_name varchar(50)
);

truncate table tbl_prac; 

drop table tbl_prac;

select * from tbl_prac;

INSERT INTO tbl_prac
(prac_name)
VALUES('');


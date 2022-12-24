create database test;/*오라클의 hr과 같은 역할의 데이터베이스 생성*/

use test;/*위에서 만든 데이터데이스 사용*/

create table tbl_guest(
/*unsigned 음수를 사용하지 않겠다. (사용하지 않는 음수의 전구가 남비 되니까 그걸 양수로 사용해 자료형의 2배 정도 더큰 값을 사용할 수 있다.*/
/*auto_increment 로우가 채워지면 1부터 자동으로 1씩 증가하여 숫자를 넣는다.*/
   guestNumber int unsigned auto_increment primary key,
   guestId varchar(1000),
   guestPassword varchar(1000),
   guestAge tinyint unsigned
);

select * from tbl_guest;/*테이블의 모든 정보 조회*/

alter table tbl_guest add column(birth date);/*컬럼 추가*/
select* from tbl_guest;
insert into tbl_guest(guestId, guestPassword, guestAge, birth)/*테이블에 데이터 추가*/
values('asd', '124', 20, '2000-12-04');

/*암호화*/
insert into tbl_guest(guestId, guestPassword, guestAge, birth)
						/*암호화하는  메소드 느낌*/
values('hgd', hex(aes_encrypt('4444', 'abc')), 25, '2008-12-04');

/*복호화*/
							/*복호화하는 느낌*/
select guestId, aes_decrypt(unhex(guestPassword), 'abc') from tbl_guest;

/*현재 시퀀스 가져오기*/
/*information_schema.TABLES라는 곳에서  TABLE_SCHEMA = 'test'(이거 안에) and TABLE_NAME = 'tbl_guest'(이거와일치하는) */
/*'AUTO_INCREMENT*/
select `AUTO_INCREMENT` from information_schema.TABLES
where TABLE_SCHEMA = 'test' and TABLE_NAME = 'tbl_guest';
show table status where name='tbl_guest';
show table status;

/*문자열 합치기*/
/*concat = 오라클에서 ||*/
select concat(guestId, '의 나이는 ', guestAge, '살') as 자기소개 from tbl_guest;

/*현재 날짜 : now()*/
select now() from dual;

/*날짜를 string으로 변경 : date_format(시간, '형식')*/
select date_format(now(), '%Y년 %m월 %d일 %H:%i:%s') from dual;

/*NULL일 경우 원하는 값으로 대체 : ifnull(컬럼명, 'null일 경우 값')*/
alter table tbl_guest change birth guestBirth date;
select * from tbl_guest;

update tbl_guest
set guestBirth = null
where guestNumber = 2;

select guestNumber, guestId, guestPassword, guestAge, ifnull(guestBirth, '미정') guestBirth from tbl_guest ;

/*
 * guest 데이터베이스(스키마) 생성
 * tbl_member 테이블 생성
 * 회원번호(auto_increment, PK), 이름, 생일 컬럼 추가
 * 
 * */
create database guest;
use guest;

create table tbl_member(
   memberNumber int unsigned auto_increment primary key,
   memberName varchar(1000),
   memberBirth date
   /*constraint pk_member primary key(memberNumber)*/
);

drop table tbl_member;

select * from tbl_member;

INSERT INTO tbl_member
(memberName, memberBirth)
VALUES('홍길동', '2007-12-04');

/*JDBC*/
drop database test;
drop database guest;

/*회원 테이블
 * 
 * 회원번호
 * 아이디
 * 비밀번호
 * 이름
 * 나이
 * 핸드폰번호
 * 상태
 * 
 * */
create database customer;
use customer;

create table tbl_user(
   userNumber int unsigned auto_increment primary key,
   userId varchar(500) unique,/*unique같은 값은 있을 수 없다.*/
   userPassword varchar(500),
   userName varchar(500),
   userAge tinyint unsigned,
   userPhoneNumber varchar(500) unique,
   userStatus char(1) default 0/*default 0 : 값을 안넣으면 알아서 0으로 넣어준다.*/
);

drop table tbl_user;

alter table tbl_user drop constraint userPhoneNumber;/*userPhoneNumber의 제약조건을 없앤다*/

select * from tbl_user;
alter table tbl_user add userBirth date;

INSERT INTO tbl_user
(userId, userPassword, userName, userAge, userPhoneNumber, userBirth)
VALUES('hds', '1234', '한t동석', 20, '01012341234', '2000-12-04');


create database user;
use user;
create table tbl_guest(
/*unsigned 음수를 사용하지 않겠다. (사용하지 않는 음수의 전구가 남비 되니까 그걸 양수로 사용해 자료형의 2배 정도 더큰 값을 사용할 수 있다.*/
/*auto_increment 로우가 채워지면 1부터 자동으로 1씩 증가하여 숫자를 넣는다.*/
   guestNumber int unsigned auto_increment primary key,
   guestId varchar(1000),
   guestPassword varchar(1000),
   guestAge tinyint unsigned
);

select * from tbl_guest;/*테이블의 모든 정보 조회*/

alter table tbl_guest add column(birth date);/*컬럼 추가*/
INSERT INTO tbl_guest
(guestId, guestPassword, guestAge, birth)
VALUES('aa', 'ss', 0, '2020-01-01');

select auto_increment from information_schema.TABLES
where TABLE_SCHEMA ='user' and TABLE_NAME ='tbl_guest';











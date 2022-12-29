# MySQL
   웹 사이트와 다양한 애플리케이션에서 사용되는 DBMS이다.
   오라클은 관리 비용이 고가이지만 MySQL은 저가형 데이터베이스이다.
   문법이 간결하고 쉬우며, 메모리 사용량이 현저히 낮아서 부담없이 사용 가능하다.
   
# MySQL 기초문법
- 데이터베이스 생성<br>
  create database [데이터베이스명];

- 사용할 데이터베이스 선택<br>
  use [데이터베이스명];

- CRUD 작성(oracle과 유사함)

# MySQL 자료형
- 정수<br>
  tinyint<br>
  smallint<br>
  mediumint<br>
  int : 보통 이걸 쓰자!<br>
  bigint<br>

- 실수<br>
  decimal(m, d) : m자리 정수, d자리 소수점으로 표현<br>

- 날짜<br>
  date : 1000-01-01 ~ 9999-12-31(3byte)<br>
  time : -838:59:59 ~ 838:59:59(3byte)<br>
  datetime : 1000-01-01 00:00:00 ~ 9999-12-31 23:59:59(8byte)<br>

- 문자<br>
  char(m) : 고정 길이 문자열(0\~255)<br>
  varchar(m) : 가변 길이 문자열(0\~65535)<br>

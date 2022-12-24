create table tbl_reply(
   reply_number int unsigned auto_increment primary key,
   reply_content varchar(500),
   reply_date datetime default now(),
   member_number int unsigned,
   board_number int unsigned,
   constraint fk_reply_member foreign key(member_number) 
   references tbl_member(member_number) on delete cascade,
   constraint fk_reply_board foreign key(board_number) 
   references tbl_board(board_number) on delete cascade
);

select * from tbl_reply;
select * from tbl_board order by 1 desc;

insert into tbl_reply (reply_content, member_number, board_number)
values('개발 너무 좋다2', 4, 2062);

SELECT reply_number, reply_content, reply_date, m.member_number, board_number
from tbl_member m join tbl_reply r;


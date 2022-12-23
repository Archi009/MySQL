create table tbl_member(
no int not null primary key, 
name varchar(10),
tel varchar(10)
);
insert into tbl_member(no, name, tel)values (100, '홍길동' , '010-222');
insert into tbl_member(no, name, tel)values (200, '이순신' , '010-242');

create table tbl_board (
board_no int not null  primary key,
title varchar(100),
member_no int,
wdate date);
insert into tbl_board (board_no, title, member_no, wdate)
				values(1,'자바',100,'2002-12-01');
insert into tbl_board (board_no, title, member_no, wdate)
				values(2,'spring',100,'2002-12-02');
insert into tbl_board (board_no, title, member_no, wdate)
				values(3,'SQL',200,'2002-12-02');
select count(*) from tbl_member;
select count(*) from tbl_board;
select tbl_member.*, tbl_board.* from tbl_member, tbl_board;
select tbl_member.*, tbl_board.* from tbl_member, tbl_board order by no ;

select tbl_member.*, tbl_board.* from tbl_member, tbl_board 
								where tbl_member.no = tbl_board.member_no;


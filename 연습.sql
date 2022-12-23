create table test2(
id int not null primary key,
col1 int null,
col2 float null,
col3 varchar(45) null
);
/* 번호(*), 이름(*), 전화번호, 가입일자, 나이 
*/
drop table member;

create table member(
	no int not null primary key,
    name varchar(25) not null,
    tel varchar(14) ,
    sign date ,
	age int    
);
/*101, 이순신, 010-111-2222*/
insert into member (no, name) values (100, "둘리");
insert into member (no, name, tel) values (101, "이순신", "010-111-2222");
update member set tel = "010-222-3333" where no = 101;
delete from member where no = 100;

select *
from member;
/*게시판 글번호, 작성자, 제목, 내용, 작성일자, 조회수 */
create table bord (
no int not null primary key,
name varchar(25) not null,
head varchar(20) not null,
body long varchar not null,
mDay varchar(10) not null,
count int not null
) ;

/*게시글 등록*/
insert into  bord (no, name, head, body, mDay, count) values (100, "산타", "선물하기", "착한아이목록", "2022-12-23", 2);
/*게시글에서 내용 수정*/
update bord set body = "우는애들은 안 줌" where no = 100;
update bord set count = 100 where no = 100;
/*게시글 삭제*/
delete from bord where no = 100;
select *
from bord;



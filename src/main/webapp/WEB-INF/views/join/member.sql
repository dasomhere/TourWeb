select * from member;
Drop table member;
create table member(
	id varchar2(12) primary key,
	password varchar2(12) NOT NULL,
	name varchar2(10) NOT NULL,
	email varchar2(30) NOT NULL);
	

insert into member values ('xxx','1234','홍길동','xxx@naver.com');
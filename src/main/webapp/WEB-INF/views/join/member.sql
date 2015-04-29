select * from member;

create table member(
	id varchar2(12) primary key,
	password varchar2(12) NOT NULL,
	name varchar2(10) NOT NULL,
	email varchar2(30) NOT NULL);
	

	
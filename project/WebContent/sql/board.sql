select * from tab;
drop table board;
-- foreign key(현재 테이블 컬럼) references tb_user(참조할 테이블 컬럼)
-- alter table [테이블명] add constraint [외래키 별칭] foreign key (외래키 적용할 컬럼명) references [부모테이블명] (참조할 컬럼)



create table board(
	b_num number,
	id varchar2(20) not null,
	b_title varchar2(100) not null,
	b_cont varchar2(2000) not null,
	b_img varchar2(100),
	b_reg timestamp not null,
	b_hits number,
	b_mark float,
	primary key(b_num),
	foreign key(id) references member(id)
);
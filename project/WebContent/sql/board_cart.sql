select * from tab;
drop table model2;
select * from seq;
-- foreign key(현재 테이블 컬럼) references tb_user(참조할 테이블 컬럼)
-- alter table [테이블명] add constraint [외래키 별칭] foreign key (외래키 적용할 컬럼명) references [부모테이블명] (참조할 컬럼)



create table model2(
	product_number number,
	p_category varchar2(20) not null ,
	p_name varchar2(50) not null ,
	p_price number not null ,
	p_img varchar2(100) not null ,
	p_subtitle varchar2(50) not null ,
	p_desc varchar2(2000) not null ,
	primary key(product_number)
);

create sequence model2_seq
start with 1
increment by 1
nocache;
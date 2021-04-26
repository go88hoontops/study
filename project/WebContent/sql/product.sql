select * from tab;
drop table product;
select * from product;
select * from seq;

create table product(
	product_number number,
	p_category varchar2(20) not null ,
	p_name varchar2(50) not null ,
	p_price number not null ,
	p_img varchar2(100) not null ,
	p_subtitle varchar2(50) not null ,
	p_desc varchar2(2000) not null ,
	primary key(product_number));

create sequence product_seq
start with 1
increment by 1
nocache;	
	
delete from PRODUCT;
DROP SEQUENCE product_seq;

alter table product modify p_price varchar2(9);
alter table product modify p_price number;
alter table product modify p_subtitle varchar2(2000);
alter table product modify p_desc varchar2(4000);



insert into product values(product_seq.nextval,'머그','21 서머 마레 머그 335ml',
'20000','https://image.istarbucks.co.kr/upload/store/skuimg/2021/03/[9300000003079]_20210330145007674.jpg',
'[2021 Summer1 프로모션]
조개 쉐입으로 영롱하게 표현된 355ml 용량의 세라믹 머그입니다.','','21 Summer glitter handle glass 355ml');
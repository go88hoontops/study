select * from tab;
drop table food;
select * from food;
delete  from food;

create table food(
	product_number number,
	f_category varchar2(20) not null ,
	f_name varchar2(50) not null ,
	f_desc varchar2(2000) not null,
	f_price number not null ,
	f_img varchar2(100) not null ,
	f_subtitle varchar2(50) not null,
	f_calorie number,
	f_sugar number,
	f_protein number,
	f_natrium number,
	f_fat number,
	f_caffeine number,
	primary key(product_number));

create sequence starb_seq
start with 1
increment by 1
nocache;

select * from tab;
drop table store;
-- foreign key(현재 테이블 컬럼) references tb_user(참조할 테이블 컬럼)



create table store(
	store_code number,
	s_name varchar2(50) not null,
	s_category varchar2(20) not null,
	s_wt varchar2(20) not null,
	s_adds varchar2(50) not null,
	s_img varchar2(100) not null,
	s_call varchar2(50) not null,
	s_serve varchar2(50) not null,
	s_loc varchar2(50) not null,
	s_park varchar2(50) not null,
	primary key(store_code));


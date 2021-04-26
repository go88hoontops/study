select * from tab;
drop table map;
-- foreign key(현재 테이블 컬럼) references tb_user(참조할 테이블 컬럼)
-- alter table [테이블명] add constraint [외래키 별칭] foreign key (외래키 적용할 컬럼명) references [부모테이블명] (참조할 컬럼)



create table map(
	store_code number,
	x_code float not null,
	y_code float not null,
	primary key(store_code),
	foreign key(store_code) references store(store_code)
);
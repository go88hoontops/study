select * from tab;
drop table cart;
-- foreign key(현재 테이블 컬럼) references tb_user(참조할 테이블 컬럼)
-- alter table [테이블명] add constraint [외래키 별칭] foreign key (외래키 적용할 컬럼명) references [부모테이블명] (참조할 컬럼)

select * from CART;

create table cart(
	c_num number,
	id varchar2(20) not null,
	product_number number not null ,
	c_pick varchar2(20),
	c_cart varchar2(20),
	c_recent varchar2(20),
	primary key(c_num),
	foreign key(id) references member(id),
	foreign key(product_number) references product(product_number)
	);

alter table cart add foreign key (product_number) references food(product_number);

create sequence cart_seq
start with 1
increment by 1
nocache;
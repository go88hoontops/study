select * from tab;
drop table orders;
-- foreign key(현재 테이블 컬럼) references tb_user(참조할 테이블 컬럼)



create table orders(
	order_number number,
	id varchar2(20) not null,
	store_code number not null,
	c_num number,
	product_number not null,
	o_price number not null,
	o_quantity number not null,
	o_paytype  varchar2(20) not null,
	o_totalprice number not null,
	o_req varchar2(200),
	o_confirm varchar2(20) not null,
	o_check timestamp not null,
	primary key(order_number),
	foreign key(id) references member(id),
	foreign key(store_code) references store(store_code),
	foreign key(c_num) references cart(c_num)
	);

create sequence order_seq
start with 1
increment by 1
nocache;

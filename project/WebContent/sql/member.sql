select * from tab;
drop table member;
-- foreign key(현재 테이블 컬럼) references tb_user(참조할 테이블 컬럼)

select * from MEMBER;

create table member(
	id varchar2(20),
	m_pw varchar2(20) not null,
	m_nick varchar2(20) not null,
	m_name varchar2(20) not null,
	m_birth varchar2(50) not null,
	m_phone varchar2(50) not null,
	m_mail varchar2(50) not null,
	m_adds varchar2(100) not null,
	m_join timestamp not null,
	m_conn timestamp not null,
	primary key(id));
	





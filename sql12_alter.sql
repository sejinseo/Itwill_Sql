-- DDL(Data Definition Language): create, truncate, drop, alter
-- alter user scott account unlock;
-- alter user scott identified by tiger;

-- alter table 테이블이름 변경 내용;

-- 이름 변경(rename): (1) 테이블 이름 변경 (2) 컬럼 이름 변경 (3) 제약 조건 이름 변경
-- (1) 테이블 이름 변경: students4 --> students2
alter table students4 rename to students2;

alter table memberid rename to members;

-- (2) 컬럼 이름 변경: students2.sname --> students2.stu_name
alter table students2 rename column sname to stu_name;

-- (3) 제약 조건 이름 변경:
-- 제약 조건들을 관리하는 메타(meta) 테이블(user_constraints)
desc user_constraints;
select CONSTRAINT_NAME, TABLE_NAME from user_constraints;
select constraint_name, constraint_type 
from user_constraints 
where table_name = 'EX01'; -- 제약 조건 이름/타입(종류)

-- ex01 제약 조건 SYS_c007007 이름을 PK_EX01로 변경
alter table ex01 rename constraint SYS_c007007 to PK_EX01;

-- 추가(add): (1) 컬럼 (2) 제약 조건
-- (1) 컬럼 추가: alter table 이름 add 컬럼 데이터타입 [기본값 제약 조건];
-- (2) 제약 조건 추가: alter table 이름 add constraint 제약조건이름 내용;
alter table market add mk_select varchar2(50);

alter table market add deal varchar2(20);


alter table market add primary key(mk_no);
alter table market add no number primary key;

alter table market add no number(3);


alter table market drop column no;



alter table market drop column no;
alter table members 
add constraint nn_membername check (membername is not null);

alter table market add no number;

alter table ex01 
add col_added date default sysdate;

alter table members
add constraint pk_memberid primary key;

alter table ex01
add constraint nn_ex01 check (col_added is not null);

alter table market add constraint mk_deal check (deal is not null);

-- 삭제(drop): (1) 컬럼 (2) 제약 조건
-- (1) 컬럼 삭제: alter table 이름 drop column 컬럼이름;
-- (2) 제약 조건 삭제: alter table 이름 drop constraint 제약조건 이름;

alter table market add no number(3);
alter table market drop column no;

alter table market drop column deal;

alter table market drop column mk_select;
alter table market modify no not null;

alter table members drop constraint nn_membername;
alter table writedb drop column wd_no;

alter table members add primary key(memberid);

alter table ex01 drop column ex_col;
alter table ex01 drop constraint nn_ex01;

-- 변경(modify): 컬럼의 내용(데이터 타입, null 가능 -> not null)
-- 제약 조건의 내용을 변경하는 modify 구문은 제공되지 않음.
-- 제약 조건 내용 변경: drop constraint --> add constraint
alter table market modify updatetime timestamp default sysdate;

alter table market modify no number(3) not null;
alter table members modify memberid varchar2(15 char);
alter table members modify memberpassword varchar2(20 char);
alter table members modify membername varchar2(10 char);

-- ex01 테이블의 ex_name 컬럼의 데이터 타입을 varchar2(100 byte)로 변경
alter table ex01 modify ex_name varchar2(100 byte);

alter table memberid modify membername varchar2(30 byte);

create table market (
    title        varchar2(30 char) not null,
    content      varchar2(100 char) not null,
    updatetime   date default sysdate
);





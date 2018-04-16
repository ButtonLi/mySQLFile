create database db_book
use db_book;
drop table if exists t_book;
drop table if EXISTS t_booktype;

CREATE table t_book(
	id int(11) not null AUTO_INCREMENT,
	bookName varchar(20) default null,
	price decimal(6,2) default null,
	author varchar(20) default null,
	bookTypeId int(11) default null,
	PRIMARY key(id)
);

insert into t_book(id,bookName,price,author,bookTypeId) values(1,'Java编程思想','100.00','埃史尔',1),(2,'Java从入门到放弃','66.66','李欣',2),(3,'Java开发宝典','45.98','程序猿',1)
insert into t_book(id,bookName,price,author,bookTypeId) values(4,'运动与健康','20.00','Mark',3)
update t_book set bookTypeId=3 where bookTypeId is null
update t_book set bookTypeId=4 where author='李欣'
SELECT * from t_book where bookTypeId is null
create table t_bookType(
	id int(11) not null AUTO_INCREMENT,
	bookTypeName varchar(20) default null,
	PRIMARY key(id)
);


insert into t_bookType(id,bookTypeName) values(1,'计算机类'),(2,'文学类'),(3,'体育类')



select * from t_book,t_bookType
select * from t_book,t_bookType where t_book.bookTypeId=t_bookType.id

select bookName,author,bookTypeName from t_book,t_bookType where t_book.bookTypeId=t_bookType.id

select tb.bookName,tb.author,tby.bookTypeName from t_book tb,t_bookType tby where tb.bookTypeId=tby.id

select tb.bookName,tb.author,tby.bookTypeName from t_book tb left join t_bookType tby on tby.id=tb.bookTypeId


select tb.bookName,tb.author,tby.bookTypeName from t_book tb right join t_bookType tby on tby.id=tb.bookTypeId


select * from t_book tb right join t_bookType tby on tby.id=tb.bookTypeId 

select bookName,author,bookTypeName from t_book,t_bookType where t_book.bookTypeId=t_bookType.id and price>20

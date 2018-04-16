use db_book

create table t_pricelevel(
	id int(11) PRIMARY KEY AUTO_INCREMENT,
	pricelevel int,
	price float,
	description varchar(300)
);

insert into t_pricelevel(id,pricelevel,price,description) values('1','1','80.00','价格贵的书');
insert into t_pricelevel(id,pricelevel,price,description) values('2','2','60.00','价格中等的书');
insert into t_pricelevel(id,pricelevel,price,description) values('3','3','40.00','价便宜的书');



//子查询

SELECT * from t_book where bookTypeId in (SELECT id from t_booktype);

SELECT * from t_book where bookTypeId not in (SELECT id from t_booktype);

select * from t_book where price>=(select price from t_pricelevel where pricelevel=1) 

SELECT * from t_book where EXISTS(SELECT * from t_booktype);

SELECT * from t_book where not EXISTS(SELECT * from t_booktype);


SELECT * from t_book where price>= any(SELECT price from t_pricelevel);


SELECT * from t_book where price>= all(SELECT price from t_pricelevel);







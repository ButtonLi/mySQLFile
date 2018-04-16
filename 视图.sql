//视图是一张虚表，从其他表中读取数据放入其中
//创建单表视图
CREATE VIEW v1 as SELECT * FROM t_book;
SELECT * from v1;

CREATE VIEW v2 as SELECT bookName,price from t_book;
select * FROM v2;
//修改列的名称
CREATE VIEW v3(b,p) as SELECT bookName,price from t_book;
SELECT * from v3;

//创建多表视图
CREATE VIEW v4 AS SELECT bookName,bookTypeName FROM t_book,t_booktype WHERE t_book.bookTypeId=t_booktype.id;
SELECT * FROM v4;

CREATE VIEW v5 AS SELECT tb.bookName,tby.bookTypeName FROM t_book tb,t_booktype tby WHERE tb.bookTypeId=tby.id;
SELECT * FROM v5;


//查看视图

DESC v5;

//查看状态
show TABLE STATUS like 'v5';

SHOW CREATE VIEW v5;







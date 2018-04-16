//修改视图
//create or replace或者alter
CREATE OR REPLACE VIEW v1 AS SELECT bookName,price FROM t_book;

ALTER VIEW v1 AS select * FROM t_book;

//视图的更新
INSERT into v1 values(NULL,'java good',120,'feng',1)

UPDATE v1 SET bookName='java very good',price=100;

DELETE FROM v1 WHERE id=5;

DROP VIEW IF EXISTS v1;




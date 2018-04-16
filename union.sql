SELECT id from t_book;
SELECT id from t_booktype;

select id from t_book UNION SELECT id from t_booktype

select id from t_book UNION all SELECT id from t_booktype

SELECT * from t_book where id=1;
SELECT * from t_book tb where tb.id=1;

SELECT tb.bookName from t_book tb where tb.id=1;

SELECT tb.bookName bName from t_book tb where tb.id=1;

SELECT tb.bookName as bName from t_book tb where tb.id=1;




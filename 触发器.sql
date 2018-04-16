CREATE TRIGGER trig_book AFTER INSERT
	ON t_book FOR EACH ROW 
		UPDATE t_booktype set bookNum=bookNum+1 where new.bookTypeId=t_booktype.id;

INSERT into t_book VALUES (NULL,'java好',100,'a',1)



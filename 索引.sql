use db_book;
//***********在创建表的时候创建索引********/
//创建普通索引
create table t_user(
	id int,
	username varchar(20),
	passward varchar(20),
	index (username)
);

//创建唯一性索引，区别在于不允许索引中初夏重复的值
create table t_user2(
	id int,
	username varchar(20),
	passward varchar(20),
	unique index (username)
);
//取别名
create table t_user3(
	id int,
	username varchar(20),
	passward varchar(20),
	unique index index_userName (username)
);

//删除索引
drop index index_username on t_user3;

//建立多列索引
create index index_username_passward on t_user3(username,passward);
//用alter建立索引

alter table t_user3 add index index_username (username)
//alter建立唯一索引
alter table t_user3 add unique index index_username (username)







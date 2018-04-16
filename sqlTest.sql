create table t_student(
	id int primary key auto_increment,
	stuName varchar(60),
	age int,
	sex varchar(20),
	gradeName varchar(60)
);

insert into t_student(id,stuName,age,sex,gradeName) values('1','张三','23','男','一年级');

insert into t_student(id,stuName,age,sex,gradeName) values('6','张三三','23','男','四年级');
insert into t_student(id,stuName,age,sex,gradeName) values('7','张三丰','24','男','五年级');
insert into t_student(id,stuName,age,sex,gradeName) values('8','小张三','26','女','三年级');
insert into t_student(id,stuName,age,sex,gradeName) values('9','哈哈','21','男','一年级');


select * from t_student where age in (21,23);
select * from t_student where age not in (21,23);

select * from t_student where age between 21 and 24;

select * from t_student where age not between 21 and 24;

select * from t_student where stuName like '张三';
select * from t_student where stuName like '_张%';
select * from t_student where stuName like '张三_';


select gradeName from t_student

select distinct gradeName from t_student

select gradeName,group_concat(stuName) from t_student group by gradeName

select gradeName,count(id) from t_student group by gradeName

select gradeName,count(id) from t_student group by gradeName HAVING count(id)>1


select gradeName,count(id) from t_student group by gradeName with ROLLUP

select gradeName,group_concat(stuName) from t_student group by gradeName with ROLLUP

select * from t_student limit 0,5
select * from t_student limit 5,5
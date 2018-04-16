create table t_grade(
	id int primary key AUTO_INCREMENT,
	stuName varchar(60),
	course varchar(50),
	score int
);
select * from t_grade
insert into t_grade(id,stuName,course,score) values('1','张三','语文','90');
insert into t_grade(id,stuName,course,score) values('2','张三','数学','89');
insert into t_grade(id,stuName,course,score) values('3','张三','英语','96');
insert into t_grade(id,stuName,course,score) values('4','李四','语文','89');
insert into t_grade(id,stuName,course,score) values('5','李四','数学','91');
insert into t_grade(id,stuName,course,score) values('6','李四','英语','98');
insert into t_grade(id,stuName,course,score) values('7','王五','语文','80');
insert into t_grade(id,stuName,course,score) values('8','王五','数学','92');
insert into t_grade(id,stuName,course,score) values('9','王五','英语','90');



select COUNT(*) from t_grade
select COUNT(*) as total from t_grade

select stuName, COUNT(*) from t_grade group by stuName

select stuName, sum(score) from t_grade where stuName='张三'
select stuName, sum(score) from t_grade group by stuName 

select stuName, avg(score) from t_grade where stuName='张三'
select stuName, avg(score) from t_grade group by stuName

select stuName, course,MAX(score) from t_grade where stuName='张三'
select stuName, MAX(score) from t_grade group by stuName

select stuName, course,MIN(score) from t_grade where stuName='张三'

select stuName, MIN(score) from t_grade group by stuName



create database internship;
use internship;

create table practice(id int,name varchar(45),dept varchar(20));
insert into practice values(1,'srk','cse');
select * from practice;
insert into practice values(2,'mahesh','eee');
insert into practice values(3,'allen','ece');
select * from practice;

show tables;

create table csv(id int not null,ename varchar(45));
insert into csv (id,ename) values(1,'employee');
drop table csv;

show tables;

truncate practice;
select * from internship.practice;


create table play(outlook varchar(40),temp varchar(40),humidity varchar(20),windy varchar(20),play varchar(20));
desc play;
load data infile 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\PlayTennis.csv' into table play fields terminated by ',' ignore 1 lines;
select * from play;


create table crop(country varchar(45), element varchar(65),years varchar(40),unit varchar(40),value int,footnote varchar(10));
desc internship.crop;
load data infile 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\crop.csv' into table crop fields terminated by ',' ignore 1 lines;
select * from internship.crop;
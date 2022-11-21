-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn

drop table if exists union_student_aa ;

create table
    union_student_aa(
        id int(20) not null primary key comment '学生 id',
        name varchar(255) not null comment '学生姓名'
    ) comment '学生表格 aa（union）';

insert into union_student_aa(id, name) values (10, '张芳');

insert into union_student_aa(id, name) values (11, '陈凯');

insert into union_student_aa(id, name) values (12, '张学友');

insert into union_student_aa(id, name) values (13, '陈真');

insert into union_student_aa(id, name) values (14, '向佳');

insert into union_student_aa(id, name) values (15, '徐州');

drop table if exists union_student_bb ;

create table
    union_student_bb(
        id int(20) not null primary key comment '学生 id',
        name varchar(255) not null comment '学生姓名'
    ) comment '学生表格 bb（union）';

insert into union_student_bb(id, name) values (8, '张芳');

insert into union_student_bb(id, name) values (11, '陈凯');

insert into union_student_bb(id, name) values (12, '张学友');

insert into union_student_bb(id, name) values (13, '陈真');

insert into union_student_bb(id, name) values (14, '向佳');

insert into union_student_bb(id, name) values (15, '温州');

SELECT id, name
from union_student_bb
union
SELECT id, name
from union_student_aa;

SELECT id, name
FROM union_student_bb
UNION ALL
SELECT id, name
FROM union_student_aa;

SELECT id,name FROM union_student_bb HAVING id > 2 
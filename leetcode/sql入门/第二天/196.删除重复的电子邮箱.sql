-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn

DROP TABLE IF EXISTS Person;

CREATE TABLE
    Person(
        id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
        email VARCHAR(255) COMMENT '邮箱'
    ) COMMENT '人表 leetcode';

insert into Person (email)
VALUES ('john@example.com'), ('bob@example.com'), ('john@example.com');

SELECT * FROM Person;

SELECT email FROM Person GROUP BY email;

SELECT p1.*, p2.* FROM Person p1,Person p2;

SELECT p1.* FROM Person p1,Person p2 WHERE p1.email = p2.email ;

SELECT p1.*
FROM Person p1, Person p2
WHERE
    p1.email = p2.email
    AND p1.id > p2.id;

# answer
DELETE p1
FROM Person p1, Person p2
WHERE
    p1.Email = p2.Email
    AND p1.Id > p2.Id
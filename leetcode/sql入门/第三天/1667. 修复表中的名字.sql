-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn

DROP TABLE IF EXISTS Users;

CREATE TABLE
    Users(
        user_id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '用户 id',
        name VARCHAR(255) NOT NULL COMMENT '用户姓名'
    ) COMMENT '用户表（leetcode）';

INSERT INTO Users(name) VALUES ('alice'), ('Bob');

# 我们这到题是查找，所以我们用的关键词就是 select 
SELECT
    user_id,
    CONCAT(
        UPPER(LEFT(name, 1)),
        LOWER(SUBSTRING(name, 2))
    ) AS name
FROM Users
GROUP BY user_id
ORDER BY user_id;
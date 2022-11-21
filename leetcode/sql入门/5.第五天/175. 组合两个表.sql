-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Person;

CREATE TABLE Person(
  PersonId int NOT NULL PRIMARY KEY COMMENT '人的 id',
  FirstName VARCHAR(255) COMMENT '第一个名字',
  LastName VARCHAR(255) COMMENT '最后一个名字'
) COMMENT '人表';

INSERT INTO
  Person(PersonId, LastName, FirstName)
VALUES
  (1, 'Wang', 'Allen'),
  (2, 'Alice', 'Bob');

DROP TABLE IF EXISTS Address;

CREATE TABLE Address(
  AddressId int NOT NULL PRIMARY KEY COMMENT '地址 id',
  PersonId int COMMENT '人物 id',
  City VARCHAR(255) COMMENT '城市 id',
  State VARCHAR(255) COMMENT '地址城市'
) COMMENT '地址表';

INSERT INTO
  Address(AddressId, PersonId, City, State)
VALUES
  (1, 2, 'New York City', 'New York'),
  (2, 3, 'Leetcode', 'California');

SELECT
  FirstName,
  LastName,
  City,
  State
FROM
  Person
  LEFT JOIN Address ON Person.PersonId = Address.PersonId;
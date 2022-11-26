-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Person;

CREATE TABLE Person(Id int, Email VARCHAR(255));

INSERT INTO
  Person(Id, Email)
VALUES
  (1, 'a@b.com'),
  (2, 'c@d.com'),
  (3, 'a@b.com');

SELECT
  Email
FROM
  Person
GROUP BY
  Email
HAVING
  count(Email) > 1;

SELECT
  Email
FROM
  (
    SELECT
      Email,
      COUNT(Email) AS cnt
    FROM
      Person
    GROUP BY
      `Email`
  ) AS statistic
WHERE
  cnt > 1;
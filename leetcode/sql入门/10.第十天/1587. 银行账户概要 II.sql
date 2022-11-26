-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Users;

CREATE TABLE Users(
  account int NOT NULL PRIMARY KEY,
  name VARCHAR(255)
);

INSERT INTO
  Users(account, name)
VALUES
  (900001, 'Alice'),
  (900002, 'Bob'),
  (900003, 'Charlie');

DROP TABLE IF EXISTS Transactions;

CREATE TABLE Transactions(
  trans_id int NOT NULL PRIMARY KEY,
  account int,
  amount int,
  transacted_on date
);

INSERT INTO
  Transactions (trans_id, account, amount, transacted_on)
VALUES
  (1, 900001, 7000, '2020-08-01'),
  (2, 900001, 7000, '2020-09-01'),
  (3, 900001, -3000, '2020-09-02'),
  (4, 900002, 1000, '2020-09-12'),
  (5, 900003, 6000, '2020-08-07'),
  (6, 900003, 6000, '2020-09-07'),
  (7, 900003, -4000, '2020-09-11');

SELECT
  name,
  SUM(amount) AS balance
FROM
  Users u
  LEFT JOIN Transactions t ON u.account = t.account
GROUP BY
  u.account
HAVING
  balance > 9999;
-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Visits;

CREATE TABLE Visits(
  visit_id int NOT NULL PRIMARY KEY,
  customer_id int
);

INSERT INTO
  Visits(visit_id, customer_id)
VALUES
  (1, 23),
  (2, 9),
  (4, 30),
  (5, 54),
  (6, 96),
  (7, 54),
  (8, 54);

DROP TABLE IF EXISTS Transactions;

CREATE TABLE Transactions(
  transaction_id int NOT NULL PRIMARY KEY,
  visit_id int,
  amount int
);

INSERT INTO
  Transactions (transaction_id, visit_id, amount)
VALUES
  (2, 5, 310),
  (3, 5, 300),
  (9, 5, 200),
  (12, 1, 910),
  (13, 2, 970);

SELECT
  customer_id,
  COUNT(customer_id) AS count_no_trans
FROM
  visits
WHERE
  visit_id NOT IN (
    SELECT
      visit_id
    FROM
      transactions
  )
GROUP BY
  customer_id;

SELECT
  customer_id,
  COUNT(customer_id) AS count_no_trans
FROM
  visits v
  LEFT JOIN transactions t ON v.visit_id = t.visit_id
WHERE
  amount IS NULL
GROUP BY
  customer_id;
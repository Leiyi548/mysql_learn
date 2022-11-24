-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders(
  order_number int NOT NULL PRIMARY KEY,
  customer_number int
);

INSERT INTO
  Orders(order_number, customer_number)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 3),
  (5, 4),
  (6, 4);

SELECT
  MAX(customer_number) AS customer_number
FROM
  Orders;

SELECT
  customer_number,
  COUNT(*)
FROM
  Orders
GROUP BY
  customer_number;

SELECT
  customer_number
FROM
  Orders
GROUP BY
  customer_number
ORDER BY
  COUNT(*) DESC
LIMIT
  1;

# 进价
SELECT
  customer_number
FROM
  Orders
GROUP BY
  customer_number
HAVING
  COUNT(*) = (
    SELECT
      COUNT(customer_number) AS 'cnt'
    FROM
      Orders
    GROUP BY
      customer_number
    ORDER BY
      cnt DESC
    LIMIT
      1
  );
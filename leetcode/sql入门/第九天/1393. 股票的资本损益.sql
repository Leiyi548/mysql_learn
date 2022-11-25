-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Stocks;

CREATE TABLE Stocks(
  stock_name VARCHAR(255),
  operation ENUM('Sell', 'Buy'),
  operation_day int,
  price int,
  PRIMARY KEY(stock_name, operation_day)
);

INSERT INTO
  Stocks (
    stock_name,
    operation,
    operation_day,
    price
  )
VALUES
  ('Leetcode', 'Buy', 1, 1000),
  ('Corona Masks', 'Buy', 2, 10),
  ('Leetcode', 'Sell', 5, 9000),
  ('Handbags', 'Buy', 17, 30000),
  ('Corona Masks', 'Sell', 3, 1010),
  ('Corona Masks', 'Buy', 4, 1000),
  ('Corona Masks', 'Sell', 5, 500),
  ('Corona Masks', 'Buy', 6, 1000),
  ('Handbags', 'Sell', 29, 7000),
  ('Corona Masks', 'Sell', 10, 10000);

SELECT
  stock_name,
  sum(IF(operation != 'Buy', price, - price)) AS capital_gain_loss
FROM
  Stocks
GROUP BY
  stock_name;
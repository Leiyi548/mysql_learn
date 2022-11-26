-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Product;

CREATE TABLE Product(
  product_id int NOT NULL PRIMARY KEY,
  product_name VARCHAR(255),
  unit_price int
);

INSERT INTO
  Product(product_id, product_name, unit_price)
VALUES
  (1, 's8', 1000),
  (2, 'G4', 800),
  (3, 'iphone', 1400);

DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales(
  seller_id int,
  product_id int,
  buyer_id int,
  sale_date date,
  quantity int,
  price int
);

INSERT INTO
  Sales(
    seller_id,
    product_id,
    buyer_id,
    sale_date,
    quantity,
    price
  )
VALUES
  (1, 1, 1, '2019-01-21', 2, 2000),
  (1, 2, 2, '2019-02-17', 1, 800),
  (2, 2, 3, '2019-06-02', 1, 800),
  (3, 3, 4, '2019-05-13', 2, 2800);

SELECT
  s.product_id,
  p.product_name
FROM
  sales s
  LEFT JOIN product p ON s.product_id = p.product_id
GROUP BY
  s.product_id
HAVING
  MIN(sale_date) >= '2019-01-01'
  AND MAX(sale_date) <= '2019-03-31';

SELECT
  s.product_id,
  p.product_name,
  COUNT(s.sale_date)
FROM
  sales s
  LEFT JOIN product p ON s.product_id = p.product_id
GROUP BY
  s.product_id;
-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Users;

CREATE TABLE Users(
  user_id int NOT NULL PRIMARY KEY,
  join_date date,
  favorite_brand VARCHAR(255)
);

INSERT INTO
  Users(user_id, join_date, favorite_brand)
VALUES
  (1, '2018-01-01', 'Lenovo'),
  (2, '2018-02-09', 'Samsung'),
  (3, '2018-01-19', 'LG'),
  (4, '2018-05-21', 'HP');

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders(
  order_id int NOT NULL PRIMARY KEY,
  order_date date,
  item_id int,
  buyer_id int,
  seller_id int
);

INSERT INTO
  orders(
    order_id,
    order_date,
    item_id,
    buyer_id,
    seller_id
  )
VALUES
  (1, '2019-08-01', 4, 1, 2),
  (2, '2018-08-02', 2, 1, 3),
  (3, '2019-08-03', 3, 2, 3),
  (4, '2018-08-04', 1, 4, 2),
  (5, '2018-08-04', 1, 3, 4),
  (6, '2019-08-05', 2, 2, 6);

DROP TABLE IF EXISTS Items;

CREATE TABLE Items(
  item_id int NOT NULL PRIMARY KEY,
  item_brand VARCHAR(255)
);

INSERT INTO
  items(item_id, item_brand)
VALUES
  (1, 'Samsung'),
  (2, 'Lenovo'),
  (3, 'LG'),
  (4, 'HP');

SELECT
  buyer_id,
  COUNT(order_id) cnt
FROM
  Orders
WHERE
  order_date BETWEEN '2019-01-01'
  AND '2019-12-31'
GROUP BY
  buyer_id
ORDER BY
  buyer_id;

SELECT
  u.user_id AS buyer_id,
  join_date,
  COUNT(order_date) AS orders_in_2019
FROM
  Users u
  LEFT JOIN Orders o ON u.user_id = o.buyer_id
WHERE
  order_date BETWEEN '2019-01-01'
  AND '2019-12-31'
GROUP BY
  u.user_id
ORDER BY
  buyer_id;

SELECT
  Users.user_id AS buyer_id,
  join_date,
  IFNULL(UserBuy.cnt, 0) AS orders_in_2019
FROM
  Users
  LEFT JOIN (
    SELECT
      buyer_id,
      count(order_id) cnt
    FROM
      Orders
    WHERE
      order_date BETWEEN '2019-01-01'
      AND '2019-12-31'
    GROUP BY
      buyer_id
  ) UserBuy ON Users.user_id = UserBuy.buyer_id;
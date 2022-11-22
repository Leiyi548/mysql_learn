-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS SalesPerson;

CREATE TABLE SalesPerson(
  sales_id int NOT NULL PRIMARY KEY,
  name VARCHAR(255),
  salary int,
  commission_rate int,
  hire_date date
);

INSERT INTO
  SalesPerson(
    sales_id,
    name,
    salary,
    commission_rate,
    hire_date
  )
VALUES
  (1, 'John', 100000, 6, '4/1/2006'),
  (2, 'Amy', 120000, 5, '5/1/2010'),
  (3, 'Mark', 65000, 12, '12/25/2008'),
  (4, 'Pam', 25000, 25, '1/1/2005'),
  (5, 'Alex', 5000, 10, '2/3/2007');

DROP TABLE IF EXISTS Company;

CREATE TABLE Company(
  com_id int NOT NULL PRIMARY KEY,
  name VARCHAR(255),
  city VARCHAR(255)
);

INSERT INTO
  Company(com_id, name, city)
VALUES
  (1, 'RED', 'Boston'),
  (2, 'ORANGE', 'New York'),
  (3, 'YELLOW', 'Boston'),
  (4, 'GREEN', 'Austin');

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders(
  order_id int NOT NULL PRIMARY KEY,
  order_date date,
  com_id int,
  sales_id int,
  amount int
);

INSERT INTO
  Orders(order_id, order_date, com_id, sales_id, amount)
VALUES
  (1, '1/1/2014', 3, 4, 10000),
  (2, '2/1/2014', 4, 5, 5000),
  (3, '3/1/2014', 1, 1, 50000),
  (4, '4/1/2014', 1, 4, 25000);

SELECT
  *
FROM
  orders o
  LEFT JOIN company c ON o.com_id = c.com_id
WHERE
  c.name = 'RED';
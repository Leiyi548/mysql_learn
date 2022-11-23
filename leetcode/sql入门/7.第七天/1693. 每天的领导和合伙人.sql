-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS DailySales;

CREATE TABLE DailySales(
  date_id DATE,
  make_name VARCHAR(255),
  lead_id int,
  partner_id int
);

INSERT INTO
  DailySales(date_id, make_name, lead_id, partner_id)
VALUES
  ('2020-12-8', 'toyota', 0, 1),
  ('2020-12-8', 'toyota', 1, 0),
  ('2020-12-8', 'toyota', 1, 2),
  ('2020-12-7', 'toyota', 0, 2),
  ('2020-12-7', 'toyota', 0, 1),
  ('2020-12-8', 'honda', 1, 2),
  ('2020-12-8', 'honda', 2, 1),
  ('2020-12-7', 'honda', 0, 1),
  ('2020-12-7', 'honda', 1, 1),
  ('2020-12-7', 'honda', 2, 1);

SELECT
  DISTINCT make_name
FROM
  Dailysales;

SELECT
  date_id,
  make_name
FROM
  Dailysales;

SELECT
  date_id,
  make_name,
  COUNT(DISTINCT lead_id) unique_leads,
  COUNT(DISTINCT partner_id) unique_partners
FROM
  DailySales
GROUP BY
  date_id,
  make_name;
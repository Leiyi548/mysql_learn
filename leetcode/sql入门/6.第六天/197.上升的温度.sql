-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Weather;

CREATE TABLE Weather(
  id int NOT NULL PRIMARY KEY,
  recordDate date,
  temperature int
);

INSERT INTO
  Weather(id, recordDate, temperature)
VALUES
  (1, '2015-01-01', 10),
  (2, '2015-01-02', 25),
  (3, '2015-01-03', 20),
  (4, '2015-01-04', 30);

SELECT
  w2.id
FROM
  Weather w1,
  Weather w2
WHERE
  date_add(w1.recordDate, INTERVAL 1 DAY) = w2.recordDate
  AND w1.Temperature < w2.Temperature;
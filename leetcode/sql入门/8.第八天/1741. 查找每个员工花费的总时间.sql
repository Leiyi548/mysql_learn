-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
  emp_id int,
  event_day date,
  in_time int,
  out_time int
);

INSERT INTO
  Employees
VALUES
  (1, '2020-11-28', 4, 32),
  (1, '2020-11-28', 55, 200),
  (1, '2020-12-03', 1, 42),
  (2, '2020-11-28', 3, 33),
  (2, '2020-12-09', 47, 74);

SELECT
  event_day AS DAY,
  emp_id,
  sum(out_time - in_time) AS total_time
FROM
  Employees
GROUP BY
  emp_id,
  event_day;
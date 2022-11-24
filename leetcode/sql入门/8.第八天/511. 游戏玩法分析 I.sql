-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Activity;

CREATE TABLE Activity(
  player_id int,
  device_id int,
  event_date date,
  games_played int
);

INSERT INTO
  Activity(player_id, device_id, event_date, games_played)
VALUES
  (1, 2, '2016-03-01', 5),
  (1, 2, '2016-05-02', 6),
  (2, 3, '2017-06-25', 1),
  (3, 1, '2017-03-02', 0),
  (3, 4, '2018-07-03', 5);

SELECT
  player_id,
  MIN(event_date) AS first_login
FROM
  Activity
GROUP BY
  player_id;
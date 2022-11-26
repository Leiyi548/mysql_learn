-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS ActorDirector;

CREATE TABLE ActorDirector (
  actor_id int,
  director_id int,
  timestamp int NOT NULL PRIMARY KEY
);

INSERT INTO
  ActorDirector
VALUES
  (1, 1, 0),
  (1, 1, 1),
  (1, 1, 2),
  (1, 2, 3),
  (1, 2, 4),
  (2, 1, 5),
  (2, 1, 6);

SELECT
  actor_id,
  director_id,
  COUNT(actor_id) AS actor_cnt,
  COUNT(director_id) AS director_cnt
FROM
  ActorDirector
GROUP BY
  actor_id,
  director_id;

SELECT
  actor_id,
  director_id
FROM
  ActorDirector
GROUP BY
  actor_id,
  director_id
HAVING
  COUNT(*) >= 3;
-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Users;

CREATE TABLE Users(id int NOT NULL PRIMARY KEY, name VARCHAR(255));

INSERT INTO
  Users(id, name)
VALUES
  (1, 'Alice'),
  (2, 'Bob'),
  (3, 'Alice'),
  (4, 'Donald'),
  (7, 'Lee'),
  (13, 'Jonathan'),
  (19, 'Elvis');

DROP TABLE IF EXISTS Rides;

CREATE TABLE Rides(
  id int NOT NULL PRIMARY KEY,
  user_id int,
  distance int
);

INSERT INTO
  Rides(id, user_id, distance)
VALUES
  (1, 1, 120),
  (2, 2, 317),
  (3, 3, 222),
  (4, 7, 100),
  (5, 13, 312),
  (6, 19, 50),
  (7, 7, 120),
  (8, 19, 400),
  (9, 7, 230);

SELECT
  name
FROM
  Users;

SELECT
  user_id,
  IF(SUM(distance) IS NULL, 0, sum(distance)) AS travelled_distance
FROM
  Rides
GROUP BY
  user_id
ORDER BY
  travelled_distance DESC;

SELECT
  u.name,
  IF(sum(distance) IS NULL, 0, sum(distance)) AS travelled_distance
FROM
  users u
  LEFT JOIN rides r ON u.id = r.user_id
GROUP BY
  u.id
ORDER BY
  travelled_distance DESC,
  u.name;

SELECT
  u.name,
  coalesce(sum(distance), 0) AS travelled_distance
FROM
  users u
  LEFT JOIN rides r ON u.id = r.user_id
GROUP BY
  u.id
ORDER BY
  travelled_distance DESC,
  u.name;
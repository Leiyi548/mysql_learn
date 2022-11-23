-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Followers;

CREATE TABLE Followers(user_id int, follower_id int);

INSERT INTO
  Followers(user_id, follower_id)
VALUES
  (0, 1),
  (1, 0),
  (2, 0),
  (2, 1);

SELECT
  user_id,
  COUNT(follower_id) AS followers_count
FROM
  Followers
GROUP BY
  user_id
ORDER BY
  user_id;
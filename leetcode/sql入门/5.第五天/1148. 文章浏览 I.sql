-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Views;

CREATE TABLE Views(
  article_id int,
  author_id int,
  viewer_id int,
  view_date date
) COMMENT 'Views 表';

INSERT INTO
  Views(article_id, author_id, viewer_id, view_date)
VALUES
  (1, 3, 5, '2019-08-01'),
  (1, 3, 6, '2019-08-02'),
  (2, 7, 7, '2019-08-01'),
  (2, 7, 6, '2019-08-02'),
  (4, 7, 1, '2019-07-22'),
  (3, 4, 4, '2019-07-21'),
  (3, 4, 4, '2019-07-21');

SELECT
  author_id AS id
FROM
  Views
WHERE
  author_id = viewer_id
GROUP BY
  author_id
ORDER BY
  author_id;
-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Activity;

CREATE TABLE Activity(
  user_id int,
  session_id int,
  activity_date date,
  activity_type enum(
    'open_session',
    'end_session',
    'scroll_down',
    'send_message'
  )
);

INSERT INTO
  Activity(
    user_id,
    session_id,
    activity_date,
    activity_type
  )
VALUES
  (1, 1, '2019-07-20', 'open_session'),
  (1, 1, '2019-07-20', 'scroll_down'),
  (1, 1, '2019-07-20', 'end_session'),
  (2, 4, '2019-07-20', 'open_session'),
  (2, 4, '2019-07-21', 'send_message'),
  (2, 4, '2019-07-21', 'end_session'),
  (3, 2, '2019-07-21', 'open_session'),
  (3, 2, '2019-07-21', 'send_message'),
  (3, 2, '2019-07-21', 'end_session'),
  (4, 3, '2019-06-25', 'open_session'),
  (4, 3, '2019-06-25', 'end_session');

SELECT
  activity_date AS DAY,
  count(DISTINCT user_id) AS active_users
FROM
  Activity
WHERE
  activity_date BETWEEN DATE('2019-06-28')
  AND DATE('2019-07-27')
GROUP BY
  activity_date;

SELECT
  activity_date AS DAY,
  count(DISTINCT user_id) AS active_users
FROM
  Activity
WHERE
  activity_date >= DATE('2019-06-28')
  AND activity_date <= DATE('2019-07-27')
GROUP BY
  activity_date;

SELECT
  activity_date AS DAY,
  count(DISTINCT user_id) AS active_users
FROM
  Activity
WHERE
  DATEDIFF(activity_date, DATE('2019-06-28')) >= 0
  AND DATEDIFF(activity_date, DATE('2019-06-28')) <= 30
GROUP BY
  activity_date;
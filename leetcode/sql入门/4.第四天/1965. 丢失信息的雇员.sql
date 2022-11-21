-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees(
    employee_id int NOT NULL PRIMARY KEY COMMENT '雇员 ID',
    name VARCHAR(255) COMMENT '雇员姓名'
) COMMENT '雇员表（leetcode）';

INSERT INTO
    Employees(employee_id, name)
VALUES
    (2, 'Crew'),
    (4, 'Haven'),
    (5, 'Kristian');

DROP TABLE IF EXISTS Salaries;

CREATE TABLE Salaries(
    employee_id int NOT NULL PRIMARY KEY COMMENT '雇员 ID',
    salary int COMMENT '雇员薪水'
) COMMENT '雇员薪水表';

INSERT INTO
    Salaries (employee_id, salary)
VALUES
    (5, 76071),
    (1, 22517),
    (4, 63539);

# 这样的操作会被两个表所有的id都查出来！
SELECT
    employee_id
FROM
    Employees
UNION
ALL
SELECT
    employee_id
FROM
    salaries;

SELECT
    employee_id AS 雇主id,
    COUNT(employee_id) AS 数量
FROM
    (
        SELECT
            employee_id
        FROM
            Employees
        UNION
        ALL
        SELECT
            employee_id
        FROM
            salaries
    ) AS t
GROUP BY
    employee_id
HAVING
    COUNT(employee_id) = 1
ORDER BY
    employee_id;

SELECT
    id,
    name
FROM
    union_student_bb
UNION
ALL
SELECT
    id,
    name
FROM
    union_student_aa;
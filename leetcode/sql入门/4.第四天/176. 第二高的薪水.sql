-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee(
    id int NOT NULL PRIMARY KEY COMMENT '雇员表 id',
    salary int COMMENT '雇员表薪水'
) COMMENT '雇员表（leetcode）';

INSERT INTO
    Employee(id, salary)
VALUES
    (1, 100),
    (2, 200),
    (3, 300);

SELECT
    DISTINCT Salary AS SecondHighestSalary
FROM
    Employee
ORDER BY
    Salary DESC
LIMIT
    1 OFFSET 1;

SELECT
    MAX(DISTINCT salary)
FROM
    employee;

SELECT
    MAX(DISTINCT salary) AS SecondHighestSalary
FROM
    employee
WHERE
    salary < (
        SELECT
            MAX(DISTINCT salary)
        FROM
            employee
    );

SELECT
    IFNULL(
        (
            SELECT
                DISTINCT salary
            FROM
                Employee
            ORDER BY
                Salary DESC
            LIMIT
                1, 1
        ), NULL
    ) AS SecondHighestSalary;
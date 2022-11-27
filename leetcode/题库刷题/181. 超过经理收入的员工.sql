-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee(
  id int NOT NULL PRIMARY KEY,
  name VARCHAR(255),
  salary int,
  managerId int
);

INSERT INTO
  Employee(id, name, salary, managerId)
VALUES
  (1, 'Joe', 70000, 3),
  (2, 'Henry', 80000, 4),
  (3, 'Sam', 60000, NULL),
  (4, 'Max', 90000, NULL);

SELECT
  a.Name AS 'Employee'
FROM
  Employee AS a,
  Employee AS b
WHERE
  a.ManagerId = b.Id
  AND a.Salary > b.Salary;

SELECT
  a.NAME AS Employee
FROM
  Employee AS a
  JOIN Employee AS b ON a.ManagerId = b.Id
  AND a.Salary > b.Salary;
-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn

# Write your MySQL query statement below
SELECT
    employee_id,
    CASE -- MOD 就是除法
        -- rlike 后面就是接正则表达式
        WHEN MOD(employee_id, 2) = 1
        AND name not rlike '^M' THEN salary
        ELSE 0
    END -- as 是因为我们最后得到的结果列名是 bonus
    AS bonus
FROM Employees
ORDER BY employee_id;
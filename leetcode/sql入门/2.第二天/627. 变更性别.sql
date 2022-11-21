-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
# Write your MySQL query statement below
UPDATE
    Salary
SET
    sex = CASE
        WHEN sex = 'm' THEN 'f'
        ELSE 'm'
    END;
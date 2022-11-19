-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn

# Write your MySQL query statement below
update Salary
set
    sex = case
        when sex = 'm' then 'f'
        else 'm'
    end;
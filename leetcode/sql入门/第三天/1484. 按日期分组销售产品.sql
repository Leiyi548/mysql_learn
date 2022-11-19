-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn

DROP TABLE IF EXISTS Activities;

CREATE TABLE
    Activities(
        sell_date DATE NOT NULL,
        product VARCHAR(255) NOT NULL
    );

INSERT INTO
    Activities(sell_date, product)
VALUES ('2020-05-30', 'Headphone'), ('2020-06-01', 'Pencil'), ('2020-06-02', 'Mask'), ('2020-05-30', 'Basketball'), ('2020-06-01', 'Bible'), ('2020-06-02', 'Mask'), ('2020-05-30', 'T-Shirt');

SELECT
    sell_date,
    COUNT(DISTINCT product) as num_sold,
    GROUP_CONCAT(DISTINCT product) as products
FROM Activities
GROUP BY sell_date;
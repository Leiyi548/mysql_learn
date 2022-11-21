-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Products;

CREATE TABLE Products(
    product_id int NOT NULL PRIMARY KEY COMMENT '产品 id',
    store1 int COMMENT '商品 1',
    store2 int COMMENT '商品 2',
    store3 int COMMENT '商品 3'
) COMMENT '商品表（leetcode）';

INSERT INTO
    Products (
        product_id,
        store1,
        store2,
        store3
    )
VALUES
    (0, 95, 100, 105),
    (1, 70, NULL, 80);

SELECT
    product_id,
    'store1' AS store,
    store1 AS price
FROM
    Products
WHERE
    store1 IS NOT NULL
UNION
ALL
SELECT
    product_id,
    'store2' AS store,
    store2 AS price
FROM
    Products
WHERE
    store2 IS NOT NULL
UNION
ALL
SELECT
    product_id,
    'store3' AS store,
    store3 AS price
FROM
    Products
WHERE
    store3 IS NOT NULL;

SELECT
    a.product_id,
    a.store1 AS price,
    b.product_id,
    b.store1 AS price
FROM
    Products a,
    Products b;
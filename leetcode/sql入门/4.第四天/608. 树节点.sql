-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS tree;

CREATE TABLE tree (
    id int PRIMARY KEY COMMENT '树 id',
    p_id int COMMENT '这个节点的类型'
) COMMENT '树表';

INSERT INTO
    tree(id, p_id) VALUE(1, NULL);

INSERT INTO
    tree(id, p_id) VALUE(2, 1);

INSERT INTO
    tree(id, p_id) VALUE(3, 1);

INSERT INTO
    tree(id, p_id) VALUE(4, 2);

INSERT INTO
    tree(id, p_id) VALUE(5, 2);

SELECT
    id,
    CASE
        WHEN p_id IS NULL THEN 'Root'
        WHEN id IN (
            SELECT
                DISTINCT p_id
            FROM
                tree
        ) THEN 'Inner'
        ELSE 'Leaf'
    END AS 'Type'
FROM
    tree
ORDER BY
    id;
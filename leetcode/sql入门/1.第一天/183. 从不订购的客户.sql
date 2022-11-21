-- Write your MySQL query statement below
SELECT
    -- 因为我们得到的列名需要是 Customerss
    a.Name AS Customers
FROM
    -- 这样我们左连接的时候就会比较方便
    Customers AS a
    LEFT JOIN --  这样我们左连接的是时候就会比较方便
    Orders AS b ON -- 连接条件
    a.id = b.CustomerId -- 选择条件
WHERE
    b.CustomerId IS NULL;

-- 参考题解
-- https://leetcode.cn/problems/customers-who-never-order/solution/tu-jie-sqlmian-shi-ti-cha-zhao-bu-zai-biao-li-de-s/
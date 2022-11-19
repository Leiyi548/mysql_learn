-- Write your MySQL query statement below

select
    -- 因为我们得到的列名需要是 Customerss
    a.Name as Customers
from
    -- 这样我们左连接的时候就会比较方便
    Customers as a
    left join --  这样我们左连接的是时候就会比较方便
    Orders as b on -- 连接条件
    a.id = b.CustomerId -- 选择条件
where b.CustomerId is null;

-- 参考题解

-- https://leetcode.cn/problems/customers-who-never-order/solution/tu-jie-sqlmian-shi-ti-cha-zhao-bu-zai-biao-li-de-s/
-- Write your MySQL query statement below
-- 这个主要是考察我们 <> 和 != 这两个含义都是一样（但是新版推荐使用<>）
-- 然后还有 is null 这个知识点
-- 因为平时的时候这个 null 不会在我们的 <> 范围内
-- 更多信息可以点击下面这个链接阅读 
-- https://leetcode.cn/problems/find-customer-referee/solution/san-by-xiang-shu-k-7ywp/

select
  name
from
  customer
where
referee_id<>2 or referee_id is null
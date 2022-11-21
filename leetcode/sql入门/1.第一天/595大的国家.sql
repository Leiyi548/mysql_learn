-- 这到题比较简单那就不分析了
-- 主要是为了让人们学习 or
SELECT
  name,
  population,
  area
FROM
  World
WHERE
  area >= 3000000
  OR population >= 25000000;
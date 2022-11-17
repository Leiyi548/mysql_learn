-- 这到题比较简单那就不分析了
-- 主要是为了让人们学习 or
select
  name, population, area
from
  World
where
  area>=3000000 or population >= 25000000
;
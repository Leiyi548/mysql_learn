## 前言

人生就像交叉路，我们每走一个路就会面临选择，那么我们怎么才能走对的路呢？那就要选择咯，接下来我们学习 mysqsl if 语句。

## IF 表达式

> IF(expr1,expr2,expr3)

如果 expr1 为 TRUE，则 IF() 返回值为 expr2，否则返回值为 expr3

```sql
update salary set sex =if(sex = '男','女','男')
#这是leetcode上的一道题，将salary表中的性别进行转换，男变女，女变男
```

## IFNULL 语句

> IFNULL(expr1,expr2)

假如 expr1 不为 null，则返回 expr1，否则返回 expr2

## IF...ELSE...语句

```sql
IF search_condition THEN
	statement_list
ELSE
	statement_list
END IF;
```

search_condition 表示条件，如果成立时执行 THEN 后面的 statement_list 语句，否则执行 ELSE 后面的 statement_list 语句。
search_condition 是一个条件表达式，可以由条件运算符组成，也可以使用 AND、OR、NOT 对多个表达式进行组合

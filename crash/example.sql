mysql> SELECT prod_name, prod_price FROM products WHERE prod_price = 2.50;
SELECT prod_name, prod_price FROM products WHERE prod_price = 2.50;
+---------------+------------+
| prod_name     | prod_price |
+---------------+------------+
| Carrots       |       2.50 |
| TNT (1 stick) |       2.50 |
+---------------+------------+
2 rows in set (0.00 sec)

mysql> SELECT vend_id, prod_price FROM products WHERE vend_id <> 1003;
SELECT vend_id, prod_price FROM products WHERE vend_id <> 1003;
+---------+------------+
| vend_id | prod_price |
+---------+------------+
|    1001 |       5.99 |
|    1001 |       9.99 |
|    1001 |      14.99 |
|    1002 |       3.42 |
|    1005 |      35.00 |
|    1005 |      55.00 |
|    1002 |       8.99 |
+---------+------------+
7 rows in set (0.01 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE prod_price BETWEEN 5 and 10;
SELECT prod_name, prod_price FROM products WHERE prod_price BETWEEN 5 and 10;
+----------------+------------+
| prod_name      | prod_price |
+----------------+------------+
| .5 ton anvil   |       5.99 |
| 1 ton anvil    |       9.99 |
| Bird seed      |      10.00 |
| Oil can        |       8.99 |
| TNT (5 sticks) |      10.00 |
+----------------+------------+
5 rows in set (0.01 sec)

mysql> SELECT cust_id FROM customers WHERE cust_email is NULL;
SELECT cust_id FROM customers WHERE cust_email is NULL;
+---------+
| cust_id |
+---------+
|   10002 |
|   10005 |
+---------+
2 rows in set (0.01 sec)

mysql> SELECT prod_id, prod_price, prod_name FROM products WHERE vend_id = 1003 AND prod_price <= 10;
SELECT prod_id, prod_price, prod_name FROM products WHERE vend_id = 1003 AND prod_price <= 10;
+---------+------------+----------------+
| prod_id | prod_price | prod_name      |
+---------+------------+----------------+
| FB      |      10.00 | Bird seed      |
| FC      |       2.50 | Carrots        |
| SLING   |       4.49 | Sling          |
| TNT1    |       2.50 | TNT (1 stick)  |
| TNT2    |      10.00 | TNT (5 sticks) |
+---------+------------+----------------+
5 rows in set (0.01 sec)

-- SQL process AND First!!!
mysql> SELECT prod_name, prod_price FROM products WHERE vend_id = 1002 OR vend_id = 1003 AND prod_price >= 10;
SELECT prod_name, prod_price FROM products WHERE vend_id = 1002 OR vend_id = 1003 AND prod_price >= 10;
+----------------+------------+
| prod_name      | prod_price |
+----------------+------------+
| Detonator      |      13.00 |
| Bird seed      |      10.00 |
| Fuses          |       3.42 |
| Oil can        |       8.99 |
| Safe           |      50.00 |
| TNT (5 sticks) |      10.00 |
+----------------+------------+
6 rows in set (0.00 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE (vend_id = 1002 OR vend_id = 1003) AND prod_price >= 10;
SELECT prod_name, prod_price FROM products WHERE (vend_id = 1002 OR vend_id = 1003) AND prod_price >= 10;
+----------------+------------+
| prod_name      | prod_price |
+----------------+------------+
| Detonator      |      13.00 |
| Bird seed      |      10.00 |
| Safe           |      50.00 |
| TNT (5 sticks) |      10.00 |
+----------------+------------+
4 rows in set (0.00 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE vend_id IN(1002, 1003) AND prod_price >= 10;
SELECT prod_name, prod_price FROM products WHERE vend_id IN(1002, 1003) AND prod_price >= 10;
+----------------+------------+
| prod_name      | prod_price |
+----------------+------------+
| Detonator      |      13.00 |
| Bird seed      |      10.00 |
| Safe           |      50.00 |
| TNT (5 sticks) |      10.00 |
+----------------+------------+
4 rows in set (0.01 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE vend_id IN(1002, 1003) ORDER BY prod_name;
SELECT prod_name, prod_price FROM products WHERE vend_id IN(1002, 1003) ORDER BY prod_name;
+----------------+------------+
| prod_name      | prod_price |
+----------------+------------+
| Bird seed      |      10.00 |
| Carrots        |       2.50 |
| Detonator      |      13.00 |
| Fuses          |       3.42 |
| Oil can        |       8.99 |
| Safe           |      50.00 |
| Sling          |       4.49 |
| TNT (1 stick)  |       2.50 |
| TNT (5 sticks) |      10.00 |
+----------------+------------+
9 rows in set (0.00 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE vend_id NOT IN(1002, 1003) ORDER BY prod_name;
SELECT prod_name, prod_price FROM products WHERE vend_id NOT IN(1002, 1003) ORDER BY prod_name;
+--------------+------------+
| prod_name    | prod_price |
+--------------+------------+
| .5 ton anvil |       5.99 |
| 1 ton anvil  |       9.99 |
| 2 ton anvil  |      14.99 |
| JetPack 1000 |      35.00 |
| JetPack 2000 |      55.00 |
+--------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE prod_name LIKE 'jet%';
SELECT prod_name, prod_price FROM products WHERE prod_name LIKE 'jet%';
+--------------+------------+
| prod_name    | prod_price |
+--------------+------------+
| JetPack 1000 |      35.00 |
| JetPack 2000 |      55.00 |
+--------------+------------+
2 rows in set (0.01 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE prod_name LIKE '%anvil%';
SELECT prod_name, prod_price FROM products WHERE prod_name LIKE '%anvil%';
+--------------+------------+
| prod_name    | prod_price |
+--------------+------------+
| .5 ton anvil |       5.99 |
| 1 ton anvil  |       9.99 |
| 2 ton anvil  |      14.99 |
+--------------+------------+
3 rows in set (0.00 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE prod_name LIKE '_ ton anvil';
SELECT prod_name, prod_price FROM products WHERE prod_name LIKE '_ ton anvil';
+-------------+------------+
| prod_name   | prod_price |
+-------------+------------+
| 1 ton anvil |       9.99 |
| 2 ton anvil |      14.99 |
+-------------+------------+
2 rows in set (0.01 sec)

-- Difference between LIKE and REGEXP
-- LIKE match only `the whole line`
mysql> SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '1000' ORDER BY prod_name;
SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '1000' ORDER BY prod_name;
+--------------+------------+
| prod_name    | prod_price |
+--------------+------------+
| JetPack 1000 |      35.00 |
+--------------+------------+
1 row in set (0.00 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE prod_name LIKE '1000' ORDER BY prod_name;
SELECT prod_name, prod_price FROM products WHERE prod_name LIKE '1000' ORDER BY prod_name;
Empty set (0.01 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '1000|2000' ORDER BY prod_name;
SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '1000|2000' ORDER BY prod_name;
+--------------+------------+
| prod_name    | prod_price |
+--------------+------------+
| JetPack 1000 |      35.00 |
| JetPack 2000 |      55.00 |
+--------------+------------+
2 rows in set (0.01 sec)

-- [] is very important, following will get extra result
-- As the SQL is meaning: '1', '2', or '3ton'
mysql> SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '1|2|3 Ton' ORDER BY prod_name;
SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '1|2|3 Ton' ORDER BY prod_name;
+---------------+------------+
| prod_name     | prod_price |
+---------------+------------+
| 1 ton anvil   |       9.99 |
| 2 ton anvil   |      14.99 |
| JetPack 1000  |      35.00 |
| JetPack 2000  |      55.00 |
| TNT (1 stick) |       2.50 |
+---------------+------------+
5 rows in set (0.01 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '[1|2|3] Ton' ORDER BY prod_name;
SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '[1|2|3] Ton' ORDER BY prod_name;
+-------------+------------+
| prod_name   | prod_price |
+-------------+------------+
| 1 ton anvil |       9.99 |
| 2 ton anvil |      14.99 |
+-------------+------------+
2 rows in set (0.00 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '[1-5] Ton' ORDER BY prod_name;
SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '[1-5] Ton' ORDER BY prod_name;
+--------------+------------+
| prod_name    | prod_price |
+--------------+------------+
| .5 ton anvil |       5.99 |
| 1 ton anvil  |       9.99 |
| 2 ton anvil  |      14.99 |
+--------------+------------+
3 rows in set (0.01 sec)

mysql> SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '\\.' ORDER BY prod_name;
SELECT prod_name, prod_price FROM products WHERE prod_name REGEXP '\\.' ORDER BY prod_name;
+--------------+------------+
| prod_name    | prod_price |
+--------------+------------+
| .5 ton anvil |       5.99 |
+--------------+------------+
1 row in set (0.00 sec)

mysql>
mysql> SELECT prod_name FROM products WHERE prod_name REGEXP '\\([0-9] sticks?\\)' ORDER BY prod_name;
SELECT prod_name FROM products WHERE prod_name REGEXP '\\([0-9] sticks?\\)' ORDER BY prod_name;
+----------------+
| prod_name      |
+----------------+
| TNT (1 stick)  |
| TNT (5 sticks) |
+----------------+
2 rows in set (0.01 sec)

mysql> SELECT prod_name FROM products WHERE prod_name REGEXP '\\([0-9] sticks?\\)' ORDER BY prod_name;
SELECT prod_name FROM products WHERE prod_name REGEXP '\\([0-9] sticks?\\)' ORDER BY prod_name;
+----------------+
| prod_name      |
+----------------+
| TNT (1 stick)  |
| TNT (5 sticks) |
+----------------+
2 rows in set (0.01 sec)

mysql> SELECT prod_name FROM products WHERE prod_name REGEXP '[[:digit:]]{4}' ORDER BY prod_name;
SELECT prod_name FROM products WHERE prod_name REGEXP '[[:digit:]]{4}' ORDER BY prod_name;
+--------------+
| prod_name    |
+--------------+
| JetPack 1000 |
| JetPack 2000 |
+--------------+
2 rows in set (0.00 sec)

mysql> SELECT prod_name FROM products WHERE prod_name REGEXP '^[0-9\\.]' ORDER BY prod_name;
SELECT prod_name FROM products WHERE prod_name REGEXP '^[0-9\\.]' ORDER BY prod_name;
+--------------+
| prod_name    |
+--------------+
| .5 ton anvil |
| 1 ton anvil  |
| 2 ton anvil  |
+--------------+
3 rows in set (0.01 sec)

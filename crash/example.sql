mysql> SELECT prod_name FROM products;
SELECT prod_name FROM products;
+----------------+
| prod_name      |
+----------------+
| .5 ton anvil   |
| 1 ton anvil    |
| 2 ton anvil    |
| Detonator      |
| Bird seed      |
| Carrots        |
| Fuses          |
| JetPack 1000   |
| JetPack 2000   |
| Oil can        |
| Safe           |
| Sling          |
| TNT (1 stick)  |
| TNT (5 sticks) |
+----------------+
14 rows in set (0.00 sec)

mysql> SELECT prod_id, prod_name, prod_price FROM products;
SELECT prod_id, prod_name, prod_price FROM products;
+---------+----------------+------------+
| prod_id | prod_name      | prod_price |
+---------+----------------+------------+
| ANV01   | .5 ton anvil   |       5.99 |
| ANV02   | 1 ton anvil    |       9.99 |
| ANV03   | 2 ton anvil    |      14.99 |
| DTNTR   | Detonator      |      13.00 |
| FB      | Bird seed      |      10.00 |
| FC      | Carrots        |       2.50 |
| FU1     | Fuses          |       3.42 |
| JP1000  | JetPack 1000   |      35.00 |
| JP2000  | JetPack 2000   |      55.00 |
| OL1     | Oil can        |       8.99 |
| SAFE    | Safe           |      50.00 |
| SLING   | Sling          |       4.49 |
| TNT1    | TNT (1 stick)  |       2.50 |
| TNT2    | TNT (5 sticks) |      10.00 |
+---------+----------------+------------+
14 rows in set (0.00 sec)

mysql> SELECT * FROM products ;
SELECT * FROM products ;
+---------+---------+----------------+------------+----------------------------------------------------------------+
| prod_id | vend_id | prod_name      | prod_price | prod_desc                                                      |
+---------+---------+----------------+------------+----------------------------------------------------------------+
| ANV01   |    1001 | .5 ton anvil   |       5.99 | .5 ton anvil, black, complete with handy hook                  |
| ANV02   |    1001 | 1 ton anvil    |       9.99 | 1 ton anvil, black, complete with handy hook and carrying case |
| ANV03   |    1001 | 2 ton anvil    |      14.99 | 2 ton anvil, black, complete with handy hook and carrying case |
| DTNTR   |    1003 | Detonator      |      13.00 | Detonator (plunger powered), fuses not included                |
| FB      |    1003 | Bird seed      |      10.00 | Large bag (suitable for road runners)                          |
| FC      |    1003 | Carrots        |       2.50 | Carrots (rabbit hunting season only)                           |
| FU1     |    1002 | Fuses          |       3.42 | 1 dozen, extra long                                            |
| JP1000  |    1005 | JetPack 1000   |      35.00 | JetPack 1000, intended for single use                          |
| JP2000  |    1005 | JetPack 2000   |      55.00 | JetPack 2000, multi-use                                        |
| OL1     |    1002 | Oil can        |       8.99 | Oil can, red                                                   |
| SAFE    |    1003 | Safe           |      50.00 | Safe with combination lock                                     |
| SLING   |    1003 | Sling          |       4.49 | Sling, one size fits all                                       |
| TNT1    |    1003 | TNT (1 stick)  |       2.50 | TNT, red, single stick                                         |
| TNT2    |    1003 | TNT (5 sticks) |      10.00 | TNT, red, pack of 10 sticks                                    |
+---------+---------+----------------+------------+----------------------------------------------------------------+
14 rows in set (0.00 sec)

mysql> SELECT vend_id FROM products ;
SELECT vend_id FROM products ;
+---------+
| vend_id |
+---------+
|    1001 |
|    1001 |
|    1001 |
|    1002 |
|    1002 |
|    1003 |
|    1003 |
|    1003 |
|    1003 |
|    1003 |
|    1003 |
|    1003 |
|    1005 |
|    1005 |
+---------+
14 rows in set (0.01 sec)

mysql> SELECT DISTINCT vend_id FROM products ;
SELECT DISTINCT vend_id FROM products ;
+---------+
| vend_id |
+---------+
|    1001 |
|    1002 |
|    1003 |
|    1005 |
+---------+
4 rows in set (0.01 sec)

mysql> SELECT prod_name FROM products LIMIT 5 ;
SELECT prod_name FROM products LIMIT 5 ;
+--------------+
| prod_name    |
+--------------+
| .5 ton anvil |
| 1 ton anvil  |
| 2 ton anvil  |
| Detonator    |
| Bird seed    |
+--------------+
5 rows in set (0.01 sec)

mysql> SELECT prod_name FROM products LIMIT 1, 5 ;
SELECT prod_name FROM products LIMIT 1, 5 ;
+-------------+
| prod_name   |
+-------------+
| 1 ton anvil |
| 2 ton anvil |
| Detonator   |
| Bird seed   |
| Carrots     |
+-------------+
5 rows in set (0.00 sec)

mysql> SELECT prod_name FROM products LIMIT 5, 15 ;
SELECT prod_name FROM products LIMIT 5, 15 ;
+----------------+
| prod_name      |
+----------------+
| Carrots        |
| Fuses          |
| JetPack 1000   |
| JetPack 2000   |
| Oil can        |
| Safe           |
| Sling          |
| TNT (1 stick)  |
| TNT (5 sticks) |
+----------------+
9 rows in set (0.00 sec)

mysql> SELECT products.prod_name FROM hfeng.products;
SELECT products.prod_name FROM hfeng.products;
+----------------+
| prod_name      |
+----------------+
| .5 ton anvil   |
| 1 ton anvil    |
| 2 ton anvil    |
| Detonator      |
| Bird seed      |
| Carrots        |
| Fuses          |
| JetPack 1000   |
| JetPack 2000   |
| Oil can        |
| Safe           |
| Sling          |
| TNT (1 stick)  |
| TNT (5 sticks) |
+----------------+
14 rows in set (0.01 sec)

mysql> SELECT prod_name FROM products ORDER BY prod_name;
SELECT prod_name FROM products ORDER BY prod_name;
+----------------+
| prod_name      |
+----------------+
| .5 ton anvil   |
| 1 ton anvil    |
| 2 ton anvil    |
| Bird seed      |
| Carrots        |
| Detonator      |
| Fuses          |
| JetPack 1000   |
| JetPack 2000   |
| Oil can        |
| Safe           |
| Sling          |
| TNT (1 stick)  |
| TNT (5 sticks) |
+----------------+
14 rows in set (0.01 sec)

mysql> SELECT prod_id, prod_price, prod_name FROM products ORDER BY prod_price, prod_name;
SELECT prod_id, prod_price, prod_name FROM products ORDER BY prod_price, prod_name;
+---------+------------+----------------+
| prod_id | prod_price | prod_name      |
+---------+------------+----------------+
| FC      |       2.50 | Carrots        |
| TNT1    |       2.50 | TNT (1 stick)  |
| FU1     |       3.42 | Fuses          |
| SLING   |       4.49 | Sling          |
| ANV01   |       5.99 | .5 ton anvil   |
| OL1     |       8.99 | Oil can        |
| ANV02   |       9.99 | 1 ton anvil    |
| FB      |      10.00 | Bird seed      |
| TNT2    |      10.00 | TNT (5 sticks) |
| DTNTR   |      13.00 | Detonator      |
| ANV03   |      14.99 | 2 ton anvil    |
| JP1000  |      35.00 | JetPack 1000   |
| SAFE    |      50.00 | Safe           |
| JP2000  |      55.00 | JetPack 2000   |
+---------+------------+----------------+
14 rows in set (0.00 sec)

mysql> SELECT prod_id, prod_price, prod_name FROM products ORDER BY prod_price DESC;
SELECT prod_id, prod_price, prod_name FROM products ORDER BY prod_price DESC;
+---------+------------+----------------+
| prod_id | prod_price | prod_name      |
+---------+------------+----------------+
| JP2000  |      55.00 | JetPack 2000   |
| SAFE    |      50.00 | Safe           |
| JP1000  |      35.00 | JetPack 1000   |
| ANV03   |      14.99 | 2 ton anvil    |
| DTNTR   |      13.00 | Detonator      |
| TNT2    |      10.00 | TNT (5 sticks) |
| FB      |      10.00 | Bird seed      |
| ANV02   |       9.99 | 1 ton anvil    |
| OL1     |       8.99 | Oil can        |
| ANV01   |       5.99 | .5 ton anvil   |
| SLING   |       4.49 | Sling          |
| FU1     |       3.42 | Fuses          |
| FC      |       2.50 | Carrots        |
| TNT1    |       2.50 | TNT (1 stick)  |
+---------+------------+----------------+
14 rows in set (0.01 sec)


mysql> SELECT prod_price FROM products ORDER BY prod_price DESC LIMIT 1;
SELECT prod_price FROM products ORDER BY prod_price DESC LIMIT 1;
+------------+
| prod_price |
+------------+
|      55.00 |
+------------+
1 row in set (0.01 sec)

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

mysql> SELECT Concat(vend_name, ' (', vend_country, ')') FROM vendors ORDER BY vend_name;
SELECT Concat(vend_name, ' (', vend_country, ')') FROM vendors ORDER BY vend_name;
+--------------------------------------------+
| Concat(vend_name, ' (', vend_country, ')') |
+--------------------------------------------+
| ACME (USA)                                 |
| Anvils R Us (USA)                          |
| Furball Inc. (USA)                         |
| Jet Set (England)                          |
| Jouets Et Ours (France)                    |
| LT Supplies (USA)                          |
+--------------------------------------------+
6 rows in set (0.00 sec)

mysql> SELECT Concat(vend_name, ' (', vend_country, ')') AS vend_title FROM vendors ORDER BY vend_name;
SELECT Concat(vend_name, ' (', vend_country, ')') AS vend_title FROM vendors ORDER BY vend_name;
+-------------------------+
| vend_title              |
+-------------------------+
| ACME (USA)              |
| Anvils R Us (USA)       |
| Furball Inc. (USA)      |
| Jet Set (England)       |
| Jouets Et Ours (France) |
| LT Supplies (USA)       |
+-------------------------+
6 rows in set (0.00 sec)

mysql> SELECT prod_id, quantity, item_price FROM orderitems WHERE order_num = 20005;
SELECT prod_id, quantity, item_price FROM orderitems WHERE order_num = 20005;
+---------+----------+------------+
| prod_id | quantity | item_price |
+---------+----------+------------+
| ANV01   |       10 |       5.99 |
| ANV02   |        3 |       9.99 |
| TNT2    |        5 |      10.00 |
| FB      |        1 |      10.00 |
+---------+----------+------------+
4 rows in set (0.01 sec)

mysql> SELECT prod_id, quantity, item_price, quantity*item_price AS expanded_price FROM orderitems WHERE order_num = 20005;
SELECT prod_id, quantity, item_price, quantity*item_price AS expanded_price FROM orderitems WHERE order_num = 20005;
+---------+----------+------------+----------------+
| prod_id | quantity | item_price | expanded_price |
+---------+----------+------------+----------------+
| ANV01   |       10 |       5.99 |          59.90 |
| ANV02   |        3 |       9.99 |          29.97 |
| TNT2    |        5 |      10.00 |          50.00 |
| FB      |        1 |      10.00 |          10.00 |
+---------+----------+------------+----------------+
4 rows in set (0.00 sec)

mysql> SELECT vend_name, Upper(vend_name) AS vend_name_upacase FROM vendors ORDER BY vend_name;
SELECT vend_name, Upper(vend_name) AS vend_name_upacase FROM vendors ORDER BY vend_name;
+----------------+-------------------+
| vend_name      | vend_name_upacase |
+----------------+-------------------+
| ACME           | ACME              |
| Anvils R Us    | ANVILS R US       |
| Furball Inc.   | FURBALL INC.      |
| Jet Set        | JET SET           |
| Jouets Et Ours | JOUETS ET OURS    |
| LT Supplies    | LT SUPPLIES       |
+----------------+-------------------+
6 rows in set (0.00 sec)

mysql> SELECT cust_name, cust_contact FROM customers WHERE cust_contact = 'Y. Lie';
SELECT cust_name, cust_contact FROM customers WHERE cust_contact = 'Y. Lie';
Empty set (0.00 sec)

mysql> SELECT cust_name, cust_contact FROM customers WHERE Soundex(cust_contact) = Soundex('Y. Lie');
SELECT cust_name, cust_contact FROM customers WHERE Soundex(cust_contact) = Soundex('Y. Lie');
+-------------+--------------+
| cust_name   | cust_contact |
+-------------+--------------+
| Coyote Inc. | Y Lee        |
+-------------+--------------+
1 row in set (0.00 sec)
SELECT cust_id, order_num FROM orders WHERE order_date = '2005-09-01' ;
+---------+-----------+
| cust_id | order_num |
+---------+-----------+
|   10001 |     20005 |
+---------+-----------+
SELECT cust_id, order_num, order_date FROM orders WHERE order_date = '2005-09-01' ;
+---------+-----------+---------------------+
| cust_id | order_num | order_date          |
+---------+-----------+---------------------+
|   10001 |     20005 | 2005-09-01 00:00:00 |
+---------+-----------+---------------------+
SELECT cust_id, order_num, order_date FROM orders WHERE Date(order_date) = '2005-09-01' ;
+---------+-----------+---------------------+
| cust_id | order_num | order_date          |
+---------+-----------+---------------------+
|   10001 |     20005 | 2005-09-01 00:00:00 |
+---------+-----------+---------------------+
SELECT cust_id, order_num, order_date FROM orders WHERE Date(order_date) BETWEEN '2005-09-01' AND '2005-09030';
SELECT cust_id, order_num, order_date FROM orders WHERE Date(order_date) BETWEEN '2005-09-01' AND '2005-09-30';
Ctrl-C -- exit!
+---------+-----------+---------------------+
| cust_id | order_num | order_date          |
+---------+-----------+---------------------+
|   10001 |     20005 | 2005-09-01 00:00:00 |
|   10003 |     20006 | 2005-09-12 00:00:00 |
|   10004 |     20007 | 2005-09-30 00:00:00 |
+---------+-----------+---------------------+
SELECT cust_id, order_num, order_date FROM orders WHERE Year(order_date)= 2005 AND Month(order_date) = 9;
+---------+-----------+---------------------+
| cust_id | order_num | order_date          |
+---------+-----------+---------------------+
|   10001 |     20005 | 2005-09-01 00:00:00 |
|   10003 |     20006 | 2005-09-12 00:00:00 |
|   10004 |     20007 | 2005-09-30 00:00:00 |
+---------+-----------+---------------------+
SELECT AVG(prod_price) AS avg_price FROM products;
+-----------+
| avg_price |
+-----------+
| 16.133571 |
+-----------+
SELECT AVG(prod_price) AS avg_price FROM products WHERE vend_id = 1003;
+-----------+
| avg_price |
+-----------+
| 13.212857 |
+-----------+
SELECT COUNT(*) AS num_cust FROM customers;
+----------+
| num_cust |
+----------+
|        5 |
+----------+
SELECT COUNT(cust_email) AS num_cust FROM customers;
+----------+
| num_cust |
+----------+
|        3 |
+----------+
SELECT MAX(prod_price) AS max_price FROM products;
+-----------+
| max_price |
+-----------+
|     55.00 |
+-----------+
SELECT MIN(prod_price) AS min_price FROM products;
+-----------+
| min_price |
+-----------+
|      2.50 |
+-----------+
SELECT SUM(quantity) AS items_ordered FROM orderitems WHERE order_num = 20005;
+---------------+
| items_ordered |
+---------------+
|            19 |
+---------------+
SELECT AVG(prod_price) AS avg_price FROM products WHERE vend_id = 1003;
+-----------+
| avg_price |
+-----------+
| 13.212857 |
+-----------+
SELECT AVG(DISTINCT prod_price) AS avg_price FROM products WHERE vend_id = 1003;
+-----------+
| avg_price |
+-----------+
| 15.998000 |
+-----------+
SELECT COUNT(*) AS num_items, MIN(prod_price) AS price_min, MAX(prod_price) AS price_max, AVG(prod_price) AS price_avg FROM products;
+-----------+-----------+-----------+-----------+
| num_items | price_min | price_max | price_avg |
+-----------+-----------+-----------+-----------+
|        14 |      2.50 |     55.00 | 16.133571 |
+-----------+-----------+-----------+-----------+
SELECT COUNT(*) AS num_prods FROM products WHERE vend_id = 1003;
+-----------+
| num_prods |
+-----------+
|         7 |
+-----------+
SELECT vend_id, COUNT(*) AS num_prods FROM products GROUP BY vend_id;
+---------+-----------+
| vend_id | num_prods |
+---------+-----------+
|    1001 |         3 |
|    1002 |         2 |
|    1003 |         7 |
|    1005 |         2 |
+---------+-----------+
SELECT cust_id, COUNT(*) AS orders FROM orders GROUP BY cust_id HAVING COUNT(*) >= 2;
+---------+--------+
| cust_id | orders |
+---------+--------+
|   10001 |      2 |
+---------+--------+
SELECT vend_id, COUNT(*) AS num_prods FROM products GROUP BY vend_id HAVING COUNT(*) >=3;
+---------+-----------+
| vend_id | num_prods |
+---------+-----------+
|    1001 |         3 |
|    1003 |         7 |
+---------+-----------+
SELECT vend_id, COUNT(*) AS num_prods FROM products WHERE prod_price >= 10 GROUP BY vend_id HAVING COUNT(*) >=2;
+---------+-----------+
| vend_id | num_prods |
+---------+-----------+
|    1003 |         4 |
|    1005 |         2 |
+---------+-----------+
SELECT vend_id, COUNT(*) AS num_prods FROM products GROUP BY vend_id HAVING COUNT(*) >=2;
+---------+-----------+
| vend_id | num_prods |
+---------+-----------+
|    1001 |         3 |
|    1002 |         2 |
|    1003 |         7 |
|    1005 |         2 |
+---------+-----------+
SELECT order_num, SUM(quantity * item_price) AS ordertotal FROM orderitems GROUP BY order_num HAVING SUM(quantity * item_price) >= 50 ORDER BY ordertotal;
+-----------+------------+
| order_num | ordertotal |
+-----------+------------+
|     20006 |      55.00 |
|     20008 |     125.00 |
|     20005 |     149.87 |
|     20007 |    1000.00 |
+-----------+------------+
SELECT order_num FROM orderitems WHERE prod_id = 'TNT2';
+-----------+
| order_num |
+-----------+
|     20005 |
|     20007 |
+-----------+
SELECT cust_id FROM orders WHERE order_num IN(20005, 20007);
+---------+
| cust_id |
+---------+
|   10001 |
|   10004 |
+---------+
SELECT cust_id FROM orders WHERE order_num IN (SELECT order_num FROM orderitems WHERE prod_id = 'TNT2');
+---------+
| cust_id |
+---------+
|   10001 |
|   10004 |
+---------+
SELECT cust_name, cust_state, (SELECT COUNT(*) FROM orders WHERE orders.cust_id = customers.cust_id) AS orders FROM customers ORDER BY cust_name;
+----------------+------------+--------+
| cust_name      | cust_state | orders |
+----------------+------------+--------+
| Coyote Inc.    | MI         |      2 |
| E Fudd         | IL         |      1 |
| Mouse House    | OH         |      0 |
| Wascals        | IN         |      1 |
| Yosemite Place | AZ         |      1 |
+----------------+------------+--------+
SELECT vend_name, prod_name, prod_price FROM vendors, products WHERE vendors.vend_id = products.vend_id ORDER BY vend_name, prod_name;
+-------------+----------------+------------+
| vend_name   | prod_name      | prod_price |
+-------------+----------------+------------+
| ACME        | Bird seed      |      10.00 |
| ACME        | Carrots        |       2.50 |
| ACME        | Detonator      |      13.00 |
| ACME        | Safe           |      50.00 |
| ACME        | Sling          |       4.49 |
| ACME        | TNT (1 stick)  |       2.50 |
| ACME        | TNT (5 sticks) |      10.00 |
| Anvils R Us | .5 ton anvil   |       5.99 |
| Anvils R Us | 1 ton anvil    |       9.99 |
| Anvils R Us | 2 ton anvil    |      14.99 |
| Jet Set     | JetPack 1000   |      35.00 |
| Jet Set     | JetPack 2000   |      55.00 |
| LT Supplies | Fuses          |       3.42 |
| LT Supplies | Oil can        |       8.99 |
+-------------+----------------+------------+
SELECT vend_name, prod_name, prod_price FROM vendors INNER JOIN products ON vendors.vend_id = products.vend_id ORDER BY vend_name, prod_name;
+-------------+----------------+------------+
| vend_name   | prod_name      | prod_price |
+-------------+----------------+------------+
| ACME        | Bird seed      |      10.00 |
| ACME        | Carrots        |       2.50 |
| ACME        | Detonator      |      13.00 |
| ACME        | Safe           |      50.00 |
| ACME        | Sling          |       4.49 |
| ACME        | TNT (1 stick)  |       2.50 |
| ACME        | TNT (5 sticks) |      10.00 |
| Anvils R Us | .5 ton anvil   |       5.99 |
| Anvils R Us | 1 ton anvil    |       9.99 |
| Anvils R Us | 2 ton anvil    |      14.99 |
| Jet Set     | JetPack 1000   |      35.00 |
| Jet Set     | JetPack 2000   |      55.00 |
| LT Supplies | Fuses          |       3.42 |
| LT Supplies | Oil can        |       8.99 |
+-------------+----------------+------------+
SELECT prod_name, vend_name, prod_price, quantity FROM orderitems, vendors, products WHERE products.vend_id = vendors.vend_id AND orderitems.prod_id = products.prod_id AND order_num = 20005;
+----------------+-------------+------------+----------+
| prod_name      | vend_name   | prod_price | quantity |
+----------------+-------------+------------+----------+
| .5 ton anvil   | Anvils R Us |       5.99 |       10 |
| 1 ton anvil    | Anvils R Us |       9.99 |        3 |
| TNT (5 sticks) | ACME        |      10.00 |        5 |
| Bird seed      | ACME        |      10.00 |        1 |
+----------------+-------------+------------+----------+
SELECT cust_name, cust_contact FROM customers, orders, orderitems WHERE customers.cust_id = orders.cust_id AND orderitems.order_num = orders.order_num AND prod_id = 'TNT2';
+----------------+--------------+
| cust_name      | cust_contact |
+----------------+--------------+
| Coyote Inc.    | Y Lee        |
| Yosemite Place | Y Sam        |
+----------------+--------------+
SELECT cust_name, cust_contact FROM customers AS c, orders AS o, orderitems AS oi WHERE c.cust_id = o.cust_id AND oi.order_num = o.order_num AND prod_id = 'TNT2';
+----------------+--------------+
| cust_name      | cust_contact |
+----------------+--------------+
| Coyote Inc.    | Y Lee        |
| Yosemite Place | Y Sam        |
+----------------+--------------+
SELECT prod_id, prod_name FROM products WHERE vend_id = (SELECT vend_id FROM products WHERE prod_id = 'DTNTR');
+---------+----------------+
| prod_id | prod_name      |
+---------+----------------+
| DTNTR   | Detonator      |
| FB      | Bird seed      |
| FC      | Carrots        |
| SAFE    | Safe           |
| SLING   | Sling          |
| TNT1    | TNT (1 stick)  |
| TNT2    | TNT (5 sticks) |
+---------+----------------+
SELECT p1.prod_id, p1.prod_name FROM products AS p1, products AS p2 WHERE p1.vend_id = p2.vend_id AND p2.prod_id = 'DTNTR';
+---------+----------------+
| prod_id | prod_name      |
+---------+----------------+
| DTNTR   | Detonator      |
| FB      | Bird seed      |
| FC      | Carrots        |
| SAFE    | Safe           |
| SLING   | Sling          |
| TNT1    | TNT (1 stick)  |
| TNT2    | TNT (5 sticks) |
+---------+----------------+
SELECT customers.cust_id, orders.order_num FROM customers LEFT OUTER JOIN orders ON customers.cust_id = orders.cust_id;
+---------+-----------+
| cust_id | order_num |
+---------+-----------+
|   10001 |     20005 |
|   10001 |     20009 |
|   10002 |      NULL |
|   10003 |     20006 |
|   10004 |     20007 |
|   10005 |     20008 |
+---------+-----------+
SELECT customers.cust_id, orders.order_num FROM customers RIGHT OUTER JOIN orders ON customers.cust_id = orders.cust_id;
+---------+-----------+
| cust_id | order_num |
+---------+-----------+
|   10001 |     20005 |
|   10001 |     20009 |
|   10003 |     20006 |
|   10004 |     20007 |
|   10005 |     20008 |
+---------+-----------+

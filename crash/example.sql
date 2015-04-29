mysql> select * from products ;
select * from products ;
+---------+---------+----------------+------------+----------------------------------------------------------------+
| prod_id | vend_id | prod_name      | prod_price | prod_desc                                                      |
+---------+---------+----------------+------------+----------------------------------------------------------------+
| anv01   |    1001 | .5 ton anvil   |       5.99 | .5 ton anvil, black, complete with handy hook                  |
| anv02   |    1001 | 1 ton anvil    |       9.99 | 1 ton anvil, black, complete with handy hook and carrying case |
| anv03   |    1001 | 2 ton anvil    |      14.99 | 2 ton anvil, black, complete with handy hook and carrying case |
| dtntr   |    1003 | detonator      |      13.00 | detonator (plunger powered), fuses not included                |
| fb      |    1003 | bird seed      |      10.00 | large bag (suitable for road runners)                          |
| fc      |    1003 | carrots        |       2.50 | carrots (rabbit hunting season only)                           |
| fu1     |    1002 | fuses          |       3.42 | 1 dozen, extra long                                            |
| jp1000  |    1005 | jetpack 1000   |      35.00 | jetpack 1000, intended for single use                          |
| jp2000  |    1005 | jetpack 2000   |      55.00 | jetpack 2000, multi-use                                        |
| ol1     |    1002 | oil can        |       8.99 | oil can, red                                                   |
| safe    |    1003 | safe           |      50.00 | safe with combination lock                                     |
| sling   |    1003 | sling          |       4.49 | sling, one size fits all                                       |
| tnt1    |    1003 | tnt (1 stick)  |       2.50 | tnt, red, single stick                                         |
| tnt2    |    1003 | tnt (5 sticks) |      10.00 | tnt, red, pack of 10 sticks                                    |
+---------+---------+----------------+------------+----------------------------------------------------------------+
14 rows in set (0.01 sec)

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

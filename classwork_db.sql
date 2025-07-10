mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| classwork_db       |
| information_schema |
| mysql              |
| performance_schema |
| students           |
| sys                |
+--------------------+
6 rows in set (0.10 sec)

mysql> USE classwork_db;
Database changed
mysql> SOURCE D:\database\classwork_db.sql
Query OK, 0 rows affected, 1 warning (0.01 sec)

Query OK, 0 rows affected, 1 warning (0.00 sec)

Query OK, 0 rows affected, 1 warning (0.00 sec)

Query OK, 0 rows affected, 1 warning (0.00 sec)

Query OK, 0 rows affected, 2 warnings (0.08 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 0 rows affected, 1 warning (0.02 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 0 rows affected, 3 warnings (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.02 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)

mysql> SHOW TABLES;
+------------------------+
| Tables_in_classwork_db |
+------------------------+
| books                  |
| dept                   |
| emp                    |
| salgrade               |
+------------------------+
4 rows in set (0.02 sec)

mysql> SELECT * FROM books;
+------+---------------------------------+-------------------+-------------------+---------+
| id   | name                            | author            | subject           | price   |
+------+---------------------------------+-------------------+-------------------+---------+
| 1001 | Exploring C                     | Yashwant Kanetkar | C Programming     | 123.456 |
| 1002 | Pointers in C                   | Yashwant Kanetkar | C Programming     | 371.019 |
| 1003 | ANSI C Programming              | E Balaguruswami   | C Programming     | 334.215 |
| 1004 | ANSI C Programming              | Dennis Ritchie    | C Programming     | 140.121 |
| 2001 | C++ Complete Reference          | Herbert Schildt   | C++ Programming   | 417.764 |
| 2002 | C++ Primer                      | Stanley Lippman   | C++ Programming   | 620.665 |
| 2003 | C++ Programming Language        | Bjarne Stroustrup | C++ Programming   | 987.213 |
| 3001 | Java Complete Reference         | Herbert Schildt   | Java Programming  | 525.121 |
| 3002 | Core Java Volume I              | Cay Horstmann     | Java Programming  | 575.651 |
| 3003 | Java Programming Language       | James Gosling     | Java Programming  | 458.238 |
| 4001 | Operating System Concepts       | Peter Galvin      | Operating Systems | 567.391 |
| 4002 | Design of UNIX Operating System | Mauris J Bach     | Operating Systems | 421.938 |
| 4003 | UNIX Internals                  | Uresh Vahalia     | Operating Systems | 352.822 |
+------+---------------------------------+-------------------+-------------------+---------+
13 rows in set (0.00 sec)

mysql> SELECT * FROM dept;
+--------+------------+----------+
| deptno | dname      | loc      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hire       | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> SELECT * FROM salgrade;
+-------+-------+-------+
| grade | losal | hisal |
+-------+-------+-------+
|     1 |   700 |  1200 |
|     2 |  1201 |  1400 |
|     3 |  1401 |  2000 |
|     4 |  2001 |  3000 |
|     5 |  3001 |  9999 |
+-------+-------+-------+
5 rows in set (0.00 sec)

mysql> SELECT empno, ename FROM emp;
+-------+--------+
| empno | ename  |
+-------+--------+
|  7369 | SMITH  |
|  7499 | ALLEN  |
|  7521 | WARD   |
|  7566 | JONES  |
|  7654 | MARTIN |
|  7698 | BLAKE  |
|  7782 | CLARK  |
|  7788 | SCOTT  |
|  7839 | KING   |
|  7844 | TURNER |
|  7876 | ADAMS  |
|  7900 | JAMES  |
|  7902 | FORD   |
|  7934 | MILLER |
+-------+--------+
14 rows in set (0.00 sec)

mysql> SELECT DISTINCT ENAME FROM EMP;
+--------+
| ENAME  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
14 rows in set (0.01 sec)

mysql> SELECT DISTINCT price FROM books;
+---------+
| price   |
+---------+
| 123.456 |
| 371.019 |
| 334.215 |
| 140.121 |
| 417.764 |
| 620.665 |
| 987.213 |
| 525.121 |
| 575.651 |
| 458.238 |
| 567.391 |
| 421.938 |
| 352.822 |
+---------+
13 rows in set (0.00 sec)

mysql> SELECT DISTINCT sal FROM emp;
+---------+
| sal     |
+---------+
|  800.00 |
| 1600.00 |
| 1250.00 |
| 2975.00 |
| 2850.00 |
| 2450.00 |
| 3000.00 |
| 5000.00 |
| 1500.00 |
| 1100.00 |
|  950.00 |
| 1300.00 |
+---------+
12 rows in set (0.00 sec)

mysql> SELECT DISTINCT job FROM emp;
+-----------+
| job       |
+-----------+
| CLERK     |
| SALESMAN  |
| MANAGER   |
| ANALYST   |
| PRESIDENT |
+-----------+
5 rows in set (0.00 sec)

mysql> SELECT deptno FROM emp;
+--------+
| deptno |
+--------+
|     20 |
|     30 |
|     30 |
|     20 |
|     30 |
|     30 |
|     10 |
|     20 |
|     10 |
|     30 |
|     20 |
|     30 |
|     20 |
|     10 |
+--------+
14 rows in set (0.00 sec)

mysql> SELECT DISTINCT deptno FROM emp;
+--------+
| deptno |
+--------+
|     20 |
|     30 |
|     10 |
+--------+
3 rows in set (0.00 sec)

mysql> SELECT deptno, job FROM emp;
+--------+-----------+
| deptno | job       |
+--------+-----------+
|     20 | CLERK     |
|     30 | SALESMAN  |
|     30 | SALESMAN  |
|     20 | MANAGER   |
|     30 | SALESMAN  |
|     30 | MANAGER   |
|     10 | MANAGER   |
|     20 | ANALYST   |
|     10 | PRESIDENT |
|     30 | SALESMAN  |
|     20 | CLERK     |
|     30 | CLERK     |
|     20 | ANALYST   |
|     10 | CLERK     |
+--------+-----------+
14 rows in set (0.00 sec)

mysql> SELECT DISTINCT deptno, job FROM emp;
+--------+-----------+
| deptno | job       |
+--------+-----------+
|     20 | CLERK     |
|     30 | SALESMAN  |
|     20 | MANAGER   |
|     30 | MANAGER   |
|     10 | MANAGER   |
|     20 | ANALYST   |
|     10 | PRESIDENT |
|     30 | CLERK     |
|     10 | CLERK     |
+--------+-----------+
9 rows in set (0.00 sec)

mysql> SELECT DISTINCT job, deptno FROM emp;
+-----------+--------+
| job       | deptno |
+-----------+--------+
| CLERK     |     20 |
| SALESMAN  |     30 |
| MANAGER   |     20 |
| MANAGER   |     30 |
| MANAGER   |     10 |
| ANALYST   |     20 |
| PRESIDENT |     10 |
| CLERK     |     30 |
| CLERK     |     10 |
+-----------+--------+
9 rows in set (0.00 sec)

mysql>

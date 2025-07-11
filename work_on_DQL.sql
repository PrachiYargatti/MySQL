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
6 rows in set (0.13 sec)

mysql> USE classwork_db;
Database changed
mysql> SHOW TABLES;
+------------------------+
| Tables_in_classwork_db |
+------------------------+
| books                  |
| dept                   |
| emp                    |
| salgrade               |
+------------------------+
4 rows in set (0.03 sec)

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
13 rows in set (0.03 sec)

mysql> SELECT * FROM dept;
+--------+------------+----------+
| deptno | dname      | loc      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
4 rows in set (0.02 sec)

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
14 rows in set (0.01 sec)

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
5 rows in set (0.01 sec)

mysql> SELECT ename, sal, sal*0.5 DA FROM emp;
+--------+---------+----------+
| ename  | sal     | DA       |
+--------+---------+----------+
| SMITH  |  800.00 |  400.000 |
| ALLEN  | 1600.00 |  800.000 |
| WARD   | 1250.00 |  625.000 |
| JONES  | 2975.00 | 1487.500 |
| MARTIN | 1250.00 |  625.000 |
| BLAKE  | 2850.00 | 1425.000 |
| CLARK  | 2450.00 | 1225.000 |
| SCOTT  | 3000.00 | 1500.000 |
| KING   | 5000.00 | 2500.000 |
| TURNER | 1500.00 |  750.000 |
| ADAMS  | 1100.00 |  550.000 |
| JAMES  |  950.00 |  475.000 |
| FORD   | 3000.00 | 1500.000 |
| MILLER | 1300.00 |  650.000 |
+--------+---------+----------+
14 rows in set (0.00 sec)

mysql> SELECT ename, sal, sal*0.5 DA, sal+(0.5*sal) Total_sal FROM emp;
+--------+---------+----------+-----------+
| ename  | sal     | DA       | Total_sal |
+--------+---------+----------+-----------+
| SMITH  |  800.00 |  400.000 |  1200.000 |
| ALLEN  | 1600.00 |  800.000 |  2400.000 |
| WARD   | 1250.00 |  625.000 |  1875.000 |
| JONES  | 2975.00 | 1487.500 |  4462.500 |
| MARTIN | 1250.00 |  625.000 |  1875.000 |
| BLAKE  | 2850.00 | 1425.000 |  4275.000 |
| CLARK  | 2450.00 | 1225.000 |  3675.000 |
| SCOTT  | 3000.00 | 1500.000 |  4500.000 |
| KING   | 5000.00 | 2500.000 |  7500.000 |
| TURNER | 1500.00 |  750.000 |  2250.000 |
| ADAMS  | 1100.00 |  550.000 |  1650.000 |
| JAMES  |  950.00 |  475.000 |  1425.000 |
| FORD   | 3000.00 | 1500.000 |  4500.000 |
| MILLER | 1300.00 |  650.000 |  1950.000 |
+--------+---------+----------+-----------+
14 rows in set (0.00 sec)

mysql> SELECT ename, sal, sal*0.5 DA, sal+(0.5*sal) `Total Salary` FROM emp;
+--------+---------+----------+--------------+
| ename  | sal     | DA       | Total Salary |
+--------+---------+----------+--------------+
| SMITH  |  800.00 |  400.000 |     1200.000 |
| ALLEN  | 1600.00 |  800.000 |     2400.000 |
| WARD   | 1250.00 |  625.000 |     1875.000 |
| JONES  | 2975.00 | 1487.500 |     4462.500 |
| MARTIN | 1250.00 |  625.000 |     1875.000 |
| BLAKE  | 2850.00 | 1425.000 |     4275.000 |
| CLARK  | 2450.00 | 1225.000 |     3675.000 |
| SCOTT  | 3000.00 | 1500.000 |     4500.000 |
| KING   | 5000.00 | 2500.000 |     7500.000 |
| TURNER | 1500.00 |  750.000 |     2250.000 |
| ADAMS  | 1100.00 |  550.000 |     1650.000 |
| JAMES  |  950.00 |  475.000 |     1425.000 |
| FORD   | 3000.00 | 1500.000 |     4500.000 |
| MILLER | 1300.00 |  650.000 |     1950.000 |
+--------+---------+----------+--------------+
14 rows in set (0.00 sec)

mysql> SELECT ename, sal FROM emp ORDER BY sal;
+--------+---------+
| ename  | sal     |
+--------+---------+
| SMITH  |  800.00 |
| JAMES  |  950.00 |
| ADAMS  | 1100.00 |
| WARD   | 1250.00 |
| MARTIN | 1250.00 |
| MILLER | 1300.00 |
| TURNER | 1500.00 |
| ALLEN  | 1600.00 |
| CLARK  | 2450.00 |
| BLAKE  | 2850.00 |
| JONES  | 2975.00 |
| SCOTT  | 3000.00 |
| FORD   | 3000.00 |
| KING   | 5000.00 |
+--------+---------+
14 rows in set (0.00 sec)

mysql> SELECT ename, sal FROM emp ORDER BY sal DESC;
+--------+---------+
| ename  | sal     |
+--------+---------+
| KING   | 5000.00 |
| SCOTT  | 3000.00 |
| FORD   | 3000.00 |
| JONES  | 2975.00 |
| BLAKE  | 2850.00 |
| CLARK  | 2450.00 |
| ALLEN  | 1600.00 |
| TURNER | 1500.00 |
| MILLER | 1300.00 |
| WARD   | 1250.00 |
| MARTIN | 1250.00 |
| ADAMS  | 1100.00 |
| JAMES  |  950.00 |
| SMITH  |  800.00 |
+--------+---------+
14 rows in set (0.00 sec)

mysql> SELECT * FROM emp LIMIT 5;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hire       | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM emp LIMIT 5,3;
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hire       | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM emp ORDER BY sal DESC LIMIT 1;
+-------+-------+-----------+------+------------+---------+------+--------+
| empno | ename | job       | mgr  | hire       | sal     | comm | deptno |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
+-------+-------+-----------+------+------------+---------+------+--------+
1 row in set (0.00 sec)

mysql> SELECT DISTINCT * FROM emp ORDER BY sal LIMIT 1,1;
+-------+-------+-------+------+------------+--------+------+--------+
| empno | ename | job   | mgr  | hire       | sal    | comm | deptno |
+-------+-------+-------+------+------------+--------+------+--------+
|  7900 | JAMES | CLERK | 7698 | 1981-12-03 | 950.00 | NULL |     30 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set (0.01 sec)

mysql> SELECT sal FROM emp ORDER BY sal DESC LIMIT 2,1;
+---------+
| sal     |
+---------+
| 3000.00 |
+---------+
1 row in set (0.00 sec)

mysql> SELECT DISTINCT sal FROM emp ORDER BY sal DESC LIMIT 2,1;
+---------+
| sal     |
+---------+
| 2975.00 |
+---------+
1 row in set (0.00 sec)

mysql> SELECT * FROM emp WHERE job = "manager";
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hire       | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
+-------+-------+---------+------+------------+---------+------+--------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM emp WHERE empno = 20;
Empty set (0.00 sec)

mysql> SELECT * FROM emp WHERE job = "clerk" AND empno = 10;
Empty set (0.00 sec)

mysql> SELECT * FROM emp WHERE job = "clerk" AND deptno = 10;
+-------+--------+-------+------+------------+---------+------+--------+
| empno | ename  | job   | mgr  | hire       | sal     | comm | deptno |
+-------+--------+-------+------+------------+---------+------+--------+
|  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-------+------+------------+---------+------+--------+
1 row in set (0.00 sec)

mysql> SELECT * FROM emp WHERE job = "salesman" OR job = "Analyst";
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hire       | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM emp WHERE job = "salesman" OR deptno = 30;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hire       | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM emp WHERE sal>1500;
+-------+-------+-----------+------+------------+---------+--------+--------+
| empno | ename | job       | mgr  | hire       | sal     | comm   | deptno |
+-------+-------+-----------+------+------------+---------+--------+--------+
|  7499 | ALLEN | SALESMAN  | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975.00 |   NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850.00 |   NULL |     30 |
|  7782 | CLARK | MANAGER   | 7839 | 1981-06-09 | 2450.00 |   NULL |     10 |
|  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000.00 |   NULL |     20 |
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 |   NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000.00 |   NULL |     20 |
+-------+-------+-----------+------+------------+---------+--------+--------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM emp WHERE sal>1000 AND sal<3000;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hire       | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+----------+------+------------+---------+---------+--------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM emp WHERE sal BETWEEN 1000 AND 3000;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hire       | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+----------+------+------------+---------+---------+--------+
11 rows in set (0.00 sec)

mysql> SELECT * FROM emp WHERE 1000<sal<3000;
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

mysql> SELECT * FROM emp WHERE job = "manager" OR job = "clerk" OR job = "president";
+-------+--------+-----------+------+------------+---------+------+--------+
| empno | ename  | job       | mgr  | hire       | sal     | comm | deptno |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
8 rows in set (0.00 sec)

mysql> SELECT * FROM emp WHERE job IN ("clerk", "manager", "president");
+-------+--------+-----------+------+------------+---------+------+--------+
| empno | ename  | job       | mgr  | hire       | sal     | comm | deptno |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
8 rows in set (0.00 sec)

mysql> SELECT * FROM emp WHERE ename >= "S" AND ename < "T";
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hire       | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
2 rows in set (0.00 sec)

mysql> SELECT ename FROM emp WHERE ename LIKE "s%";
+-------+
| ename |
+-------+
| SMITH |
| SCOTT |
+-------+
2 rows in set (0.01 sec)

mysql> SELECT * FROM emp WHERE ename = "s";
Empty set (0.00 sec)

ERROR:
No query specified

mysql> SELECT * FROM emp WHERE ename = "s";
Empty set (0.00 sec)

mysql> SELECT * FROM emp WHERE ename = 's';
Empty set (0.00 sec)

mysql> SELECT ename FROM emp WHERE ename LIKE "%R";
+--------+
| ename  |
+--------+
| TURNER |
| MILLER |
+--------+
2 rows in set (0.00 sec)

mysql> SELECT ename FROM emp WHERE ename LIKE "%A%";
+--------+
| ename  |
+--------+
| ALLEN  |
| WARD   |
| MARTIN |
| BLAKE  |
| CLARK  |
| ADAMS  |
| JAMES  |
+--------+
7 rows in set (0.00 sec)

mysql> SELECT ename FROM emp WHERE ename LIKE "%A%A%";
+-------+
| ename |
+-------+
| ADAMS |
+-------+
1 row in set (0.00 sec)

mysql> SELECT ename FROM emp WHERE ename LIKE "__R%";
+--------+
| ename  |
+--------+
| WARD   |
| MARTIN |
| TURNER |
| FORD   |
+--------+
4 rows in set (0.00 sec)

mysql>

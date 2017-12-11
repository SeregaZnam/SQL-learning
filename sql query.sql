SELECT * FROM table WHERE id > 0
UPDATE table SET pole = value1 WHERE id > 0
DELETE FROM table WHERE id = 1
INSERT INTO table SET pole1 = value1, pole2 = value2
INSERT INTO table (pole1, pole2) VALUES (value3, value4), (value5, value6)

SELECT * FROM workers WHERE id IN(1, 2, 3, 5, 14);
SELECT * FROM workers WHERE login IN('eee', 'bbb', 'zzz');
SELECT * FROM workers WHERE id IN(1, 2, 3, 7, 9) AND login IN('user', 'admin', 'ivan') AND salary > 300;

SELECT * FROM workers WHERE salary BETWEEN 100 AND 1000
SELECT * FROM workers WHERE id BETWEEN 3 AND 10 AND salary BETWEEN 300 AND 500

SELECT id as userId, login as userLogin, salary as userSalary FROM workers

SELECT DISTINCT salary FROM workers
SELECT DISTINCT age FROM workers

SELECT MIN(salary) FROM workers
SELECT MAX(salary) FROM workers

SELECT SUM(salary) FROM workers
SELECT SUM(salary) FROM workers WHERE age BETWEEN 21 AND 25
SELECT SUM(salary) FROM workers WHERE id IN(1,2,3,5)

SELECT AVG(salary) FROM workers
SELECT AVG(age) FROM workers

SELECT * FROM workers WHERE date > NOW()
INSERT INTO workers SET datetime = NOW()	INSERT INTO workers datetime VALUES NOW()
INSERT INTO workers SET date = CURRENT_DATE()
INSERT INTO workers SET time = CURRENT_TIME()

SELECT * FROM workers WHERE YEAR(date) = 2016
SELECT * FROM workers WHERE MONTH(date) = 3
SELECT * FROM workers WHERE DAY(date) = 3
SELECT * FROM workers WHERE MONTH(date) = 4 AND DAY(date) = 5
SELECT * FROM workers WHERE DAY(date) IN(1,7,11,12,15,19,21,29)
SELECT * FROM workers WHERE DAYOFWEEK(date) = 3
SELECT * FROM workers WHERE DAY(date) <= 10 AND YEAR(date) = 2016
SELECT * FROM workers WHERE DAY(date) < YEAR(date)
SELECT DAY(date) AS day, MONTH(date) AS month, YEAR(date) AS year FROM workers
SELECT WEEKDAY(NOW()) AS today FROM workers

SELECT EXTRACT(YEAR FROM date) AS year, 
EXTRACT(MONTH FROM date) AS month, 
EXTRACT(DAY FROM date) AS day 
FROM workers

SELECT DATE(date) AS date FROM workers


SELECT DATE_FORMAT(date, '%d.%m.%Y') FROM workers
SELECT DATE_FORMAT(date, '%Y%% %d.%m') FROM workers


SELECT DATE_ADD(date, INTERVAL 1 DAY) FROM workers
SELECT DATE_SUB(date, INTERVAL 1 DAY) FROM workers
SELECT DATE_ADD(date, INTERVAL "1:2" DAY_HOUR) FROM workers
SELECT DATE_ADD(date, INTERVAL 1 DAY INTERVAL 2 HOUR INTERVAL 3 MINUTE) FROM workers
SELECT DATE_ADD(date, INTERVAL "1:2:3:5" DAY_SECOND) FROM workers
SELECT DATE_ADD(date, INTERVAL "2:3:5" HOUR_SECOND) FROM workers
SELECT DATE_ADD(date, INTERVAL "1:-2" DAY_HOUR) FROM workers
SELECT DATE_ADD(date, INTERVAL 1 -2 -3 DAY_MINUTE) FROM workers


SELECT 3 AS res FROM workers
SELECT 'eee' AS workers FROM workers
SELECT 3 FROM workers
SELECT SUM(salary) AND SUM(age) AS res FROM workers
SELECT (salary - age) FROM workers
SELECT (salary * age) AS res FROM workers
SELECT (salary * age)/2 AS res FROM workers
SELECT * FROM workers WHERE DAY(date) + MONTH(date) < 10


SELECT LEFT(description, 5) FROM workers
SELECT RIGHT(description, 5) FROM workers
SELECT SUBSTRING(description, 2, 10) FROM workers


SELECT id, name FROM category UNION SELECT id, name FROM sub_category


SELECT DISTINCT age AS res (SELECT GROUP_CONCAT(id SEPARATOR '-')) FROM workers


SELECT * FROM workers WHERE salary > (SELECT AVG(salary) FROM workers)
SELECT * FROM workers WHERE age < (SELECT AVG(age)/2*3) FROM workers)
SELECT * FROM workers WHERE salary = (SELECT MIN(salary) FROM workers)
SELECT * FROM workers WHERE salary = (SELECT MAX(salary)) FROM workers)
SELECT MAX(salary) AS max FROM workers WHERE age = 25
SELECT (SELECT (MAX(age) - MIN(age))/2 FROM workers) AS avg FROM workers
SELECT (SELECT (MAX(salary) - MIN(salary))/2 FROM workers) AS avg from workers WHERE age = 25


SELECT * FROM page LEFT JOIN category ON page.category_id = category.id
SELECT * FROM page 
LEFT JOIN category ON page.sub_category_id = category.id 
LEFT JOIN sub_category_id ON category.id = sub_category_id.id


CREATE DATABASE test1
CREATE DATABASE test2

DROP DATABASE test2

CREATE TABLE table1(
	id INT(1),
	login VARCHAR(255),
	salary INT(6),
	age INT(6),
	date DATE NOT NULL
	primary key (Id)
);
CREATE TABLE table2(
	id INT(1),
	login VARCHAR(255),
	salary INT(6),
	age INT(6),
	date DATE NOT NULL
	primary key (Id)
);

RENAME TABLE table2 TO table3

DELETE TABLE table3

ALTER TABLE table1 ALTER COLUMN status

ALTER TABLE table1 DROP COLUMN age

RENAME COLUMN login TO user_login

ALTER TABLE table1 CHANGE salary VARCHAR(255)

DELETE TABLE table1

TRUNCATE test1
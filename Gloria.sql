-- Active: 1728117029218@@127.0.0.1@3306@demo
create DATABASE DEMO;
USE DEMO;
CREATE TABLE DEPT(
    DID INT PRIMARY KEY,
    DNAME VARCHAR(255)
);
CREATE TABLE EMPLOYEE(
    EMPNO CHAR(4) PRIMARY KEY,
    Ename VARCHAR(255),
    job VARCHAR(50),
    salary INT,
    DID INT,
    FOREIGN KEY(DID) REFERENCES DEPT(DID)
);
INSERT INTO DEPT VALUES(20,'sales'),(30,'mkting'),(40,'computing');
INSERT INTO EMPLOYEE VALUES('E001','Tom','clerk',40000,20),
                           ('E002','Agaba','Manager',16000,30),
                           ('E003','null','null',20000,20),
                           ('E004','Timo','clerk',40000,30),
                           ('E005','Simon','Manager',60000,20);
SELECT * FROM employee;
CREATE VIEW View_d as SELECT * FROM employee where DID=30;
SELECT * FROM view_d;
CREATE VIEW View_e as SELECT job,AVG(salary) as averagesalary from employee GROUP BY job;
SELECT * FROM view_e;
create VIEW View_f as SELECT * FROM employee where Ename LIKE 'T%';
select * FROM view_f;
CREATE VIEW View_g as SELECT DISTINCT job from employee ORDER BY job DESC;
SELECT * FROM view_g;
CREATE VIEW View_h as SELECT job, SUM(SALARY) AS TOTALAMOUNTSPENT FROM employee GROUP BY job;
SELECT * FROM employee;
CREATE VIEW View_i as SELECT EMPNO,ENAME,JOB,SALARY,SALARY*1.12 AS INCREASED_SALARY,`DID` FROM employee;
SELECT * FROM view_i;
ALTER TABLE dept ADD location VARCHAR(40);
ALTER TABLE dept MODIFY DNAME VARCHAR(50);
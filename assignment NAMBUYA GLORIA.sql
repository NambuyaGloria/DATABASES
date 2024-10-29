-- Active: 1728117029218@@127.0.0.1@3306@matickhotel
SHOW DATABASES;
USE MATICKHOTEL;
SHOW TABLES;
SELECT * FROM bookings;
SELECT * FROM customer;
SELECT * FROM employee;
DESCRIBE employee;
DESCRIBE customer;
DESCRIBE bookings;
INSERT INTO table_employees (EmpID,EmpName,Profession,Address,Gender)
     VALUES(E001,"Feta Jordan","manager","Mukono","M");
INSERT INTO table customer(CustomerID,CustomerName,RoomNo,Gender)
     VALUES(001,"Mugisha Bright",111,"M");
DESCRIBE employees;

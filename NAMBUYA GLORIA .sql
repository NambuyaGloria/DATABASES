-- Active: 1728117029218@@127.0.0.1@3306@matickhotel
CREATE DATABASE HOTELMATICK;
USE HOTELMATICK;
SHOW DATABASES;
CREATE TABLE Customer(
    customerID INT AUTO_INCREMENT,
    customerName VARCHAR(255) UNIQUE NOT NULL,
    address VARCHAR(255),
    PRIMARY KEY(customerID)
    );
DESCRIBE CUSTOMER;
INSERT INTO Customer(customerID,customerName,address)
      VALUES(001,"Mugisha Elvis","Mukono");
SELECT * FROM Customer;
INSERT INTO Customer(customerID,customerName,address)
    VALUES(002,"Tamale Enock","Mbalala");
INSERT INTO Customer(CustomerID,CustomerName,address)        
    VALUES(003,"Nakangu Daisy","kampala");
INSERT INTO Customer(`CustomerID`,`CustomerName`,address) 
    VALUES(004,"Oponya Denis","Soroti");
INSERT INTO Customer(`CustomerID`,`CustomerName`,address) 
    VALUES(005,"Amanda Evelyn","Makindye");
SELECT * FROM Customer;
CREATE TABLE Employees(
    EmpID INT AUTO_INCREMENT,
    EmpName VARCHAR(255) UNIQUE NOT NULL,
    Profession VARCHAR(50),
    Address VARCHAR(50),
    Gender VARCHAR(20),
    PRIMARY KEY(EmpID)
);
 DESCRIBE Employees;
 INSERT INTO Employees(EmpID,EmpName,Profession,Address,Gender)
       VALUES(10,"Feta Jrdan","Manager","Mukono","M");
INSERT INTO Employees(`EmpID`,`EmpName`,`Profession`,`Address`,`Gender`) 
       VALUES(20,"Semu Joshua","Chef","Kapchorwa","M");
INSERT INTO employees(`EmpID`,`EmpName`,`Profession`,`Address`,`Gender`)
      VALUES(30,"Kabeho Samantha","Receptionist","Kiruhura","F");
INSERT INTO Employees(`EmpID`,`EmpName`,`Profession`,`Address`,`Gender`)
       VALUES(40,"Mirembe Shanitah","Room Attendant","Mukono","F");
INSERT INTO Employees(`EmpID`,`EmpName`,`Profession`,`Address`,`Gender`)
    VALUES(50,"Oumo Aksam","Cashier","Lira","M");
SELECT * FROM employees;
CREATE TABLE Bookings(
    BOOKINGID INT AUTO_INCREMENT,
    ROOMID INT UNIQUE NOT NULL,
    PRIMARY KEY(BOOKINGID)
);
INSERT INTO Bookings(`BookingID`,`ROOMID`)
       VALUES(500,100),(300,600),(700,800),(200,500),(900,400);
SELECT * FROM bookings;
CREATE TABLE Rooms(
    ROOMID INT AUTO_INCREMENT,
    RoomType VARCHAR(255) UNIQUE NOT NULL,
    Beds INT,
    PRIMARY KEY(ROOMID)
);
INSERT INTO Rooms(ROOMID,RoomType,Beds)
   VALUES(100,"DOUBLE",2),(600,"SINGLE",1),(800,"VIP",2),(500,"KINGSIZE",2),(400,"EXECUTIVE",1);
SELECT * FROM Rooms;





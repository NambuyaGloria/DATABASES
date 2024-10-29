-- Active: 1728117029218@@127.0.0.1@3306@satini
SHOW TABLES;
CREATE TABLE farmer(
    farmerID INT AUTO_INCREMENT,
    fname VARCHAR(225) UNIQUE NOT NULL,
    address VARCHAR(225),
    contact VARCHAR(20),
    PRIMARY KEY(farmerID)
);

CREATE TABLE crop(
    cropID INT AUTO_INCREMENT,
    cropName VARCHAR(50)NOT NULL,
    ctype VARCHAR(45),
    season VARCHAR(45),
    PRIMARY KEY(cropID)
);

CREATE TABLE farmer_crop(
    farmerID INT,
    cropID INT,
    Area_cultivated FLOAT,
    yield INT,
    PRIMARY KEY(farmerID,cropID),
    FOREIGN KEY(farmerID) REFERENCES farmer(farmerID),

    FOREIGN KEY(cropID) REFERENCES crop(cropID)
);

ALTER TABLE farmer
    ADD Email VARCHAR(50);

DESCRIBE farmer;
ALTER TABLE farmer
    DROP Email;

CREATE TABLE User(
    UserID INT PRIMARY KEY,
    UName VARCHAR(45)
);
DROP TABLE User;

INSERT INTO farmer(fname,address,contact)
     VALUES("John Kyambadde","Kibinge village","+256700111111");
    
    INSERT INTO farmer(fName,address,contact) 
    VALUES("Sarah Nambi","kwangala Town","+256700222222");
     INSERT INTO farmer(fname,address,contact)
     VALUES("Paul Okello","Lwengo District","+256700333333");
SELECT *FROM farmer;
SELECT *FROM farmer WHERE address = "Lwengo District";
DELETE FROM farmer WHERE `farmerID`= 2;
 DESCRIBE farmer;   


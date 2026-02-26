/*
=============================================================
Database Creation and Table Setup Script
=============================================================
Script Purpose:
    This script creates a new SQL Server database named 'MyDatabase'. 
    If the database already exists, it is dropped to ensure a clean setup. 
    The script then creates three tables: 'customers', 'orders', and 'employees' 
    with their respective schemas, and populates them with sample data.
    
WARNING:
    Running this script will drop the entire 'MyDatabase' database if it exists, 
    permanently deleting all data within it. Proceed with caution and ensure you 
    have proper backups before executing this script.
*/

USE master;
GO

-- Drop and recreate the 'MyDatabase' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'MyDatabase')
BEGIN
    ALTER DATABASE MyDatabase SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE MyDatabase;
END;
GO

-- Create the 'MyDatabase' database
CREATE DATABASE MyDatabase;
GO

USE MyDatabase;
GO

-- ======================================================
-- Table: customers
-- ======================================================
DROP TABLE IF EXISTS customers;
GO

CREATE TABLE customers (
    id INT NOT NULL,
    first_name  VARCHAR(50) NOT NULL,
    country     VARCHAR(50),
    score       INT,
    CONSTRAINT PK_customers PRIMARY KEY (id)
);
GO

-- Insert customers data

INSERT INTO customers (id, first_name, country, score) VALUES
(1,'Ahmed','Egypt',80),
(2,'Sara','USA',95),
(3,'Ali','Egypt',60),
(4,'John','UK',70),
(5,'Mona','Egypt',90),
(6,'Omar','UAE',75),
(7,'Laila','Egypt',85),
(8,'David','USA',88),
(9,'Hassan','Egypt',55),
(10,'Noor','Jordan',77),
(11,'Adam','USA',92),
(12,'Fatma','Egypt',68),
(13,'Sam','UK',81),
(14,'Yara','Lebanon',73),
(15,'Tamer','Egypt',66),
(16,'Nora','UAE',84),
(17,'Peter','USA',79),
(18,'Khaled','Egypt',87),
(19,'Salma','Egypt',93),
(20,'Jack','UK',71),
(21,'Huda','Jordan',62),
(22,'Ibrahim','Egypt',74),
(23,'Lucy','USA',90),
(24,'Amr','Egypt',58),
(25,'Rana','Lebanon',82),
(26,'Ziad','Egypt',76),
(27,'Mariam','Egypt',91),
(28,'Chris','USA',65),
(29,'Hany','Egypt',83),
(30,'Dina','UAE',89),
(31,'Mark','UK',72),
(32,'Reem','Jordan',64),
(33,'Youssef','Egypt',78),
(34,'Nadine','Lebanon',86),
(35,'Ola','Egypt',69),
(36,'George','USA',94),
(37,'Ramy','Egypt',57),
(38,'Aya','Egypt',88),
(39,'Mohamed','Egypt',96),
(40,'Julia','USA',80),
(41,'Karim','Egypt',73),
(42,'Lina','Jordan',67),
(43,'Walid','Egypt',85),
(44,'Maya','Lebanon',92),
(45,'Steve','UK',77),
(46,'Farah','UAE',81),
(47,'Sherif','Egypt',59),
(48,'Nada','Egypt',87),
(49,'Tony','USA',83),
(50,'Heba','Egypt',90);
GO

-- ======================================================
-- Table: orders
-- ======================================================
DROP TABLE IF EXISTS orders;
GO

INSERT INTO orders (order_id, customer_id, order_date, sales) VALUES
(1001,1,'2021-01-11',35),
(1002,2,'2021-01-15',20),
(1003,3,'2021-01-20',50),
(1004,4,'2021-02-02',15),
(1005,5,'2021-02-10',60),
(1006,6,'2021-02-18',25),
(1007,7,'2021-03-05',40),
(1008,8,'2021-03-11',30),
(1009,9,'2021-03-20',10),
(1010,10,'2021-03-28',55),

(1011,11,'2021-04-03',22),
(1012,12,'2021-04-08',18),
(1013,13,'2021-04-15',75),
(1014,14,'2021-04-22',35),
(1015,15,'2021-05-01',90),
(1016,16,'2021-05-10',28),
(1017,17,'2021-05-15',33),
(1018,18,'2021-05-21',48),
(1019,19,'2021-05-29',65),
(1020,20,'2021-06-02',12),

(1021,21,'2021-06-08',45),
(1022,22,'2021-06-14',55),
(1023,23,'2021-06-20',70),
(1024,24,'2021-06-25',20),
(1025,25,'2021-07-01',88),
(1026,26,'2021-07-05',36),
(1027,27,'2021-07-11',58),
(1028,28,'2021-07-18',14),
(1029,29,'2021-07-24',62),
(1030,30,'2021-07-30',41),

(1031,31,'2021-08-04',52),
(1032,32,'2021-08-09',19),
(1033,33,'2021-08-15',77),
(1034,34,'2021-08-21',29),
(1035,35,'2021-08-27',66),
(1036,36,'2021-09-02',38),
(1037,37,'2021-09-08',11),
(1038,38,'2021-09-14',80),
(1039,39,'2021-09-20',95),
(1040,40,'2021-09-25',44),

(1041,41,'2021-10-01',59),
(1042,42,'2021-10-06',23),
(1043,43,'2021-10-12',71),
(1044,44,'2021-10-18',32),
(1045,45,'2021-10-24',85),
(1046,46,'2021-10-29',27),
(1047,47,'2021-11-03',13),
(1048,48,'2021-11-09',68),
(1049,49,'2021-11-15',57),
(1050,50,'2021-11-21',49);

GO

-- Insert orders data

GO

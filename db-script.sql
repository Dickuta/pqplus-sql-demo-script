CREATE TABLE `NOV Cohort` (
    candID INT PRIMARY KEY,
    `First name` VARCHAR(20),
    `Last name` VARCHAR(20),
    Email VARCHAR(24),
    `session type` VARCHAR(15),
    Mstage VARCHAR(15),
    `Amount to pay` DECIMAL(10,2)
);


INSERT INTO `NOV cohort` (candID, `First name`, `Last name`, email, `session type`, Mstage, `amount to pay`)
VALUES
(1001, 'Olajumoke', 'Olatunji', 'Oladouble@gmail.com', 'Virtual', 'Prospecting', 100000.00),
(1002, 'Morajide', 'Smith', 'jane@yahoo.com', 'Physical', 'Closed Won', 120000.00),
(1003, 'Kobby', 'Okafor', 'chinedu@icloud.com', 'Virtual', 'Part Paid', 110000.00),
(1004, 'Olakunle', 'Williams', 'chinedu@icloud.com', 'Virtual', 'Part Paid', 110000.00),
(1005,'Solomon','Grundi','solomon.grundi@gmail.com','physical','closed won',112000.00);


SELECT COUNT(*) AS num_closed_won
FROM `NOV cohort`
WHERE Mstage = 'Closed won';

SELECT COUNT(*) AS num_Virtual
FROM `NOV cohort`
WHERE `Session type` = 'Virtual';

CREATE TABLE `Nov Data`(
    candID VARCHAR(10) PRIMARY KEY,
    `First name` VARCHAR(20),
    `Last name` VARCHAR(20),
    email VARCHAR(50),
    `session type` VARCHAR(10),
    Mstage VARCHAR(20),
    `amount to pay` DECIMAL(10, 2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CandidateData2.csv'
INTO TABLE `Nov Data`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 LINES;

SELECT * FROM 'Nov Data`;

SELECT COUNT(*) AS num_closed_won
FROM `NOV Data`
WHERE Mstage = 'closed_won';


SELECT COUNT(*) AS num_closed_won
FROM `NOV Data`
WHERE Mstage = 'closed_won';


SELECT COUNT(*) AS num_Part_Paid
FROM `NOV data`
WHERE Mstage = 'Part-Paid';
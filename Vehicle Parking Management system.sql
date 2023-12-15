# Parking lot management system

Create Database parking_lot;
USE  parking_lot;

# Parking Space Table

CREATE TABLE ParkingSpace (
    SpaceID INT PRIMARY KEY,
    Status VARCHAR(15) NOT NULL,
    SizeType VARCHAR(50) NOT NULL
);

# User Table
CREATE TABLE User (
    UserID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ContactInformation VARCHAR(255) NOT NULL
);


# Vehicle Table

CREATE TABLE Vehicle (
    RegistrationNumber VARCHAR(20) PRIMARY KEY,
    VehicleType VARCHAR(50) NOT NULL,
    OwnerUserID INT,
    FOREIGN KEY (OwnerUserID) REFERENCES User(UserID)
);

# Entry/Exit Log Table
CREATE TABLE EntryExitLog (
    LogID INT PRIMARY KEY,
    RegistrationNumber VARCHAR(20),
    SpaceID INT,
    TimeOfEntry TIMESTAMP NOT NULL,
    TimeOfExit TIMESTAMP,
    FOREIGN KEY (RegistrationNumber) REFERENCES Vehicle(RegistrationNumber),
    FOREIGN KEY (SpaceID) REFERENCES ParkingSpace(SpaceID)
);



INSERT INTO ParkingSpace (SpaceID, Status, SizeType) VALUES
(1, 'Available', 'Compact'),
(2, 'Occupied', 'Standard'),
(3, 'Available', 'Large'),
(4, 'Occupied', 'Compact'),
(5, 'Available', 'Standard'),
(6, 'Occupied', 'Large'),
(7, 'Available', 'Compact'),
(8, 'Occupied', 'Standard'),
(9, 'Available', 'Large'),
(10, 'Occupied', 'Compact'),
(11, 'Available', 'Standard'),
(12, 'Occupied', 'Large'),
(13, 'Available', 'Compact'),
(14, 'Occupied', 'Standard'),
(15, 'Available', 'Large'),
(16, 'Occupied', 'Compact'),
(17, 'Available', 'Standard'),
(18, 'Occupied', 'Large'),
(19, 'Available', 'Compact'),
(20, 'Occupied', 'Standard');


INSERT INTO User (UserID, Name, ContactInformation) VALUES
(1, 'John Doe', 'john.doe@example.com'),
(2, 'Jane Smith', 'jane.smith@example.com'),
(3, 'Bob Johnson', 'bob.johnson@example.com'),
(4, 'Alice White', 'alice.white@example.com'),
(5, 'Charlie Brown', 'charlie.brown@example.com'),
(6, 'Eva Davis', 'eva.davis@example.com'),
(7, 'Frank Miller', 'frank.miller@example.com'),
(8, 'Grace Turner', 'grace.turner@example.com'),
(9, 'Harry Lee', 'harry.lee@example.com'),
(10, 'Ivy Clark', 'ivy.clark@example.com'),
(11, 'Jack Wilson', 'jack.wilson@example.com'),
(12, 'Kelly Taylor', 'kelly.taylor@example.com'),
(13, 'Mike Evans', 'mike.evans@example.com'),
(14, 'Nancy Reed', 'nancy.reed@example.com'),
(15, 'Oscar Martinez', 'oscar.martinez@example.com'),
(16, 'Pamela Allen', 'pamela.allen@example.com'),
(17, 'Quincy Carter', 'quincy.carter@example.com'),
(18, 'Rita Garcia', 'rita.garcia@example.com'),
(19, 'Samuel Brown', 'samuel.brown@example.com'),
(20, 'Tina Turner', 'tina.turner@example.com');

INSERT INTO Vehicle (RegistrationNumber, VehicleType, OwnerUserID) VALUES
('ABC123', 'Car', 1),
('XYZ789', 'Truck', 2),
('DEF456', 'SUV', 3),
('GHI789', 'Motorcycle', 4),
('JKL012', 'Car', 5),
('MNO345', 'Truck', 6),
('PQR678', 'SUV', 7),
('STU901', 'Motorcycle', 8),
('VWX234', 'Car', 9),
('YZA567', 'Truck', 10),
('BCD890', 'SUV', 11),
('EFG123', 'Motorcycle', 12),
('HIJ456', 'Car', 13),
('KLM789', 'Truck', 14),
('NOP012', 'SUV', 15),
('QRS345', 'Motorcycle', 16),
('TUV678', 'Car', 17),
('WXY901', 'Truck', 18),
('ZAB234', 'SUV', 19),
('CDE567', 'Motorcycle', 20);


INSERT INTO EntryExitLog (LogID, RegistrationNumber, SpaceID, TimeOfEntry, TimeOfExit) VALUES
(1, 'ABC123', 1, '2023-01-01 08:00:00', '2023-01-01 12:00:00'),
(2, 'XYZ789', 3, '2023-01-02 10:30:00', '2023-01-02 15:45:00'),
(3, 'DEF456', 5, '2023-01-03 09:15:00', '2023-01-03 13:45:00'),
(4, 'GHI789', 7, '2023-01-04 11:30:00', '2023-01-04 14:20:00'),
(5, 'JKL012', 9, '2023-01-05 14:45:00', '2023-01-05 18:30:00'),
(6, 'MNO345', 11, '2023-01-06 08:20:00', '2023-01-06 12:45:00'),
(7, 'PQR678', 13, '2023-01-07 10:00:00', '2023-01-07 15:10:00'),
(8, 'STU901', 15, '2023-01-08 12:15:00', '2023-01-08 16:30:00'),
(9, 'VWX234', 17, '2023-01-09 09:30:00', '2023-01-09 11:45:00'),
(10, 'YZA567', 19, '2023-01-10 07:45:00', '2023-01-10 10:20:00'),
(11, 'BCD890', 2, '2023-01-11 13:00:00', '2023-01-11 17:15:00'),
(12, 'EFG123', 4, '2023-01-12 15:30:00', '2023-01-12 19:00:00'),
(13, 'HIJ456', 6, '2023-01-13 08:45:00', '2023-01-13 12:30:00'),
(14, 'KLM789', 8, '2023-01-14 11:00:00', '2023-01-14 14:45:00'),
(15, 'NOP012', 10, '2023-01-15 14:15:00', '2023-01-15 18:30:00'),
(16, 'QRS345', 12, '2023-01-16 09:30:00', '2023-01-16 11:45:00'),
(17, 'TUV678', 14, '2023-01-17 12:45:00', '2023-01-17 16:30:00'),
(18, 'WXY901', 16, '2023-01-18 08:00:00', '2023-01-18 12:15:00'),
(19, 'ZAB234', 18, '2023-01-19 10:20:00', '2023-01-19 13:45:00'),
(20, 'CDE567', 20, '2023-01-20 11:30:00', '2023-01-20 15:15:00'),
(21, 'ABC123', 1, '2023-02-01 08:30:00', '2023-02-01 12:45:00'),
(22, 'XYZ789', 3, '2023-02-02 09:45:00', '2023-02-02 14:15:00'),
(23, 'DEF456', 5, '2023-02-03 11:15:00', '2023-02-03 16:30:00'),
(24, 'GHI789', 7, '2023-02-04 13:30:00', '2023-02-04 17:45:00'),
(25, 'JKL012', 9, '2023-02-05 15:00:00', '2023-02-05 19:20:00'),
(26, 'MNO345', 11, '2023-02-06 08:45:00', '2023-02-06 12:30:00'),
(27, 'PQR678', 13, '2023-02-07 10:30:00', '2023-02-07 15:40:00'),
(28, 'STU901', 15, '2023-02-08 12:45:00', '2023-02-08 16:15:00'),
(29, 'VWX234', 17, '2023-02-09 09:15:00', '2023-02-09 11:30:00'),
(30, 'YZA567', 19, '2023-02-10 07:30:00', '2023-02-10 10:00:00'),
(31, 'BCD890', 2, '2023-02-11 13:45:00', '2023-02-11 17:00:00'),
(32, 'EFG123', 4, '2023-02-12 16:00:00', '2023-02-12 19:30:00'),
(33, 'HIJ456', 6, '2023-02-13 08:30:00', '2023-02-13 12:15:00'),
(34, 'KLM789', 8, '2023-02-14 10:45:00', '2023-02-14 14:30:00'),
(35, 'NOP012', 10, '2023-02-15 14:00:00', '2023-02-15 18:15:00'),
(36, 'QRS345', 12, '2023-02-16 09:15:00', '2023-02-16 11:30:00'),
(37, 'TUV678', 14, '2023-02-17 12:30:00', '2023-02-17 16:00:00'),
(38, 'WXY901', 16, '2023-02-18 08:15:00', '2023-02-18 12:30:00'),
(39, 'ZAB234', 18, '2023-02-19 10:30:00', '2023-02-19 13:55:00'),
(40, 'CDE567', 20, '2023-02-20 11:45:00', '2023-02-20 15:30:00');
INSERT INTO EntryExitLog (LogID, RegistrationNumber, SpaceID, TimeOfEntry, TimeOfExit) VALUES
(41, 'MNO345', 11, '2023-01-06 08:20:00', '2023-01-06 18:26:00'),
(42, 'TUV678', 14, '2023-02-17 12:30:00', '2023-02-17 23:11:00');


# analysis

# Retriving available parking spaces
SELECT SpaceID, SizeType
FROM ParkingSpace
WHERE Status = 'Available';

# Retrieving Entry/Exit Logs for a Specific Vehicle
SELECT LogID, RegistrationNumber, TimeOfEntry, TimeOfExit
FROM EntryExitLog
WHERE RegistrationNumber = 'ABC123';

# Calculate Average Parking Duration for Each Vehicle Type
SELECT VehicleType, AVG(TIMESTAMPDIFF(SECOND, TimeOfEntry, TimeOfExit) / 3600) AS AvgParkingDurationHours
FROM EntryExitLog
JOIN Vehicle ON EntryExitLog.RegistrationNumber = Vehicle.RegistrationNumber
GROUP BY VehicleType;

#Query to retrieve vehicle information and owner details
SELECT Vehicle.RegistrationNumber, Vehicle.VehicleType, User.Name AS OwnerName, User.ContactInformation AS OwnerContact
FROM Vehicle
LEFT JOIN User ON Vehicle.OwnerUserID = User.UserID;


#Query to identify the most frequently used parking space
SELECT SpaceID, COUNT(*) AS UsageCount
FROM EntryExitLog
GROUP BY SpaceID
ORDER BY UsageCount DESC
LIMIT 1;


#query optimization using indexing

-- Example index creation
CREATE INDEX idx_parking_space_status ON ParkingSpace(Status);
CREATE INDEX idx_vehicle_registration ON Vehicle(RegistrationNumber);
CREATE INDEX idx_entry_exit_log_registration ON EntryExitLog(RegistrationNumber);

-- Determine Parking Space Utilization Rates by Size/Type

SELECT ParkingSpace.SizeType, COUNT(EntryExitLog.LogID) AS TotalUsage, AVG(TIMESTAMPDIFF(HOUR, TimeOfEntry, TimeOfExit)) AS AverageDuration
FROM ParkingSpace
LEFT JOIN EntryExitLog ON ParkingSpace.SpaceID = EntryExitLog.SpaceID
GROUP BY ParkingSpace.SizeType
ORDER BY TotalUsage DESC;

-- Find Total Parking Hours for Each User

DELIMITER //
CREATE PROCEDURE TotalParkingHoursPerUser()
BEGIN
    SELECT User.UserID, User.Name, SUM(ParkingDuration) AS TotalHours
    FROM (
        SELECT OwnerUserID, TIMESTAMPDIFF(HOUR, TimeOfEntry, TimeOfExit) AS ParkingDuration
        FROM EntryExitLog
        JOIN Vehicle ON EntryExitLog.RegistrationNumber = Vehicle.RegistrationNumber
    ) AS ParkingTimes
    JOIN User ON ParkingTimes.OwnerUserID = User.UserID
    GROUP BY User.UserID;
END //
DELIMITER ;

Call TotalParkingHoursPerUser;




-- Find Users Who Have Parked More Than Once on the Same Day:

SELECT DISTINCT U.UserID, U.Name
FROM User U
INNER JOIN Vehicle V ON U.UserID = V.OwnerUserID
INNER JOIN (
    SELECT RegistrationNumber, Date(TimeOfEntry) AS EntryDate
    FROM EntryExitLog
    GROUP BY RegistrationNumber, EntryDate
    HAVING COUNT(*) > 1
) AS MultipleEntries ON V.RegistrationNumber = MultipleEntries.RegistrationNumber;


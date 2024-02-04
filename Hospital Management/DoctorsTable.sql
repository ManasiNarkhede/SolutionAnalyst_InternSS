USE hospital_management;

-- Create Doctors Table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialization VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100)
);

-- Inserting sample data into the Doctors table
INSERT INTO Doctors (DoctorID, FirstName, LastName, Specialization, ContactNumber, Email)
VALUES
    (101, 'Dr.Megha', 'Kumar', 'Cardiology', '9876543210', 'meghakumar@gmail.com'),
    (102, 'Dr.Ramesh', 'Kularani', 'Pediatrics', '8765432109', 'rameshkulkarni@gmail.com'),
    (103, 'Dr.Ketaki', 'Shah', 'Dermatology', '94654321543', 'ketakishah@gmail.com'),
    (104, 'Dr.Sajay', 'Raut', 'Orthopedics', '9678901234', 'sanjayraut@gmail.com'),
    (105, 'Dr.Meena', 'Zope', 'Neurology', '8789012345', 'meenazope@gmail.com');

-- Update specialization of doctors
UPDATE Doctors
SET Specialization = 'General Doctor'
WHERE DoctorID = 101;

UPDATE Doctors
SET Specialization = 'General Doctor'
WHERE DoctorID = 102;

UPDATE Doctors
SET Specialization = 'Nutritionist'
WHERE DoctorID = 103;

UPDATE Doctors
SET Specialization = 'Diabetologist'
WHERE DoctorID = 104;

UPDATE Doctors
SET Specialization = 'Dermatology'
WHERE DoctorID = 105;

-- Display data from the Doctors table
SELECT * FROM Doctors;

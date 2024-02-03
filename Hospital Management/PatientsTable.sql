USE hospital_management;

-- Create Patients Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Gender VARCHAR(10),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

-- Insert data into the Patients table
INSERT INTO Patients (PatientID, FirstName, LastName, DOB, Gender, ContactNumber, Email, Address)
VALUES
  (1, 'Ayush', 'Kumar', '2000-05-15', 'Male', '9876543410', 'ayush.kumar@gmail.com', '12Street, Hyderabad'),
  (2, 'Sanya', 'Sharma', '1995-08-22', 'Female', '8765732109', 'sanya.sharma@gmail.com', '45Street, Pune'),
  (3, 'Rahul', 'Gupta', '2012-06-10', 'Male', '7654322098', 'rahul.gupta@gmail.com', '78Street, Mumbai'),
  (4, 'Neha', 'Verma', '2003-11-03', 'Female', '6541045987', 'neha.verma@gmail.com', '10Street, Nashik'),
  (5, 'Arjun', 'Singh', '1998-07-18', 'Male', '54313109876', 'arjun.singh@gmail.com', '20Street, Pune');

ALTER TABLE Patients
ADD COLUMN InsuranceExpiryDate DATE;

-- Add InsuranceExpired column 
ALTER TABLE Patients
ADD COLUMN InsuranceExpired VARCHAR(3) DEFAULT 'No';

-- Update InsuranceExpiryDate for patients
UPDATE Patients
SET InsuranceExpiryDate = 
    CASE
        WHEN PatientID = 1 THEN '2024-12-31'
        WHEN PatientID = 2 THEN '2025-06-30'
        WHEN PatientID = 3 THEN '2023-10-15'
        WHEN PatientID = 4 THEN '2024-08-01'
        WHEN PatientID = 5 THEN '2025-01-20'
    END
WHERE PatientID IN (1, 2, 3, 4, 5);
 

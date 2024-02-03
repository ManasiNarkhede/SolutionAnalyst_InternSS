-- Create InsuranceExpiryLog Table
CREATE TABLE InsuranceExpiryLog (
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    ExpiredDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- Check if insurance is expired for each patient
SELECT
    PatientID,
    FirstName,
    LastName,
    InsuranceExpiryDate,
    CASE
        WHEN InsuranceExpiryDate IS NULL THEN 'No Insurance' -- when expiry date is not set
        WHEN InsuranceExpiryDate < CURDATE() THEN 'Expired'
        ELSE 'Not Expired'
    END AS InsuranceExpired
FROM Patients;

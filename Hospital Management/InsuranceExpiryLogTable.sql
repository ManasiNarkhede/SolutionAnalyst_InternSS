-- Create InsuranceExpiryLog Table
CREATE TABLE InsuranceExpiryLog (
    LogID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    ExpiredDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
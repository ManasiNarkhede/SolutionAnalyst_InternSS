-- Add to the list of diagnosis of the patient tagged by date

USE hospital_management;

-- Create Diagnosis Table
CREATE TABLE Diagnosis (
    DiagnosisID INT PRIMARY KEY,
    PatientID INT,
    DiagnosisDetails TEXT,
    DateTagged DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

SELECT DISTINCT PatientID FROM patients;

-- Query to add a diagnosis for a patient
INSERT INTO Diagnosis (DiagnosisID, PatientID, DiagnosisDetails, DateTagged)
VALUES (1, 1, 'Cold', '2020-02-01');


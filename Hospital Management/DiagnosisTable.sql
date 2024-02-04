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
VALUES (1, 1, 'Cold', '2020-02-01'),
	(2,2,'Fever','2023-06-09'), 
	(3, 3, 'Obesity', '2021-04-23'), 
	(4, 4, 'Diabities', '2021-10-03'), 
	(5, 5, 'Cancer', '2022-02-17');

-- Display data from the Diagnosis table
SELECT * FROM Diagnosis;



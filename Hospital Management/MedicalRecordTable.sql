USE hospital_management;

-- Create MedicalRecords Table
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentID INT,
    Diagnosis VARCHAR(255),
    Prescription TEXT,
    DateRecorded DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);


-- Insert data into MedicalRecords
INSERT INTO MedicalRecords (RecordID, PatientID, DoctorID, AppointmentID, Diagnosis, Prescription, DateRecorded)
VALUES
  (201, 1, 101, 1, 'Common Cold', 'Ibuprofen and rest', '2024-01-05'),
  (202, 2, 102, 2, 'Fever', 'Ibuprofen and rest', '2024-04-06'),
  (203, 3, 103, 3, 'Obesity', 'Daily exercise', '2024-03-07'),
  (204, 4, 104, 4, 'Diabities', 'Insulin', '2023-02-08'),
  (205, 5, 105, 5, 'Cancer', 'Chemotherapy',  '2024-02-19');

-- Display data from the Medical Record table
SELECT * FROM MedicalRecords;

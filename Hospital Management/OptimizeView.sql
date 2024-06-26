-- Optimize Repeated Read Operations Using Views

-- Create a View for Patient History
CREATE VIEW PatientHistView AS
SELECT P.PatientID, P.FirstName, P.LastName, A.AppointmentID, A.AppointmentDate, M.Diagnosis, M.Prescription, M.DateRecorded
FROM Patients P
LEFT JOIN Appointments A ON P.PatientID = A.PatientID
LEFT JOIN MedicalRecords M ON A.AppointmentID = M.AppointmentID;


-- To fetch patient history 
SELECT * FROM PatientHistView WHERE PatientID = 1;

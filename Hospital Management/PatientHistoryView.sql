USE hospital_management;

-- Create PatientHistoryView
CREATE VIEW PatientHistoryView AS
SELECT P.PatientID, P.FirstName, P.LastName, A.AppointmentID, A.AppointmentDate, M.Diagnosis, M.Prescription, M.DateRecorded
FROM Patients P
JOIN Appointments A ON P.PatientID = A.PatientID
LEFT JOIN MedicalRecords M ON A.AppointmentID = M.AppointmentID;
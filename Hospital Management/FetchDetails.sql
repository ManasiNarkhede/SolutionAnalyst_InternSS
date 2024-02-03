-- Fetch Required Details of a Particular Patient:

-- Query to fetch details of a particular patient
SELECT *
FROM Patients
WHERE PatientID = 1;

-- Fetch patient details along with appointments, doctors, and diagnoses
SELECT P.*, A.AppointmentDate, D.FirstName AS DoctorFirstName, D.LastName AS DoctorLastName, Di.DiagnosisDetails
FROM Patients P
LEFT JOIN Appointments A ON P.PatientID = A.PatientID
LEFT JOIN Doctors D ON A.DoctorID = D.DoctorID
LEFT JOIN Diagnosis Di ON P.PatientID = Di.PatientID;

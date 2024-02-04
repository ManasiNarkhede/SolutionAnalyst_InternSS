USE hospital_management;

-- Create Appointments Table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Inserting data into the Appointments table
INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, Status)
VALUES
    (1, 1, 101, '2024-01-05', 'Completed'),
    (2, 2, 102, '2024-04-06', 'Scheduled'),
    (3, 3, 103, '2024-03-07', 'Cancelled'),
    (4, 4, 104, '2023-02-08', 'Completed'),
    (5, 5, 105, '2024-02-19', 'Scheduled');
    
-- Display data from the Appointment table
SELECT * FROM Appointments;


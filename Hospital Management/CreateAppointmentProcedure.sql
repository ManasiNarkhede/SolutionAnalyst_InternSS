-- Create Stored Procedures
DELIMITER //

CREATE PROCEDURE CreateAppointmentProcedure (
    IN p_PatientID INT,
    IN p_DoctorID INT,
    IN p_AppointmentDate DATE
)
BEGIN
    INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Status)
    VALUES (p_PatientID, p_DoctorID, p_AppointmentDate, 'Scheduled');
END //

USE hospital_management;

-- Create UpcomingAppointmentsView
CREATE VIEW UpcomingAppointmentsView AS
SELECT *
FROM Appointments
WHERE AppointmentDate >= CURDATE();
USE hospital_management;

DELIMITER //

-- Create AppointmentStatusTrigger
CREATE TRIGGER AppointmentStatusTrigger
BEFORE INSERT ON Appointments
FOR EACH ROW
BEGIN
    IF NEW.AppointmentDate < CURDATE() THEN
        SET NEW.Status = 'Past';
    END IF;
END;
//

-- Reset the delimiter
DELIMITER ;

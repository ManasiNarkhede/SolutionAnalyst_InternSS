-- Prepare Bill for the Patient and Optimize Bill Generation Using Stored Procedures
USE hospital_management;

DELIMITER //

CREATE PROCEDURE GeneratePatientBillProcedure (
    IN p_PatientID INT
)
BEGIN
    DECLARE totalCost DECIMAL(10, 2);

    -- Calculate total cost from Appointments
    SELECT COALESCE(SUM(Cost), 0)
    INTO totalCost
    FROM (
        SELECT A.AppointmentID, 50 AS Cost -- Assuming a fixed cost for each appointment
        FROM Appointments A
        WHERE A.PatientID = p_PatientID
    ) AS AppointmentCosts;

    -- Add cost from MedicalRecords
    SELECT COALESCE(SUM(Cost), 0)
    INTO totalCost
    FROM (
        SELECT M.AppointmentID, 30 AS Cost -- Assuming a fixed cost for each medical record
        FROM MedicalRecords M
        WHERE M.PatientID = p_PatientID
    ) AS MedicalRecordCosts;

    -- Insert the total cost into a Billing table 
    INSERT INTO Billing (PatientID, TotalCost, BillingDate)
    VALUES (p_PatientID, totalCost, CURDATE());

    SELECT * FROM Billing WHERE PatientID = p_PatientID;
END //

DELIMITER ;

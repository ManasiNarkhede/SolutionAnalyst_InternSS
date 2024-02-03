-- Trigger to indicate when a patient's medical insurance limit has expired
DELIMITER //

CREATE TRIGGER InsuranceExpiryTrigger
BEFORE INSERT ON MedicalRecords
FOR EACH ROW
BEGIN
    DECLARE insuranceExpiry DATE;

    -- Fetch the insurance expiry date for the patient
    SELECT InsuranceExpiryDate INTO insuranceExpiry
    FROM Patients
    WHERE PatientID = NEW.PatientID;

    -- Check if the medical record date is after the insurance expiry date
    IF NEW.DateRecorded > insuranceExpiry AND NEW.DateRecorded > NOW() THEN
        -- Update the InsuranceExpired flag to 1
        UPDATE Patients
        SET InsuranceExpired = 1
        WHERE PatientID = NEW.PatientID;

        -- Insert an entry into the InsuranceExpiryLog table
        INSERT INTO InsuranceExpiryLog (PatientID, ExpiredDate)
        VALUES (NEW.PatientID, NOW());
    END IF;
END //

DELIMITER ;
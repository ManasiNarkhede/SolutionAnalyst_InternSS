USE hospital_management;

-- Create Indexes
CREATE INDEX idx_patient_id ON Patients(PatientID);
CREATE INDEX idx_doctor_id ON Doctors(DoctorID);
CREATE INDEX idx_appointment_date ON Appointments(AppointmentDate);

-- Optimize Read Operations Using Indexing
-- Create Index on PatientID in MedicalRecords table
CREATE INDEX idx_patient_id_medical_records ON MedicalRecords(PatientID);
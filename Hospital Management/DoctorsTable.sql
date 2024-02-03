USE hospital_management;

-- Create Doctors Table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialization VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100)
);

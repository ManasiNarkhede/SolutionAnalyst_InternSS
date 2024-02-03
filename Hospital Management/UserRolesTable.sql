-- Register New User Roles and Personas

USE hospital_management;

-- Create UserRoles Table
CREATE TABLE UserRoles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(50)
);

-- Insert Default User Roles
INSERT INTO UserRoles (RoleID, RoleName) VALUES (1, 'Admin');
INSERT INTO UserRoles (RoleID, RoleName) VALUES (2, 'Doctor');
INSERT INTO UserRoles (RoleID, RoleName) VALUES (3, 'Receptionist');

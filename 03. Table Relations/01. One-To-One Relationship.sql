CREATE DATABASE Persons

CREATE TABLE Passports
(
	PassportID INT IDENTITY(101,1) PRIMARY KEY,
	PassportNumber NVARCHAR(10),
)

CREATE TABLE Persons
(
	PersonID INT IDENTITY PRIMARY KEY,
	FirstName NVARCHAR(30),
	Salary DECIMAL (15,2),
	PassportID INT UNIQUE REFERENCES Passports(PassportID)
)

INSERT INTO Passports
(PassportNumber)
VALUES
('N34FG21B'),
('K65LO4R7'),
('ZE657QP2')

INSERT INTO Persons
(FirstName, Salary, PassportID)
VALUES
('Roberto', 43300.00, 102),
('Tom', 56300.00, 103),
('Yana', 60200.00, 101)

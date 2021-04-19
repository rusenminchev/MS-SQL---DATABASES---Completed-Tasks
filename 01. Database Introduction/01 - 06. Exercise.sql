
CREATE DATABASE Minions

CREATE TABLE Minions
(
Id INT PRIMARY KEY,
[Name] VARCHAR(3),
AGE INT
)

CREATE TABLE Towns
(
Id INT PRIMARY KEY,
[Name] VARCHAR(3),
)

--Edit Content in the table
ALTER TABLE Minions
ADD TownId INT
--Add key reference to other table
ALTER TABLE Minions
ADD FOREIGN KEY(TownId) REFERENCES Towns(Id)

--Exercise 4
--Insert
INSERT INTO Towns (Id, Name) VALUES
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna')

INSERT INTO Minions(Id, Name,Age, TownId) VALUES
(1,'Kevin', 22, 1),
(2,'Bob', 215, 3),
(3,'Steward', NULL, 2)

--Exercise 7

DELETE FROM Minions

DROP Table Minions
DROP Table Towns
Create DATABASE Teachers

CREATE TABLE Teachers
(
	TeacherID INT IDENTITY(101,1) PRIMARY KEY,
	[Name] VARCHAR(30),
	ManagerID INT REFERENCES Teachers(TeacherID)
)

INSERT INTO Teachers
([Name], ManagerID)
VALUES
('John', Null),
('Maya', 106),
('Silvia', 106),
('Ted', 105),
('Mark', 101),
('Greta', 101)

CREATE TABLE People
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(200) NOT NULL,
	Picture VARCHAR(MAX),
	Height REAL,
	[Weight] REAL,
	Gender CHAR(1),
	Birthdate DATETIME NOT NULL,
	Biography NVARCHAR(MAX)
)

INSERT People
([Name], Picture, Height, Weight, Gender, Birthdate, Biography)
VALUES
('Ivan','https://bit.ly/3tqCvTd', 1.80, 80.00, 'm' , '03.07.1997','Ivan is a super human'),
('Pesho','https://bit.ly/3tqCvTd', 1.60, 75.00, 'm' , '03.02.1997','Pesho is a super trash'),
('Mariyka','https://bit.ly/3tqCvTd', 1.70, 50.00, 'f' , '03.08.1997','Mariyka is a super model'),
('Stefy','https://bit.ly/3tqCvTd', 2.20, 75.00, 'f' , '03.02.1991','Stefy is a super baskateball player'),
('Stavri','https://bit.ly/3tqCvTd', 1.96, 120.00, 'm' , '03.01.1997','Stavri can see the future'),
('Kim','https://bit.ly/3tqCvTd', 1.50, 45.00, 'f' , '01.02.2001','Kim is super MMA fighter')
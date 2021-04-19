Create DATABASE UniversityDatabase

CREATE TABLE Majors
(
	MajorID INT IDENTITY PRIMARY KEY,
	[Name] VARCHAR(50)
)

CREATE TABLE Students
(
	StudentID INT IDENTITY PRIMARY KEY,
	StudentsNumber VARCHAR(50) NOT NULL,
	StudentsName VARCHAR(50) NOT NULL,
	MajorID INT REFERENCES Majors(MajorID)
)

CREATE TABLE Subjects
(
	SubjectID INT IDENTITY PRIMARY KEY,
	SubjectName VARCHAR(50)
)

CREATE TABLE Agenda
(
	StudentID INT,
	SubjectID INT,
	CONSTRAINT PK_StudentSubject
	PRIMARY KEY (StudentID, SubjectID),
	CONSTRAINT FK_StudentSubject_Students
	FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	CONSTRAINT FK_StudentSubject_Subjects
	FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
)

CREATE TABLE Payments
(
	PaymentsID INT IDENTITY PRIMARY KEY,
	PaymentDate DATE,
	PaymentAmount DECIMAL(15,2),
	StudentID INT REFERENCES Students(StudentID)
)
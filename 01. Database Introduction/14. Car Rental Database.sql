CREATE DATABASE CarRental

CREATE TABLE Categories
(
	Id INT PRIMARY KEY IDENTITY,
	CategoryName VARCHAR(MAX) NOT NULL,
	DailyRate DECIMAL(10,2) NOT NULL,
	WeeklyRate DECIMAL(10,2) NOT NULL,
	MonthlyRate DECIMAL(10,2) NOT NULL,
	WeekendRate DECIMAL(10,2) NOT NULL,
)

INSERT Categories
(CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
VALUES
('Economy', 50.00, 30.00 , 20.00, 70.00),
('Comfort', 150.00, 130.00 , 120.00, 180.00),
('Luxury', 300.00, 270.00 , 250.00, 350.00)  

CREATE TABLE Cars
(
	Id INT PRIMARY KEY IDENTITY,
	PlateNumber VARCHAR(MAX) NOT NULL,
	Manufacturer VARCHAR(MAX) NOT NULL,
	Model VARCHAR(MAX) NOT NULL,
	CarYear INT NOT NULL,
	CategoryId INT NOT NULL,
	Doors INT NOT NULL,
	Picture VARCHAR(MAX) NOT NULL,
	Condition INT NOT NULL,
	Available BIT NOT NULL,
)

INSERT Cars
(PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, 
Condition, Available)
VALUES
('CB 2013 HN', 'VW', 'Golf', 2010, 1 , 5, 'www.rental.com/gallery/vw', 10, 1),
('CB 3232 HN', 'BMW', '325', 2015, 2 , 5, 'www.rental.com/gallery/bmw', 10, 0),
('CB 1111 HN', 'Mercedes', 'S500', 2020, 3 , 5, 'www.rental.com/gallery/benz', 10, 1)


CREATE TABLE Employees 
(
	Id INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(MAX) NOT NULL,
	LastName VARCHAR(MAX) NOT NULL,
	Title VARCHAR(MAX) NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT Employees
(FirstName, LastName, Title, Notes)
VALUES
('Gencho', 'Genchev', 'Sales Manages','Employee of the year for 2019,2020'),
('Ivan', 'Ivanchov', 'Mechanic',''),
('Stela', 'Kalinova', 'Account Manager','')
 

CREATE TABLE Customers 
(
	Id INT PRIMARY KEY IDENTITY,
	DriverLicenceNumber VARCHAR(MAX) NOT NULL,
	FullName VARCHAR(MAX) NOT NULL,
	[Address] VARCHAR(MAX) NOT NULL,
	City VARCHAR(MAX) NOT NULL,
	ZIPCode INT NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT Customers
(DriverLicenceNumber, FullName, [Address], City, ZIPCode, Notes)
VALUES
('1232389', 'Kalin Vrachanski', '10 Long Str.','Sofia', 1000, 'Loyal customer'),
('3214124', 'Ico Ispaneca', '1 Short Str.','Pernik', 3000, ''),
('21321', 'Boyko Borisov', '4 Long Str.','Bankya', 1300, '')

CREATE TABLE RentalOrders 
(
	Id INT PRIMARY KEY IDENTITY,
	EmployeeId INT NOT NULL,
	CustomerId INT NOT NULL,
	CarId INT  NOT NULL,
	TankLevel FLOAT NOT NULL,
	KilometrageStart FLOAT NOT NULL,
	KilometrageEnd FLOAT NOT NULL,
	TotalKilometrage FLOAT NOT NULL,
	StartDate DATETIME NOT NULL,
	EndDate DATETIME NOT NULL,
	TotalDays INT NOT NULL,
	RateApplied INT NOT NULL,
	TaxRate DECIMAL(10,2) NOT NULL,
	OrderStatus VARCHAR(MAX) NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT RentalOrders
(EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd,
TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus,
Notes)
VALUES
(3, 1 ,2, 30.00, 65000.00, 67000.00, 2000.00, '01.03.2021', '01.10.2021', 7, 
2, 20.00, 'Finished',''), 
(2, 3 ,1, 50.00, 165000.00, 167000.00, 20000.00, '01.01.2021', '01.30.2021', 30,
4, 20.00, 'Finished','Car was return with paint damage'), 
(1, 2 ,3, 20.00, 165000.00, 165500.00, 500.00, '01.03.2021', '01.05.2021', 2,
1, 20.00, 'Finished','')

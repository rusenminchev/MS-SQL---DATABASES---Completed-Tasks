CREATE DATABASE Movies

CREATE TABLE Directors
(
	Id INT PRIMARY KEY IDENTITY,
	DiretorName VARCHAR(MAX) NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT Directors
(DiretorName, Notes)
VALUES
('Steven Spielberg', 'Multiple Oscar Award winner'),
('Stenly Kubric', 'The director of Space Odyssey: 2001'),
('Chrostopher Nolan', 'The creator of one of the best Batman Trilogies ever'),
('Stefan Komandarev', ''),
('Pavel Vesnakov', '')

CREATE TABLE Genres
(
	Id INT PRIMARY KEY IDENTITY,
	GenreName VARCHAR(MAX)  NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT Genres
(GenreName, Notes)
VALUES
('Thriller', ''),
('Comedy', 'Usually represents a funny situations'),
('Horror', 'Scary'),
('Drama', ''),
('Sci-Fi', '')

CREATE TABLE Categories 
(
	Id INT PRIMARY KEY IDENTITY,
	CategorieName VARCHAR(MAX) NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT Categories
(CategorieName, Notes)
VALUES
('Short Film', ''),
('Documentary', 'Usually represents a funny situations'),
('TV Series', 'Scary'),
('Trilogy', ''),
('Feature Film', '')

CREATE TABLE Movies 
(
	Id INT PRIMARY KEY IDENTITY,
	Title VARCHAR(MAX) NOT NULL,
	DirectorId INT NOT NULL,
	CopyrightYear INT NOT NULL,
	[Length] TIME NOT NULL,
	GenreId INT NOT NULL, 
	CategoryId INT NOT NULL,
	Rating FLOAT,
	Notes VARCHAR(MAX)
)
INSERT Movies
(Title, DirectorId, CopyrightYear , [Length], GenreId, CategoryId, Rating, Notes)
VALUES
('True Lies', 1, 1997, '1:40:30', 1, 5, 8.7 , 'One of the coolest films ever!'),
('The Dark Knight', 3, 2010, '1:40:30', 1, 5, 8.7 , 'One of the coolest films ever!'),
('Space Oddysey: 2001', 2, 1997, '1:40:30', 1, 5, 8.7 , 'One of the coolest films ever!'),
('Catch me if you can', 1, 1997, '1:40:30', 1, 5, 8.7 , 'One of the coolest films ever!'),
('Inception', 3, 1997, '1:40:30', 1, 5, 8.7 , 'One of the coolest films ever!')
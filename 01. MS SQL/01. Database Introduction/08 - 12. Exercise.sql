
-- 08.

CREATE TABLE Users
(
	Id BIGINT PRIMARY KEY IDENTITY,
	Username VARCHAR(30) NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARCHAR(MAX) NOT NULL,
	LastLogin DATETIME,
	IsDeleted BIT
)

INSERT Users
(Username, [Password], ProfilePicture, LastLogin, IsDeleted)
VALUES
('Gabka_Sladka', 'GabkaSladka12323', 'https://bit.ly/3tqCvTd', '01.03.2021', 0),
('Gabka_Gladka', 'GabkaSlad31232ka123', 'https://bit.ly/3tqCvTd', '03.03.2021', 0),
('Gabka_Zlatna', 'GabkaSl3123adka123', 'https://bit.ly/3tqCvTd', '04.03.2021', 0),
('Gabka_Shmatka', 'GabkaSl123adka123', 'https://bit.ly/3tqCvTd', '05.03.2021', 0),
('Gabka_Zagadka', 'GabkaSla213dka123', 'https://bit.ly/3tqCvTd', '06.03.2021', 0)

--09.

ALTER TABLE Users
DROP CONSTRAINT PK__Users__3214EC070765CB18

ALTER TABLE Users
ADD CONSTRAINT PK_IdUsername PRIMARY KEY(Id, Username)

ALTER TABLE Users
ADD CONSTRAINT CH_PasswordIsAtLeast5Symbols CHECK(LEN([Password]) > 5)

ALTER TABLE Users
ADD CONSTRAINT CH_PasswordIsAtLeast5Symbols CHECK(LEN([Password]) > 5)

ALTER TABLE Users
ADD CONSTRAINT DF_LastLoginTime DEFAULT GETDATE() FOR LastLogin

ALTER TABLE Users
DROP CONSTRAINT PK_IdUsername

ALTER TABLE Users
ADD CONSTRAINT PK_Id PRIMARY KEY(Id)

ALTER TABLE Users
ADD CONSTRAINT CH_UsernameIsAtLeast3Symbols CHECK(LEN(Username) > 3)


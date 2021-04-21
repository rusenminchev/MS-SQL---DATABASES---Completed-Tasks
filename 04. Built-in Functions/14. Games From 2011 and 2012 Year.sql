SELECT TOP(50) [Name],
FORMAT([Start], 'yyyy-MM-dd', 'en-US') AS [Start]
FROM Games
WHERE DATEPART(YEAR, [Start]) = 2011
OR DATEPART(YEAR, [Start]) = 2012
ORDER BY [Start], [Name]

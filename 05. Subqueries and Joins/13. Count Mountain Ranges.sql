SELECT c.CountryName,
		COUNT(m.MountainRange) AS [MountainRanges]
FROM Mountains m
JOIN MountainsCountries mc ON mc.MountainId = m.Id
JOIN Countries c ON c.CountryCode = mc.CountryCode
WHERE c.CountryName IN ('United States', 'Russia', 'Bulgaria')
GROUP BY CountryName

-- Solved with SubQuery
SELECT CountryCode,
		(SELECT COUNT(*) AS [MountainRanges]
		FROM MountainsCountries AS mc
		WHERE mc.CountryCode = c.CountryCode)
FROM Countries c 
WHERE c.CountryName IN ('United States', 'Russia', 'Bulgaria')
SELECT TOP (5) c.CountryName,
		MAX(p.Elevation) AS [HighestPeakElevation],
		MAX(r.Length) AS [LongestRiverLength]
FROM Countries c
JOIN MountainsCountries mc ON mc.CountryCode = c.CountryCode
JOIN Mountains m ON mc.MountainId = m.Id
JOIN Peaks p ON p.MountainId = m.Id
JOIN CountriesRivers cr ON cr.CountryCode = c.CountryCode
JOIN Rivers r ON cr.RiverId = r.Id
GROUP BY c.CountryName
ORDER BY MAX(p.Elevation) DESC,
		MAX(r.Length) DESC,
		c.CountryName

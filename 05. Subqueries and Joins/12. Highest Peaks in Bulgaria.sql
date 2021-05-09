SELECT c.CountryCode,
		m.MountainRange,
		p.PeakName,
		p.Elevation
FROM Peaks p
JOIN Mountains m ON p.MountainId = m.Id
JOIN MountainsCountries mc ON mc.MountainId = m.Id
JOIN Countries c ON c.CountryCode = mc.CountryCode
WHERE c.CountryName = 'Bulgaria' 
		AND p.Elevation > 2835
ORDER BY p.Elevation DESC
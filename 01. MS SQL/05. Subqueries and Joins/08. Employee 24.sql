SELECT e.EmployeeID,
		e.FirstName,
		CASE
			WHEN YEAR(p.StartDate) >= 2005 THEN 'NULL'
			ELSE p.Name
		END AS [ProjectName]
FROM Projects p
JOIN EmployeesProjects ep ON ep.ProjectID = p.ProjectID
JOIN Employees e ON ep.EmployeeID = e.EmployeeID
WHERE e.EmployeeID = 24

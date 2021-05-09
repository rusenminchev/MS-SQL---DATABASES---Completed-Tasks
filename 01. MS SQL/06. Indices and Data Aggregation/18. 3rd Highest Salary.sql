SELECT DISTINCT RankedResult.DepartmentID,
		RankedResult.Salary 
		FROM(SELECT e.DepartmentID,
			e.Salary,
			DENSE_RANK() OVER 
			(PARTITION BY e.DepartmentID ORDER BY e.Salary DESC)
			AS [Ranked]
FROM Employees e) as [RankedResult]
WHERE RankedResult.Ranked = 3
SELECT TOP(10) e.FirstName,
		e.LastName,
		e.DepartmentID
FROM Employees e
WHERE e.Salary > (SELECT AVG(Salary) 
				FROM Employees
				WHERE DepartmentID = e.DepartmentID
				GROUP BY DepartmentID)
ORDER BY DepartmentID


SELECT e.DepartmentID,
		MAX(e.Salary) AS [MinimumSalary]
FROM Employees e
GROUP BY e.DepartmentID
HAVING MAX(e.Salary) NOT BETWEEN 30000 AND 70000
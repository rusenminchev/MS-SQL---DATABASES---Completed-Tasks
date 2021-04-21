SELECT EmployeeID, FirstName, LastName, Salary,
ADD Employees (DENSE_RANK() OVER(PARTITION BY Salary ORDER BY EmployeeID) AS RANK)
FROM Employees
WHERE Salary > 10000 AND Salary < 50000

-- TODO

--Inserting The Office Employee Data
INSERT INTO Employees (FirstName, LastName, Position)
VALUES
('Michael', 'Scott', 'Regional Manager'),
('Jim', 'Halpert', 'Salesman'),
('Pam', 'Beesly', 'Receptionist'),
('Dwight', 'Schrute', 'Assistant Regional Manager'),
('Angela', 'Martin', 'Head of the Party Planning Committee');
--Calculating Monthly Salary based on position
UPDATE Employees
SET Salary = CASE
	WHEN Position = 'Actor' THEN 10000
	WHEN Position = 'Writer' THEN 8000
	WHEN Position = 'Director' THEN 12000
	ELSE 5000 --Default salary for other positions
	END;
--Generating Monthly Payroll report
SELECT
	EmployeeID,
	CONCAT(FirstName,' ', LastName) AS FullName,
	Position,
	Salary AS MonthlySalary
FROM Employees;
--Updating EmployeeID to be Unique
WITH EmployeeCTE AS(
	SELECT 
	EmployeeID,
	ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS NewEmployeeID
	FROM Employees)
	UPDATE EmployeeCTE
	SET EmployeeID = NewEmployeeID;
-- View The EmployeeID
SELECT EmployeeID, FirstName
FROM Employees;
--Remove Duplicate Names
WITH DuplicateNames AS(
	SELECT FirstName, LastName
	FROM Employees
	GROUP BY FirstName, LastName
	HAVING COUNT(*) > 1
	)
	DELETE e 
	FROM Employees e
	INNER JOIN DuplicateNames d ON e.FirstName = d.FirstName AND e.LastName = d.LastName
	WHERE e.EmployeeID NOT IN(
		SELECT MIN (EmployeeID)
		FROM Employees
		GROUP BY FirstName, LastName
		);
	-- View The EmployeeID to confirm change
SELECT EmployeeID, FirstName
FROM Employees;
--Update Employees Salary by EmployeeID
UPDATE Employees
SET Salary = 10000.00
WHERE EmployeeID IN (1, 10, 11, 12, 13);
--Verify Individual Employee Salary
SELECT EmployeeID, Salary
FROM Employees
WHERE EmployeeID = 1; 
--Check Employee Count
SELECT COUNT(*) AS TotalEmployees
FROM Employees;
--Identify Mising Data
SELECT*
FROM Employees
WHERE EmployeeID IS NULL OR FirstName IS NULL OR LastName IS NULL OR Salary IS NULL;
--Validate Data Updates
SELECT EmployeeID, Salary
FROM Employees
WHERE EmployeeID = 11;


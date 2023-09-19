# SQLProjects
# The Office (2005) Payroll Management SQL Project
## Overview
This SQL Project is designed for the management of payroll for "The Office (2005)" TV show. It covers essential SQL concepts such as creating tables, inserting data, performing queries, and updating records.
## Prerequisites 
Before using this project, ensure you have the following:
- A SQL database managemen system (MySQL, PostgreSQL)
- SQL Client or command-line tool to execute SQL Scripts
## Setup
1. Create a new SQL database named "TheOfficePayroll".
2. Run the SQL script 'create-employee_table.sql' to create the "Employees" table.
3. Insert sample employee data using the script 'insert_employee_data.sql'.
4. Calculate monthly salaries using thr script 'calculate_salaries.sql'.
## Usage
## Generating Payroll Report
To Generate a monthly payroll report, run the following SQL query: 
SELECT
  EmployeeID
  CONCAT(FirstName,' ', LastName) AS FullName,
  Position, Salary AS MonthlySalary
  FROM Employees;
  ## Updating Employee Salary
  To update an employees salary, execute the following SQL script with the desired EmployeeID and new salary:
  -- Update employee Salary by EmployeeID
  UPDATE Employees
  SET Salary = 10000.00
  WHERE EmployeeID IN (1, 10, 11, 12, 13);
  ## Database Schema
  The database includes the following table:
  Employees (EmployeeID, FirstName, LastName, Position, Salary)
  ## Sample Data
  Sample Employee data has been provided in the insert_employee_data.sql script.
  ## Troubleshooting
  If you encounter any issues or have questions, please refer to the SQL Project Youtube Video by AlexTheAnalyst
  ## Contact
  For questions or assistance, contact [Genesis Moreno] at [GM63164@GMAIL.COM].
  ## Acknowledgements
  Credit to AlexTheAnalyst on Youtube for this SQL Project Idea.


CREATE DATABASE TechnoDB;

-- Task 1: CREATING TABLES
-- i: Create a table to store employee details, ensuring each employee has a unique identifier, first and last name, email address, hire date, and optional department information.
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    HireDate DATE NOT NULL,
    Department VARCHAR(50)
);                                 

-- ii: Design a table to store department details, including a unique identifier and department name. Each department should have a manager, who is one of the employees.
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) NOT NULL,
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

-- iii: Develop a table to manage projects, where each project has a unique identifier, name, start date, and optional end date. Each project should be managed by an employee.
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(100) NOT NULL UNIQUE,
    StartDate DATE NOT NULL,
    EndDate DATE,
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);


-- Task 2:ALTERING TABLES  
-- i: Add a column to the Employees table to store phone numbers.
ALTER TABLE Employees
ADD COLUMN PhoneNumber VARCHAR(15);

-- ii: Make sure that every department has a name by including a NOT NULL constraint on the DepartmentName column.
ALTER TABLE Departments
MODIFY COLUMN DepartmentName VARCHAR(100) NOT NULL;

-- iii: Rename the HireDate column in the Employees table to StartDate.
ALTER TABLE Employees
CHANGE COLUMN HireDate StartDate DATE NOT NULL;

-- iv: Remove the Department column from the Employees table, as it is redundant.
ALTER TABLE Employees
DROP COLUMN Department;


-- Task 3: DROPPING TABLES
-- i: Drop the Departments table entirely from the database.
DROP TABLE IF EXISTS Departments;

-- ii: Create a temporary table named TempProjects for testing purposes and then drop it.
CREATE TEMPORARY TABLE TempProjects (
    TempID INT PRIMARY KEY,
    TempName VARCHAR(50)
);
DROP TEMPORARY TABLE TempProjects;

-- iii: Write a script to drop the Employees table only if it exists.
DROP TABLE IF EXISTS Employees;


-- Task 4: COMNSTRAINTS 
-- i: Make sure each task assignment is linked to a specific employee and project by creating a TaskAssignments table with appropriate primary and foreign keys.
CREATE TABLE TaskAssignments (
    TaskID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    ProjectID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- ii: Add a unique constraint to the Email column in the Employees table to prevent duplicate email addresses.
ALTER TABLE Employees
ADD CONSTRAINT unique_email UNIQUE (Email);

-- iii: Make sure that every project must have an end-date by setting a NOT NULL constraint on the EndDate column in the Projects table.
ALTER TABLE Projects
MODIFY COLUMN EndDate DATE NOT NULL;


-- Task 5: INDEXES 
-- i: Create an index on the Email column in the Employees table to speed up email searches.
CREATE INDEX idx_email ON Employees(Email);

-- ii: Create a composite index on the LastName and FirstName columns in the Employees table to improve full name searches.
CREATE INDEX idx_fullname ON Employees(LastName, FirstName);

-- iii: Drop the index on the Email column if it is no longer needed.
DROP INDEX idx_email ON Employees;

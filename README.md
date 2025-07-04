aq  QD# This Project excersices utilises My SQL to Design and Manage Relational Data for Technova Solutions  
## Introduction  
Welcome to the TechNova Solutions Database Management Project Exercise!   
This project outlines the design, creation, and improvement of a relational database for TechNova Solutions, a technology consulting firm. The database is built to manage key entities: employees, departments, and projects. It ensures data integrity and makes data retrieval efficient.  

This project acts as a guide to basic SQL operations. It covers essential database management tasks, ranging from creating tables to indexing techniques. Each question presents a specific challenge, followed by the SQL code solution and a detailed explanation of the syntax and purpose.  

## Project Goals  
- **Design a Relational Database:** Create a well-structured database schema for TechNova Solutions.
- **Master Table Operations:** Demonstrate proficiency in creating, altering, and dropping database tables.
- **Enforce Data Integrity:** Implement various constraints (Primary Key, Foreign Key, Unique, NOT NULL) to maintain data consistency and validity.
- **Optimize Performance:** Utilize indexes to improve query performance for common search operations.
- **Document SQL Practices:** Provide clear, commented SQL code and explanations for each step.

## Database Schema Design:  
Conceptual overview of the tables and their relationships based on the task given:  
- **Employees:** Stores details about each employee.
- **Departments:** Stores details about each department, including its manager.
- **Projects:** Stores details about each project, including its assigned manager.
- **TaskAssignments:** Links employees to specific projects for task assignments.

## Cardinality & Relationships:  
- One **Department** has One **Manager**(who is an employee):-  **1**:**1**
- One **Project** has one **Manager**(who is an employee):-  **1**:**1**
- One **Project** can have Many **TaskAssignments**;-  **1**:**M**
- One **Employee** can have Many **TaskAssignments**:-  **1**:**M**



---------------------------------------------------------------------------------------------------------------------------------------------------------------------  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Task 1: Creating Tables:
TechNova Solutions is a technology consulting firm that manages various projects for clients, has multiple departments, and employs a diverse workforce. You have been tasked with designing a relational database for TechNova Solutions so that they can manage employees, departments, and projects. The goal is to create, modify, and optimise the database structure while ensuring data integrity.   
- i. Create a table to store employee details, ensuring each employee has a unique identifier, first and last name, email address, hire date, and optional department information.  
- ii. Design a table to store department details, including a unique identifier and department name. Each department should have a manager, who is one of the employees.  
- iii. Develop a table to manage projects, where each project has a unique identifier, name, start date, and optional end date. Each project should be managed by an employee.

### Task 2: Altering Tables:  
- i. Add a column to the Employees table to store phone numbers.
- ii. Make sure that every department has a name by including a NOT NULL constraint on the DepartmentName column.
- iii. Rename the HireDate column in the Employees table to StartDate.
- iv. Remove the Department column from the Employees table, as it is redundant.

### Task 3: Dropping Tables:  
- i. Drop the Departments table entirely from the database.
- ii. Create a temporary table named TempProjects for testing purposes and then drop it.
- iii. Write a script to drop the Employees table only if it exists.

### Task 4: Constraints:  
- i. Make sure each task assignment is linked to a specific employee and project by creating a TaskAssignments table with appropriate primary and foreign keys.
- ii. Add a unique constraint to the Email column in the Employees table to prevent duplicate email addresses.
- iii. Make sure that every project must have an end-date by setting a NOT NULL constraint on the EndDate column in the Projects table.

### Task 5: Indexes:  
- i. Create an index on the Email column in the Employees table to speed up email searches.
- ii. Create a composite index on the LastName and FirstName columns in the Employees table to improve full name searches.
- iii. Drop the index on the Email column if it is no longer needed.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------  
## Solution:  
## CREATE DATABASE TechnovaDB;  
## USE DATABASE;  -- To select the database.  
-------------------------------------------------------------  
-------------------------------------------------------------
### 1. CREATING TABLES:  
- **I. Employees Table**
<img width="384" alt="Image" src="https://github.com/user-attachments/assets/973db764-0fcd-498e-ae67-43fc10e891f0" />

- **II. Departments Table**

<img width="515" alt="Image" src="https://github.com/user-attachments/assets/a7c6dea9-2da1-452e-8cfa-3af2801799a7" />  

- **III. Projects Table**
<img width="504" alt="Image" src="https://github.com/user-attachments/assets/45a101d2-f4ff-4b64-8c61-59695c63d7b9" />

### 2. ALTERING TABLES:  
<img width="914" alt="Image" src="https://github.com/user-attachments/assets/62b0d872-fd05-4ca8-8a4b-b8e4ea0868d5" />



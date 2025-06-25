# This Project excersices utilises My SQL to Design and Manage Relational Data for Technova Solutions  
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
## Task:
TechNova Solutions is a technology consulting firm that manages various projects for clients, has multiple departments, and employs a diverse workforce. You have been tasked with designing a relational database for TechNova Solutions so that they can manage employees, departments, and projects. The goal is to create, modify, and optimise the database structure while ensuring data integrity.   
- 1. Create a table to store employee details, ensuring each employee has a unique identifier, first and last name, email address, hire date, and optional department information.  
- 2. Design a table to store department details, including a unique identifier and department name. Each department should have a manager, who is one of the employees.  
- 3. Develop a table to manage projects, where each project has a unique identifier, name, start date, and optional end date. Each project should be managed by an employee.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------  
## Solution:  
CREATE DATABASE TechnovaDB;  
USE DATABASE;  -- To select the database.  
-------------------------------------------------------------  
-------------------------------------------------------------
## CREATING TABLES:  
- **1. Employees Table**
<img width="384" alt="Image" src="https://github.com/user-attachments/assets/973db764-0fcd-498e-ae67-43fc10e891f0" />
- **2. **Departments Table**
<img width="499" alt="Image" src="https://github.com/user-attachments/assets/7c7d6b63-e8a0-4d33-b82d-ebcf53154dec" />
- **3. **Projects Table**



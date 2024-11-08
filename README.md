# Sql-teamProject8
# University Course Registration Database Project

This project involves designing and querying a database for managing course registrations at a university. Each group is responsible for creating its own database schema to store student, course, and department information, and to support specific query operations.

## Project Details

- **Project Name:** `z_team8`
- **Objective:** Design a database to manage student course registrations and support data retrieval based on various criteria.

## Database Structure

The database includes the following tables:

1. **Ogrenci (Students)**
   - **Columns:** 
     - `ogrId` - Student ID
     - `ad` - First Name
     - `soyad` - Last Name
     - `email` - Email Address
     - `telefon` - Phone Number
     - `bolumId` - Department ID (foreign key)

2. **Dersler (Courses)**
   - **Columns:** 
     - `dersId` - Course ID
     - `dersAd` - Course Name
     - `saat` - Course Duration (in hours)

3. **OgrenciDersler (StudentCourses)**
   - **Columns:**
     - `ogrId` - Student ID (foreign key)
     - `dersId` - Course ID (foreign key)

4. **Bolumler (Departments)**
   - **Columns:** 
     - `bolumId` - Department ID
     - `BolumAd` - Department Name

Each table must be filled with relevant data as needed, using appropriate relationships.

## Queries

Implement SQL queries for the following tasks:

1. **List all departments of the students.**
2. **List all courses each student is enrolled in.**
3. **Find the number of course registrations per department.**
4. **Find the number of students registered in each course.**
5. **List students who are not enrolled in any course.**
6. **Find the number of courses each student is registered for.**
7. **Calculate the total course hours for each department.**
8. **Identify the department with the highest total course hours.**
9. **Find the number of students in each department.**

## Submission Instructions

1. Capture screenshots of the table structures (object information) and database design.
2. For each query:
   - Write the SQL statement.
   - Capture and save the output results.


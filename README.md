# Student Performance Analysis using SQL

## Objective
Analyzed student enrollment and performance data using SQL to practice JOINs, subqueries, aggregate functions, and key constraints.

## Database Structure
- **Courses** table: CourseID (Primary Key), CourseName
- **Students** table: StudentID (Primary Key), StudentName, CourseID (Foreign Key), Marks

## Business Questions Solved
1. Students with names starting with 'A'
2. Students scoring above 80, along with their course name
3. Student with the lowest score overall
4. Course-wise average marks (identifying courses below 60 average)
5. Course-wise average marks for courses above 70
6. Top scorer in each course
7. Lowest scorer in each course
8. Courses with no students enrolled

## Key SQL Concepts Used
- INNER JOIN, LEFT JOIN, RIGHT JOIN
- Subqueries (MIN, MAX)
- GROUP BY + HAVING
- Aggregate functions (COUNT, AVG, SUM)
- PRIMARY KEY & FOREIGN KEY constraints

## Key Insights
- Python course has the highest average marks among all courses
- JAVA course was identified with zero student enrollment, highlighting a data gap

## Tools Used
MySQL Workbench

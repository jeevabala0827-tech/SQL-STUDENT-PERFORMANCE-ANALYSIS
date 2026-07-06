-- 1. Students with names starting with 'A'
SELECT * FROM Students 
WHERE StudentName LIKE 'A%';

-- 2. Students scoring above 80, along with their course name
SELECT s.StudentName, s.Marks, c.CourseName
FROM Students AS s
INNER JOIN Courses AS c ON s.CourseID = c.CourseID
WHERE s.Marks > 80;

-- 3. Student with the lowest score overall
SELECT StudentName, Marks FROM Students
WHERE Marks = (SELECT MIN(Marks) FROM Students);

-- 4. Course-wise average marks (identifying courses below 60 average)
SELECT c.CourseName, AVG(s.Marks) AS avgmark
FROM Courses AS c
INNER JOIN Students AS s ON c.CourseID = s.CourseID
GROUP BY c.CourseName
HAVING avgmark < 60;

-- 5. Course-wise average marks for courses above 70
SELECT c.CourseName, AVG(s.Marks) AS avgmark
FROM Courses AS c
INNER JOIN Students AS s ON c.CourseID = s.CourseID
GROUP BY c.CourseName
HAVING avgmark > 70;

-- 6. Top scorer in each course
SELECT s.StudentName, s.Marks, c.CourseName
FROM Students AS s
INNER JOIN Courses AS c ON s.CourseID = c.CourseID
WHERE (s.CourseID, s.Marks) IN (
  SELECT CourseID, MAX(Marks) FROM Students GROUP BY CourseID
);

-- 7. Lowest scorer in each course
SELECT s.StudentName, s.Marks, c.CourseName
FROM Students AS s
INNER JOIN Courses AS c ON s.CourseID = c.CourseID
WHERE (s.CourseID, s.Marks) IN (
  SELECT CourseID, MIN(Marks) FROM Students GROUP BY CourseID
);

-- 8. Courses with no students enrolled
SELECT c.CourseName
FROM Students AS s
RIGHT JOIN Courses AS c ON c.CourseID = s.CourseID
WHERE s.StudentID IS NULL;

--Query 1 → Show all students
SELECT * FROM Student;
--Query 2 → Students with department names
SELECT StudentName, DeptName
FROM Student 
JOIN Department ON Student.DeptID = Department.DeptID;
--Query 3 → Courses taken by a student (ID = 101)
SELECT StudentName, CourseName
FROM Student 
JOIN Enrollment ON Student.StudentID = Enrollment.StudentID
JOIN Course ON Enrollment.CourseID = Course.CourseID
WHERE Student.StudentID = 101;
--Query 4 → Count students per department
SELECT DeptName, COUNT(StudentID) AS TotalStudents
FROM Student 
JOIN Department ON Student.DeptID = Department.DeptID
GROUP BY DeptName;


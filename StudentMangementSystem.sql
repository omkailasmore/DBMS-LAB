CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    marks INT CHECK (marks BETWEEN 0 AND 100)
);
INSERT INTO Student (student_id, student_name, marks)
VALUES
(1, 'Aarav', 85),
(2, 'Ananya', 72),
(3, 'Rahul', 38),
(4, 'Priya', 91),
(5, 'Rohan', 45),
(6, 'Sneha', 67),
(7, 'Aditya', 29),
(8, 'Isha', 78),
(9, 'Karan', 54),
(10, 'Neha', 33),
(11, 'Arjun', 88),
(12, 'Meera', 41),
(13, 'Vikram', 36),
(14, 'Pooja', 95),
(15, 'Sahil', 62),
(16, 'Kavya', 49),
(17, 'Omkar', 27),
(18, 'Riya', 81),
(19, 'Varun', 40),
(20, 'Aditi', 58);
SELECT * FROM Student;

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
DELIMITER //

CREATE PROCEDURE Update_Marks(
    IN p_student_id INT,
    IN p_new_marks INT
)
BEGIN
    UPDATE Student
    SET marks = p_new_marks
    WHERE student_id = p_student_id;

    IF ROW_COUNT() > 0 THEN
        SELECT 'Marks updated successfully' AS Message;
    ELSE
        SELECT 'Student not found or marks unchanged' AS Message;
    END IF;
END //

DELIMITER ;
CALL Update_Marks(3, 65);

SELECT * FROM Student WHERE student_id = 3;
DELIMITER //

CREATE PROCEDURE Check_Result(
    IN p_student_id INT
)
BEGIN
    SELECT
        student_id,
        student_name,
        marks,
        CASE
            WHEN marks >= 40 THEN 'PASS'
            ELSE 'FAIL'
        END AS Result
    FROM Student
    WHERE student_id = p_student_id;
END //

DELIMITER ;
CALL Check_Result(1);
CALL Check_Result(7);
DELIMITER //

CREATE PROCEDURE Count_Students()
BEGIN
    SELECT COUNT(*) AS Total_Students
    FROM Student;
END //

DELIMITER ;
CALL Count_Students();
-- Update marks
CALL Update_Marks(3, 65);

-- Check result
CALL Check_Result(3);

-- Count all students
CALL Count_Students();

-- View the complete table
SELECT * FROM Student;
SHOW PROCEDURE STATUS
WHERE Db = 'CollegeDB';

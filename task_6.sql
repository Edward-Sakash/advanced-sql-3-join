\c a_new_database

-- Add the local_mentor column to the Student table
ALTER TABLE Student
ADD COLUMN local_mentor INT;


-- Update the local_mentor field of each student
UPDATE Student
SET local_mentor = (
    SELECT Mentor.id
    FROM Mentor
    WHERE Mentor.city = Student.city
    LIMIT 1
);

-- Check the updated student table
SELECT id, name, city, mentor_id, local_mentor
FROM Student
ORDER BY name;


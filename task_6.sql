\c my_new_database

-- Update the local_mentor field of each student
UPDATE Student
SET local_mentor = mentor.id 
FROM mentor 
WHERE mentor.city = student.city;

-- Check the updated student table
SELECT id, name, city, mentor_id, local_mentor
FROM Student
ORDER BY name;


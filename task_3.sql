\c a_new_database

-- Subquery to list mentors with their assigned students
SELECT
    M.name AS Mentor,
    S.name AS Student,
    M.city AS "Mentor’s city",
    S.city AS "Student’s city"
FROM
    Mentor M
JOIN
    Student S ON M.id = S.mentor_id

UNION ALL

-- Subquery to list mentors with no students (LEFT JOIN with NULL students)
SELECT
    M.name AS Mentor,
    NULL AS Student,
    M.city AS "Mentor's city",
    NULL AS "Student's city"
FROM
    Mentor M
WHERE
    M.id NOT IN (SELECT DISTINCT mentor_id FROM Student)
ORDER BY
    Mentor, Student;

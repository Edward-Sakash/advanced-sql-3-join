- Query to match students with their mentors and display required fields
SELECT
    S.name AS Student,
    M.name AS Mentor,
    S.city AS "Student`s city",
    M.city AS "Mentor`s city"
FROM
    Student S
INNER JOIN
    Mentor M ON S.mentor_id = M.id
ORDER BY
    S.name;


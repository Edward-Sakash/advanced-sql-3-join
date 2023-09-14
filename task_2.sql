\c a_new_database

SELECT
    S.name AS Student,
    COALESCE(M.name, '') AS Mentor, -- Use COALESCE to display an empty string instead of NULL
    S.city AS "Students city",
    COALESCE(M.city, '') AS "Mentors city" -- Use COALESCE to display an empty string instead of NULL
FROM
    Student S
LEFT JOIN
    Mentor M ON S.mentor_id = M.id
ORDER BY
    S.name;

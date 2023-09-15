\c my_new_database

SELECT
    M.name AS Mentor,
    S.name AS Student,
    M.city AS "Mentors city",
    S.city AS "Students city"
FROM
    Mentor M
JOIN
    Student S ON M.id = S.mentor_id
WHERE
    M.city = 'Berlin' OR S.city = 'Berlin'
ORDER BY
    Mentor;

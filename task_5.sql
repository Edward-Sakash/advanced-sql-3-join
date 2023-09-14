\c a_new_database

SELECT
    S.name AS Student,
    S.city AS City,
    M.name AS Mentor
FROM
    Student S
JOIN
    Student M ON S.city = M.city AND S.id <> M.id
ORDER BY
    S.city, S.name, M.name;

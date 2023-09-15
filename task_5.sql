\c my_new_database

SELECT
    S.name AS Student,
    S.city AS City,
    M.name AS Mentor
FROM
    Student S
JOIN
    Mentor M ON S.city = M.city
ORDER BY
    S.city, S.name, M.name;

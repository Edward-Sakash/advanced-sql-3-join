\c my_new_database

SELECT
    M.name AS Mentor,
    S.name AS Student, -- Use COALESCE to display an empty string instead of NULL
    
    M.city AS "Mentors city",
    S.city AS "Students city" 
    
FROM
    Student S
RIGHT JOIN
    Mentor M ON S.mentor_id = M.id
ORDER BY
    M.name;    

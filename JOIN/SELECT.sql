-- 
SELECT
    A.id 
FROM
    tablea A 
    LEFT JOIN tableb B 
        ON A.id = B.id
--
SELECT
    A.id 
FROM
    tablea A 
    LEFT JOIN tableb B 
        ON A.id = B.id 
WHERE
    B.id IS NULL
--
SELECT
    A.id 
FROM
    tablea A 
    INNER JOIN tableb B 
        ON A.id = B.id
--
SELECT
    B.id 
FROM
    tablea A 
    RIGHT JOIN tableb B 
        ON A.id = B.id
--
SELECT
    B.id 
FROM
    tablea A 
    RIGHT JOIN tableb B 
        ON A.id = B.id 
WHERE
    A.id IS NULL
--




--
SELECT
    *
FROM
    tablea A 
    FULL OUTER JOIN tableb B 
        ON A.id = B.id
--MySQLではFULL OUTER JOINが使用できないため
SELECT
    A.id 
FROM
    tablea A 
    LEFT JOIN tableb B 
        ON A.id = B.id 
UNION 
SELECT
    B.id 
FROM
    tablea A 
    RIGHT JOIN tableb B 
        ON A.id = B.id
--
SELECT
    * 
FROM
    tablea A 
    FULL OUTER JOIN tableb B 
        ON A.id = B.id 
WHERE
    A.id IS NULL 
    OR B.id IS NULL
--MySQLではFULL OUTER JOINが使用できないため
SELECT
    A.id 
FROM
    tablea A 
    LEFT JOIN tableb B 
        ON A.id = B.id 
WHERE
    B.id IS NULL

UNION 
SELECT
    B.id 
FROM
    tablea A 
    RIGHT JOIN tableb B 
        ON A.id = B.id 
WHERE
    A.id IS NULL
--
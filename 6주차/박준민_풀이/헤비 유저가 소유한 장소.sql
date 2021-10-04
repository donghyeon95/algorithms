-- 코드를 입력하세요
SELECT *
FROM PLACES
WHERE
    HOST_ID IN (
                SELECT host_id 
                FROM PLACES
                GROUP BY HOST_ID
                HAVING COUNT(HOST_ID) > 1
            )
ORDER BY ID
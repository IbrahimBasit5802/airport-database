SELECT T.MODELNO, AVG(S.HOURSWORKED) AS avg_maintenance_hours
FROM AIRPLANE_TYPE T
JOIN AIRPLANE A ON A.TYPEE = T.MODELNO
JOIN SERVICERECORDS S ON S.REGNUMBER = A.REGNO
GROUP BY T.MODELNO
ORDER BY avg_maintenance_hours DESC;
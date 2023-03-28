--Query 1

--Find total number of employees in each shift
SELECT SHIFTTIME, COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
GROUP BY SHIFTTIME;

--Query 2

--Find airplane that has undergone most maintanence
SELECT top 5 a.TYPEE, COUNT(*) as SERVICE_COUNT
FROM AIRPLANE a
JOIN SERVICERECORDS s ON a.REGNO = s.REGNUMBER
GROUP BY a.TYPEE
ORDER BY SERVICE_COUNT DESC


--Query 3

--Find total weight of all airplanes owned by each corporation
SELECT o.CID, SUM(a.WEIGHT) AS 'Total weight of owned Airplanes (kg)'
FROM AIRPLANE_TYPE a
INNER JOIN AIRPLANE air ON a.MODELNO = air.typee
INNER JOIN OWNERR o ON AIR.OWN = o.OID
WHERE o.OWNERTYPE = 'CORPORATE'
GROUP BY o.CID

--Query 4

--Calculate number of owners that are Persons and Corporations

SELECT COUNT(DISTINCT CASE
                      WHEN OWNERTYPE = 'INDIVIDUAL' THEN PERSON
                      WHEN OWNERTYPE = 'CORPORATE' THEN CID
                      ELSE NULL
                      END) AS 'Total Number of Owners',
       COUNT(DISTINCT CASE
                      WHEN OWNERTYPE = 'INDIVIDUAL' THEN PERSON
                      ELSE NULL
                      END) AS 'Total Person Owners',
       COUNT(DISTINCT CASE
                      WHEN OWNERTYPE = 'CORPORATE' THEN CID
                      ELSE NULL
                      END) AS 'Total Corporate Owners'
FROM OWNERR o
LEFT JOIN COORPORATIONS c ON o.CID = c.CNAME;
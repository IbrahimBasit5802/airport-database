SELECT TYPEE AS Plane_Type, COUNT(*) AS Total_Planes
FROM AIRPLANE
GROUP BY TYPEE;
SELECT LICNUM
FROM PILOT P
INNER JOIN PILOT_RESTR PR ON P.LICNUM = PR.PID
INNER JOIN SERVICERECORDS SR ON PR.RESTR = SR.REGNUMBER
WHERE SR.SERVICEDATE = CONVERT(date, GETDATE()) 
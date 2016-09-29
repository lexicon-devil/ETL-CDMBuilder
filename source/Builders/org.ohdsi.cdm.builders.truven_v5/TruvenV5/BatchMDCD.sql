﻿  WITH CTE_SUMMARY 
  AS (   
  SELECT ENROLID, MIN(DOBYR) MIN_DOB, MAX(DOBYR) AS MAX_DOB, MIN(ed.SEX) AS MIN_SEX, MAX(ed.SEX) AS MAX_SEX    
  FROM {sc}.ENROLLMENT_DETAIL ed     
  GROUP BY ENROLID   
  )     
  SELECT DISTINCT {0}   z.ENROLID, z.ENROLID   
  FROM {sc}.ENROLLMENT_DETAIL z  
  LEFT JOIN (     
  SELECT ENROLID,  DATEPART(year, MIN(DTSTART)) AS MIN_ENROLL_YEAR     
  FROM {sc}.ENROLLMENT_DETAIL     
  GROUP BY ENROLID    ) m ON m.ENROLID = z.ENROLID  
   WHERE z.ENROLID IS NOT NULL AND (DRUGCOVG = '1' OR MEDICARE = '1') 
   AND z.DOBYR BETWEEN 1900 AND DATEPART(year, GETDATE())   
   AND z.DOBYR <= (m.MIN_ENROLL_YEAR+1) 
   and z.ENROLID NOT IN ( 
   SELECT ENROLID    
   FROM CTE_SUMMARY    
  WHERE MIN_DOB != 0 AND MAX_DOB > DATEPART(year, GETDATE()) - 90 AND ABS(MIN_DOB-MAX_DOB) > 2 
   ) 
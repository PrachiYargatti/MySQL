/*
Enter your query here.
*/
SELECT DISTINCT CITY 
FROM STATION
WHERE SUBSTR(CITY, -1, 1) IN ('a','e','o','i','u');

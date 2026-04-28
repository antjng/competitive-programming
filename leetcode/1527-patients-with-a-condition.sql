# Write your MySQL query statement below
SELECT *
FROM patients
WHERE conditions REGEXP '(^DIAB1|(.*\\sDIAB1))'
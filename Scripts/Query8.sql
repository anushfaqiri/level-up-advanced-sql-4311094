SELECT e.employeeId, e.firstName, e.LastName,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '01'
THEN s.salesAmount END) AS January,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '02'
THEN s.salesAmount END) AS February,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '03'
THEN s.salesAmount END) AS March,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '04'
THEN s.salesAmount END) AS April,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '05'
THEN s.salesAmount END) AS May,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '06'
THEN s.salesAmount END) AS June,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '07'
THEN s.salesAmount END) AS July,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '08'
THEN s.salesAmount END) AS August,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '09'
THEN s.salesAmount END) AS September,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '10'
THEN s.salesAmount END) AS October,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '11'
THEN s.salesAmount END) AS November,
SUM(CASE
WHEN strftime('%m', s.soldDate) = '12'
THEN s.salesAmount END) AS December
FROM employee e
INNER JOIN sales s
ON e.employeeId=s.employeeId
WHERE strftime('%Y', s.soldDate) = "2021"
GROUP BY e.firstName, e.lastName
ORDER BY e.lastName, e.firstName
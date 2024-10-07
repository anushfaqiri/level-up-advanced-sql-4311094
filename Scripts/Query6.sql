SELECT e.employeeId, e.firstName, e.lastName,
count(s.salesId) AS "Cars Sold",
MIN(s.salesAmount) AS leastExpensive,
MAX(s.salesAmount) AS mostExpensive
FROM employee e
INNER JOIN sales s
ON e.employeeId = s.employeeId
WHERE DATE(s.soldDate) >= '2023-01-01' --DATE('now', 'start of year')
GROUP BY e.employeeId
HAVING "CARS SOLD" > 5
ORDER BY "CARS SOLD" DESC
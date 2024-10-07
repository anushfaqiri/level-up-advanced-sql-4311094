SELECT e.employeeId, e.firstName, e.lastName,
MIN(s.salesAmount) AS leastExpensive,
MAX(s.salesAmount) AS mostExpensive
FROM employee e
INNER JOIN sales s
ON e.employeeId = s.employeeId
WHERE DATE(s.soldDate) >= DATE('now', 'start of year')
GROUP BY e.employeeId
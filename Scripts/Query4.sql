SELECT e.employeeId, e.firstName, e.lastName,
count(s.salesId) AS "Cars Sold"
FROM employee e
INNER JOIN sales s
ON e.employeeId = s.employeeId
GROUP BY e.employeeId
ORDER BY "Cars Sold" DESC 
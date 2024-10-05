SELECT e.firstName, e.lastName, e.title, s.salesId
FROM employee e
LEFT JOIN sales s
ON e.employeeId=s.employeeId
WHERE s.salesId IS NULL
AND e.title = 'Sales Person';
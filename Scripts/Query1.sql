SELECT e.firstName, e.lastName, e.title,
m.firstName AS managerFirstName, m.lastName AS managerLastName
FROM employee e
INNER JOIN employee m
ON e.managerId=m.employeeId
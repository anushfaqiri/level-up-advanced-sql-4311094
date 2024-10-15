SELECT e.firstName, e.lastName, COUNT(s.salesId) AS Sold,
i.inventoryId, m.model,
  RANK() OVER (PARTITION BY s.employeeId
  ORDER BY COUNT(s.salesID) DESC) AS Rank
FROM employee e
INNER JOIN sales s ON e.employeeId=s.employeeId
INNER JOIN inventory i ON s.inventoryId=i.inventoryId
INNER JOIN model m ON i.modelId=m.modelId
GROUP BY e.employeeId, m.model
ORDER BY e.firstName, Sold DESC
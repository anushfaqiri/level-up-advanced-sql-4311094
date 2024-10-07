SELECT s.salesId, s.salesAmount, c.customerId, c.firstName, c.lastName
FROM sales s
FULL OUTER JOIN customer c
ON s.customerId = c.customerId
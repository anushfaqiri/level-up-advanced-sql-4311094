SELECT s.salesId, s.salesAmount, s.soldDate,
i.modelId, i.colour, i.year
FROM sales s
INNER JOIN inventory i
ON s.inventoryId = i.inventoryId
WHERE i.modelId IN
(SELECT m.modelId
FROM model m
WHERE m.EngineType = 'Electric')
ORDER BY salesId
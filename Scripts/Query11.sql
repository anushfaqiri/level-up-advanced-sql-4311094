SELECT Year, Month, "Sales Amount",
SUM("Sales Amount") OVER (PARTITION BY Year
ORDER BY Year, Month) AS "Yearly Running Total"
FROM (SELECT strftime('%Y', s.soldDate) AS Year,
    strftime('%m', s.soldDate) AS Month,
    ROUND(SUM(s.salesAmount),2) AS "Sales Amount"
  FROM sales s
  GROUP BY Year, Month
  ORDER BY Year, Month)
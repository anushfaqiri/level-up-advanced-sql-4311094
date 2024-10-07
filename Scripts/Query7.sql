SELECT strftime('%Y', s.soldDate) AS "Year",
"$" || ROUND(SUM(s.salesAmount),2) AS "Total Sales"
FROM sales s
GROUP BY "Year"
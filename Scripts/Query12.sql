With CTE_ThisMonth As
(Select strftime('%Y-%m', s.soldDate) AS Month,
Count(s.salesId) CountThisMonth
From sales s
Group By Month
Order By Month
)
Select Month, CountThisMonth,
Lag(CountThisMonth, 1, 0) Over (Order By Month)
AS CountLastMonth 
From CTE_ThisMonth
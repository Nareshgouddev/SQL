select 
	CustomerID,
	FirstName,
	coalesce(score,0) as Score2,
	Avg(score) over() as AVGscore
from Sales.Customers

Select
	customerID,
	FirstName,
	LastName,
	FirstName+' '+coalesce(LastName,'') as FullName
from Sales.Customers

SELECT
    CustomerID,
    Score
FROM Sales.Customers
order by CASE WHEN SCORE IS NULL THEN 1 ELSE 0 END,score;

SELECT 
	c.*,
	o.OrderID
From Sales.Customers as c
left join Sales.Orders as o ON c.CustomerID=o.CustomerID
where o.CustomerID is null

SELECT 
	*
From Sales.Orders

Select 
	CATEGORY,
	SUM(Sales) AS TotalSales 
FROM (
	SELECT 
		OrderID,
		Sales,
		CASE
			WHEN Sales > 50 then 'HIGH'
			WHEN Sales > 20 then 'Medium'
			ELSE 'LOW'
		END AS Category
	FROM Sales.Orders
)AS t
Group by Category 
ORDER BY TotalSales DESC;


SELECT
    CustomerID,
    FirstName,
    LastName,
    Country,
   CASE 
        WHEN Country = 'Germany' THEN 'DE'
        WHEN Country = 'USA'     THEN 'US'
        ELSE 'n/a'
    END AS CountryAbbr
FROM Sales.Customers;














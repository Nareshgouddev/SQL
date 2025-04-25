/*
This is Revision of DATE and TIME Functions
*/

SELECT
    OrderID,
    CreationTime,
    '2025-08-20' AS HardCoded,
    GETDATE() AS Today
FROM Sales.Orders;

-- DATE part Extraction (DATETRUNC, DATENAME, DATEPART, YEAR, MONTH, DAY)

SELECT 
	OrderID,
	  CreationTime,
    -- DATETRUNC Examples
    DATETRUNC(year, CreationTime) AS Year_dt,
    DATETRUNC(day, CreationTime) AS Day_dt,
    DATETRUNC(minute, CreationTime) AS Minute_dt,
	-- DATENAME Examples
    DATENAME(month, CreationTime) AS Month_dn,
    DATENAME(weekday, CreationTime) AS Weekday_dn,
    DATENAME(day, CreationTime) AS Day_dn,
    DATENAME(year, CreationTime) AS Year_dn,
	    -- DATEPART Examples
    DATEPART(year, CreationTime) AS Year_dp,
    DATEPART(month, CreationTime) AS Month_dp,
    DATEPART(day, CreationTime) AS Day_dp,
    DATEPART(hour, CreationTime) AS Hour_dp,
    DATEPART(quarter, CreationTime) AS Quarter_dp,
    DATEPART(week, CreationTime) AS Week_dp,
    YEAR(CreationTime) AS Year,
    MONTH(CreationTime) AS Month,
    DAY(CreationTime) AS Day
FROM Sales.Orders





SELECT
    DATETRUNC(year, CreationTime) AS Creation,
    COUNT(*) AS OrderCount
FROM Sales.Orders
GROUP BY DATETRUNC(year, CreationTime);


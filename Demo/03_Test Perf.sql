-- Test #1 Count number of ROWS
SELECT FORMAT(COUNT(*),'#,##0') as cntrow FROM [dbo].[Trip];


SELECT  
    D.Month
,   D.MonthName
,   FORMAT(SUM(T.TotalAmount),'#,##0.0000') as Amount
,   FORMAT(COUNT(*),'#,##0') as cntrow
FROM dbo.Trip as T INNER JOIN dbo.Date as D
ON T.DateID=D.DateID
GROUP BY D.Month,D.MonthName
ORDER BY D.Month;

SELECT *
FROM dbo.Trip as T INNER JOIN dbo.Date as D
ON T.DateID=D.DateID;


--Test #2 Delete Time

DELETE FROM [dbo].[Date];

DELETE FROM [dbo].[Geography];

DELETE FROM [dbo].[HackneyLicense];

DELETE FROM [dbo].[Medallion];

DELETE FROM [dbo].[Time];

DELETE FROM [dbo].[Weather];

DELETE FROM [dbo].[Trip];
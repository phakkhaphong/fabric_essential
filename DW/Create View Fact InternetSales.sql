CREATE SCHEMA dw;
GO


CREATE VIEW dw.vwFactInternetSales
AS
SELECT * 
FROM staging.internetsales
WHERE CustomerKey IS NOT NULL AND ProductKey IS NOT NULL AND OrderDateKey IS NOT NULL;

GO


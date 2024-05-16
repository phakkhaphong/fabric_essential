CREATE SCHEMA dw;
GO


CREATE VIEW dw.FactInternetSales
AS
SELECT * 
FROM staging.internetsales
WHERE ProductKey IS NOT NULL;

GO


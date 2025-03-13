CREATE SCHEMA dw;
GO


CREATE VIEW dw.vwFactInternetSales
AS
SELECT * 
FROM staging.internetsales
WHERE ProductKey IS NOT NULL;

GO


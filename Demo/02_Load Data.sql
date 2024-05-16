/*
    COPY INTO Document
    https://learn.microsoft.com/en-us/sql/t-sql/statements/copy-into-transact-sql?view=fabric&preserve-view=true
*/

COPY INTO [dbo].[Date]
FROM 'https://nytaxiblob.blob.core.windows.net/2013/Date'
WITH
(
    FILE_TYPE = 'CSV',
    FIELDTERMINATOR = ',',
    FIELDQUOTE = ''
);


COPY INTO [dbo].[Geography]
FROM 'https://nytaxiblob.blob.core.windows.net/2013/Geography'
WITH
(
    FILE_TYPE = 'CSV',
    FIELDTERMINATOR = ',',
    FIELDQUOTE = ''
);

COPY INTO [dbo].[HackneyLicense]
FROM 'https://nytaxiblob.blob.core.windows.net/2013/HackneyLicense'
WITH
(
    FILE_TYPE = 'CSV',
    FIELDTERMINATOR = ',',
    FIELDQUOTE = ''
);

COPY INTO [dbo].[Medallion]
FROM 'https://nytaxiblob.blob.core.windows.net/2013/Medallion'
WITH
(
    FILE_TYPE = 'CSV',
    FIELDTERMINATOR = ',',
    FIELDQUOTE = ''
);

COPY INTO [dbo].[Time]
FROM 'https://nytaxiblob.blob.core.windows.net/2013/Time'
WITH
(
    FILE_TYPE = 'CSV',
    FIELDTERMINATOR = ',',
    FIELDQUOTE = ''
);

COPY INTO [dbo].[Weather]
FROM 'https://nytaxiblob.blob.core.windows.net/2013/Weather'
WITH
(
    FILE_TYPE = 'CSV',
    FIELDTERMINATOR = ',',
    FIELDQUOTE = '',
    ROWTERMINATOR='0X0A'
);

COPY INTO [dbo].[Trip]
FROM 'https://nytaxiblob.blob.core.windows.net/2013/Trip2013'
WITH
(
    FILE_TYPE = 'CSV',
    FIELDTERMINATOR = '|',
    FIELDQUOTE = '',
    ROWTERMINATOR='0X0A',
    COMPRESSION = 'GZIP'
);
CREATE TABLE dw.[DimDate]
(
	[DateKey] [int]  NULL,
	[FullDateAlternateKey] [datetime2](6)  NULL,
	[DayNumberOfWeek] [int]  NULL,
	[EnglishDayNameOfWeek] [varchar](8000)  NULL,
	[EnglishMonthName] [varchar](8000)  NULL,
	[MonthNumberOfYear] [int]  NULL,
	[QuarterName] [varchar](8000)  NULL,
	[YearName] [varchar](8000)  NULL
)
GO

select [DateKey],
    [FullDateAlternateKey],
    CONVERT(int,[DayNumberOfWeek]) as DayNumberOfWeek,
    [EnglishDayNameOfWeek],
    [EnglishMonthName],
    CONVERT(int,[MonthNumberOfYear]) as MonthNumberOfYear,
    'Y'+CONVERT(char(4),CalendarYear)+' '+'Q'+CONVERT(char(1),CalendarQuarter) as QuarterName,
    'Y'+CONVERT(char(4),CalendarYear) as YearName
from duo.DimDate

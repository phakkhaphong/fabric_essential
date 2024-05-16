CREATE TABLE [dbo].[Date]
(
    [DateID] int NOT NULL,
    [Date] date NULL,
    [DateBKey] char(10)  NULL,
    [DayOfMonth] varchar(2)  NULL,
    [DaySuffix] varchar(4)  NULL,
    [DayName] varchar(9)  NULL,
    [DayOfWeek] char(1)  NULL,
    [DayOfWeekInMonth] varchar(2)  NULL,
    [DayOfWeekInYear] varchar(2)  NULL,
    [DayOfQuarter] varchar(3)  NULL,
    [DayOfYear] varchar(3)  NULL,
    [WeekOfMonth] varchar(1)  NULL,
    [WeekOfQuarter] varchar(2)  NULL,
    [WeekOfYear] varchar(2)  NULL,
    [Month] int  NULL,
    [MonthName] varchar(9)  NULL,
    [MonthOfQuarter] varchar(2)  NULL,
    [Quarter] char(1)  NULL,
    [QuarterName] varchar(9)  NULL,
    [Year] char(4)  NULL,
    [YearName] char(7)  NULL,
    [MonthYear] char(10)  NULL,
    [MMYYYY] char(6)  NULL,
    [FirstDayOfMonth] date NULL,
    [LastDayOfMonth] date NULL,
    [FirstDayOfQuarter] date NULL,
    [LastDayOfQuarter] date NULL,
    [FirstDayOfYear] date NULL,
    [LastDayOfYear] date NULL,
    [IsHolidayUSA] bit NULL,
    [IsWeekday] bit NULL,
    [HolidayUSA] varchar(50)  NULL
);

CREATE TABLE [dbo].[Geography]
(
    [GeographyID] int NOT NULL,
    [ZipCodeBKey] varchar(10)  NOT NULL,
    [County] varchar(50)  NULL,
    [City] varchar(50)  NULL,
    [State] varchar(50)  NULL,
    [Country] varchar(50)  NULL,
    [ZipCode] varchar(50)  NULL
);

CREATE TABLE [dbo].[HackneyLicense]
(
    [HackneyLicenseID] int NOT NULL,
    [HackneyLicenseBKey] varchar(50)  NOT NULL,
    [HackneyLicenseCode] varchar(50)  NULL
);

CREATE TABLE [dbo].[Medallion]
(
    [MedallionID] int NOT NULL,
    [MedallionBKey] varchar(50)  NOT NULL,
    [MedallionCode] varchar(50)  NULL
);

CREATE TABLE [dbo].[Time]
(
    [TimeID] int NOT NULL,
    [TimeBKey] varchar(8)  NOT NULL,
    [HourNumber] int NOT NULL,
    [MinuteNumber] int NOT NULL,
    [SecondNumber] int NOT NULL,
    [TimeInSecond] int NOT NULL,
    [HourlyBucket] varchar(15)  NOT NULL,
    [DayTimeBucketGroupKey] int NOT NULL,
    [DayTimeBucket] varchar(100)  NOT NULL
);

CREATE TABLE [dbo].[Trip]
(
    [DateID] int NOT NULL,
    [MedallionID] int NOT NULL,
    [HackneyLicenseID] int NOT NULL,
    [PickupTimeID] int NOT NULL,
    [DropoffTimeID] int NOT NULL,
    [PickupGeographyID] int NULL,
    [DropoffGeographyID] int NULL,
    [PickupLatitude] float NULL,
    [PickupLongitude] float NULL,
    [PickupLatLong] varchar(50)  NULL,
    [DropoffLatitude] float NULL,
    [DropoffLongitude] float NULL,
    [DropoffLatLong] varchar(50)  NULL,
    [PassengerCount] int NULL,
    [TripDurationSeconds] int NULL,
    [TripDistanceMiles] float NULL,
    [PaymentType] varchar(50)  NULL,
    [FareAmount] decimal(18,4) NULL,
    [SurchargeAmount] decimal(18,4) NULL,
    [TaxAmount] decimal(18,4) NULL,
    [TipAmount] decimal(18,4) NULL,
    [TollsAmount] decimal(18,4) NULL,
    [TotalAmount] decimal(18,4) NULL
);

CREATE TABLE [dbo].[Weather]
(
    [DateID] int NOT NULL,
    [GeographyID] int NOT NULL,
    [PrecipitationInches] float NOT NULL,
    [AvgTemperatureFahrenheit] float NOT NULL
);
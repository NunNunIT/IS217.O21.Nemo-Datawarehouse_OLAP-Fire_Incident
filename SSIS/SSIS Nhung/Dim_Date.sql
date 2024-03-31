-- DIM DATE
Day_Of_Week
Day_Name
Day_Of_Month
Day_Of_Year
Month_Of_Year
Month_Name
Year
Week_Of_Year
Quarter
Quarter_Name
isWeekend
isLeapYear

/* -----------------------------------------------------------------*/
/** Incident_Date **/

-- Day_Of_Week
DATEPART("dw",[Incident_Date])

-- Day_Name
DATEPART("dw", [Incident_Date]) == 1 ? "Monday" : DATEPART("dw", [Incident_Date]) == 2 ? "Tuesday" : DATEPART("dw", [Incident_Date]) == 3 ? "Wednesday" : DATEPART("dw", [Incident_Date]) == 4 ? "Thursday" : DATEPART("dw", [Incident_Date]) == 5 ? "Friday" : DATEPART("dw", [Incident_Date]) == 6 ? "Saturday" : DATEPART("dw", [Incident_Date]) == 7 ? "Sunday": "Invalid Day"

-- Day_Of_Month
DAY([Incident_Date])

-- Day_Of_Year
DATEPART("y",[Incident_Date])

-- Month_Of_Year
MONTH( [Incident_Date] )

-- Month_Name
MONTH([Incident_Date]) == 1 ? "Jan" : MONTH([Incident_Date]) == 2 ? "Feb" : MONTH([Incident_Date]) == 3 ? "Mar" : MONTH([Incident_Date]) == 4 ? "Apr" : MONTH([Incident_Date]) == 5 ? "May" : MONTH([Incident_Date]) == 6 ? "Jun" : MONTH([Incident_Date]) == 7 ? "Jul" : MONTH([Incident_Date]) == 8 ? "Aug" : MONTH([Incident_Date]) == 9 ? "Sep" : MONTH([Incident_Date]) == 10 ? "Oct" : MONTH([Incident_Date]) == 11 ? "Nov" : MONTH([Incident_Date]) == 12 ? "Dec" : "Invalid Month"

-- Year
YEAR( [Incident_Date] )

-- Week_Of_Year
DATEPART("wk",[Incident_Date])

-- Quarter
DATEPART("q", [Incident_Date])

-- Quarter_Name
DATEPART("q", [Incident_Date]) == 1 ? "Q1" : DATEPART("q", [Incident_Date]) == 2 ? "Q2" : DATEPART("q", [Incident_Date]) == 3 ? "Q3" : DATEPART("q", [Incident_Date]) == 4 ? "Q4" : "Invalid Quarter"

-- isWeekend
DATEPART("dw", [Incident_Date]) == 6 || DATEPART("dw", [Incident_Date]) == 7 ? 1 : 0

-- isLeapYear 
YEAR([Incident_Date]) % 4 == 0


/* -----------------------------------------------------------------*/
/** Alarm_DtTm **/

-- Day_Of_Week
DATEPART("dw",[Alarm_DtTm])

-- Day_Name
DATEPART("dw", [Alarm_DtTm]) == 1 ? "Monday" : DATEPART("dw", [Alarm_DtTm]) == 2 ? "Tuesday" : DATEPART("dw", [Alarm_DtTm]) == 3 ? "Wednesday" : DATEPART("dw", [Alarm_DtTm]) == 4 ? "Thursday" : DATEPART("dw", [Alarm_DtTm]) == 5 ? "Friday" : DATEPART("dw", [Alarm_DtTm]) == 6 ? "Saturday" : DATEPART("dw", [Alarm_DtTm]) == 7 ? "Sunday": "Invalid Day"

-- Day_Of_Month
DAY([Alarm_DtTm])

-- Day_Of_Year
DATEPART("y",[Alarm_DtTm])

-- Month_Of_Year
MONTH( [Alarm_DtTm] )

-- Month_Name
MONTH([Alarm_DtTm]) == 1 ? "Jan" : MONTH([Alarm_DtTm]) == 2 ? "Feb" : MONTH([Alarm_DtTm]) == 3 ? "Mar" : MONTH([Alarm_DtTm]) == 4 ? "Apr" : MONTH([Alarm_DtTm]) == 5 ? "May" : MONTH([Alarm_DtTm]) == 6 ? "Jun" : MONTH([Alarm_DtTm]) == 7 ? "Jul" : MONTH([Alarm_DtTm]) == 8 ? "Aug" : MONTH([Alarm_DtTm]) == 9 ? "Sep" : MONTH([Alarm_DtTm]) == 10 ? "Oct" : MONTH([Alarm_DtTm]) == 11 ? "Nov" : MONTH([Alarm_DtTm]) == 12 ? "Dec" : "Invalid Month"

-- Year
YEAR( [Alarm_DtTm] )

-- Week_Of_Year
DATEPART("wk",[Alarm_DtTm])

-- Quarter
DATEPART("q", [Alarm_DtTm])

-- Quarter_Name
DATEPART("q", [Alarm_DtTm]) == 1 ? "Q1" : DATEPART("q", [Alarm_DtTm]) == 2 ? "Q2" : DATEPART("q", [Alarm_DtTm]) == 3 ? "Q3" : DATEPART("q", [Alarm_DtTm]) == 4 ? "Q4" : "Invalid Quarter"

-- isWeekend
DATEPART("dw", [Alarm_DtTm]) == 6 || DATEPART("dw", [Alarm_DtTm]) == 7 ? 1 : 0

-- isLeapYear 
YEAR([Alarm_DtTm]) % 4 == 0

/* -----------------------------------------------------------------*/
/** Arrival_DtTm **/

-- Day_Of_Week
DATEPART("dw",[Arrival_DtTm])

-- Day_Name
DATEPART("dw", [Arrival_DtTm]) == 1 ? "Monday" : DATEPART("dw", [Arrival_DtTm]) == 2 ? "Tuesday" : DATEPART("dw", [Arrival_DtTm]) == 3 ? "Wednesday" : DATEPART("dw", [Arrival_DtTm]) == 4 ? "Thursday" : DATEPART("dw", [Arrival_DtTm]) == 5 ? "Friday" : DATEPART("dw", [Arrival_DtTm]) == 6 ? "Saturday" : DATEPART("dw", [Arrival_DtTm]) == 7 ? "Sunday": "Invalid Day"

-- Day_Of_Month
DAY([Arrival_DtTm])

-- Day_Of_Year
DATEPART("y",[Arrival_DtTm])

-- Month_Of_Year
MONTH( [Arrival_DtTm] )

-- Month_Name
MONTH([Arrival_DtTm]) == 1 ? "Jan" : MONTH([Arrival_DtTm]) == 2 ? "Feb" : MONTH([Arrival_DtTm]) == 3 ? "Mar" : MONTH([Arrival_DtTm]) == 4 ? "Apr" : MONTH([Arrival_DtTm]) == 5 ? "May" : MONTH([Arrival_DtTm]) == 6 ? "Jun" : MONTH([Arrival_DtTm]) == 7 ? "Jul" : MONTH([Arrival_DtTm]) == 8 ? "Aug" : MONTH([Arrival_DtTm]) == 9 ? "Sep" : MONTH([Arrival_DtTm]) == 10 ? "Oct" : MONTH([Arrival_DtTm]) == 11 ? "Nov" : MONTH([Arrival_DtTm]) == 12 ? "Dec" : "Invalid Month"

-- Year
YEAR( [Arrival_DtTm] )

-- Week_Of_Year
DATEPART("wk",[Arrival_DtTm])

-- Quarter
DATEPART("q", [Arrival_DtTm])

-- Quarter_Name
DATEPART("q", [Arrival_DtTm]) == 1 ? "Q1" : DATEPART("q", [Arrival_DtTm]) == 2 ? "Q2" : DATEPART("q", [Arrival_DtTm]) == 3 ? "Q3" : DATEPART("q", [Arrival_DtTm]) == 4 ? "Q4" : "Invalid Quarter"

-- isWeekend
DATEPART("dw", [Arrival_DtTm]) == 6 || DATEPART("dw", [Arrival_DtTm]) == 7 ? 1 : 0

-- isLeapYear 
YEAR([Arrival_DtTm]) % 4 == 0


/* -----------------------------------------------------------------*/
/** Close_DtTm **/

-- Day_Of_Week
DATEPART("dw",[Close_DtTm])

-- Day_Name
DATEPART("dw", [Close_DtTm]) == 1 ? "Monday" : DATEPART("dw", [Close_DtTm]) == 2 ? "Tuesday" : DATEPART("dw", [Close_DtTm]) == 3 ? "Wednesday" : DATEPART("dw", [Close_DtTm]) == 4 ? "Thursday" : DATEPART("dw", [Close_DtTm]) == 5 ? "Friday" : DATEPART("dw", [Close_DtTm]) == 6 ? "Saturday" : DATEPART("dw", [Close_DtTm]) == 7 ? "Sunday": "Invalid Day"

-- Day_Of_Month
DAY([Close_DtTm])

-- Day_Of_Year
DATEPART("y",[Close_DtTm])

-- Month_Of_Year
MONTH( [Close_DtTm] )

-- Month_Name
MONTH([Close_DtTm]) == 1 ? "Jan" : MONTH([Close_DtTm]) == 2 ? "Feb" : MONTH([Close_DtTm]) == 3 ? "Mar" : MONTH([Close_DtTm]) == 4 ? "Apr" : MONTH([Close_DtTm]) == 5 ? "May" : MONTH([Close_DtTm]) == 6 ? "Jun" : MONTH([Close_DtTm]) == 7 ? "Jul" : MONTH([Close_DtTm]) == 8 ? "Aug" : MONTH([Close_DtTm]) == 9 ? "Sep" : MONTH([Close_DtTm]) == 10 ? "Oct" : MONTH([Close_DtTm]) == 11 ? "Nov" : MONTH([Close_DtTm]) == 12 ? "Dec" : "Invalid Month"

-- Year
YEAR( [Close_DtTm] )

-- Week_Of_Year
DATEPART("wk",[Close_DtTm])

-- Quarter
DATEPART("q", [Close_DtTm])

-- Quarter_Name
DATEPART("q", [Close_DtTm]) == 1 ? "Q1" : DATEPART("q", [Close_DtTm]) == 2 ? "Q2" : DATEPART("q", [Close_DtTm]) == 3 ? "Q3" : DATEPART("q", [Close_DtTm]) == 4 ? "Q4" : "Invalid Quarter"

-- isWeekend
DATEPART("dw", [Close_DtTm]) == 6 || DATEPART("dw", [Close_DtTm]) == 7 ? 1 : 0

-- isLeapYear 
YEAR([Close_DtTm]) % 4 == 0

CREATE TABLE [Dim_Date] (
    [Date_ID] int identity(1,1),
    [Day_Of_Week] int,
    [Day_Name] nvarchar(11),
    [Day_Of_Month] int,
    [Day_Of_Year] int,
    [Month_Of_Year] int,
    [Month_Name] nvarchar(13),
    [Year] int,
    [Week_Of_Year] int,
    [Quarter] int,
    [Quarter_Name] nvarchar(15),
    [isWeekend] bit,
    [isLeapYear] bit
)
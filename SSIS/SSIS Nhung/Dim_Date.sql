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
/** Incident Date **/

-- Day_Of_Week
DATEPART("dw",[Incident Date])

-- Day_Name
DATEPART("dw", [Incident Date]) == 1 ? "Monday" : DATEPART("dw", [Incident Date]) == 2 ? "Tuesday" : DATEPART("dw", [Incident Date]) == 3 ? "Wednesday" : DATEPART("dw", [Incident Date]) == 4 ? "Thursday" : DATEPART("dw", [Incident Date]) == 5 ? "Friday" : DATEPART("dw", [Incident Date]) == 6 ? "Saturday" : DATEPART("dw", [Incident Date]) == 7 ? "Sunday": "Invalid Day"

-- Day_Of_Month
DAY([Incident Date])

-- Day_Of_Year
DATEPART("y",[Incident Date])

-- Month_Of_Year
MONTH( [Incident Date] )

-- Month_Name
MONTH([Incident Date]) == 1 ? "Jan" : MONTH([Incident Date]) == 2 ? "Feb" : MONTH([Incident Date]) == 3 ? "Mar" : MONTH([Incident Date]) == 4 ? "Apr" : MONTH([Incident Date]) == 5 ? "May" : MONTH([Incident Date]) == 6 ? "Jun" : MONTH([Incident Date]) == 7 ? "Jul" : MONTH([Incident Date]) == 8 ? "Aug" : MONTH([Incident Date]) == 9 ? "Sep" : MONTH([Incident Date]) == 10 ? "Oct" : MONTH([Incident Date]) == 11 ? "Nov" : MONTH([Incident Date]) == 12 ? "Dec" : "Invalid Month"

-- Year
YEAR( [Incident Date] )

-- Week_Of_Year
DATEPART("wk",[Incident Date])

-- Quarter
DATEPART("q", [Incident Date])

-- Quarter_Name
DATEPART("q", [Incident Date]) == 1 ? "Q1" : DATEPART("q", [Incident Date]) == 2 ? "Q2" : DATEPART("q", [Incident Date]) == 3 ? "Q3" : DATEPART("q", [Incident Date]) == 4 ? "Q4" : "Invalid Quarter"

-- isWeekend
DATEPART("dw", [Incident Date]) == 6 || DATEPART("dw", [Incident Date]) == 7 ? 1 : 0

-- isLeapYear 
YEAR([Incident Date]) % 4 == 0


/* -----------------------------------------------------------------*/
/** Alarm DtTm **/

-- Day_Of_Week
DATEPART("dw",[Alarm DtTm])

-- Day_Name
DATEPART("dw", [Alarm DtTm]) == 1 ? "Monday" : DATEPART("dw", [Alarm DtTm]) == 2 ? "Tuesday" : DATEPART("dw", [Alarm DtTm]) == 3 ? "Wednesday" : DATEPART("dw", [Alarm DtTm]) == 4 ? "Thursday" : DATEPART("dw", [Alarm DtTm]) == 5 ? "Friday" : DATEPART("dw", [Alarm DtTm]) == 6 ? "Saturday" : DATEPART("dw", [Alarm DtTm]) == 7 ? "Sunday": "Invalid Day"

-- Day_Of_Month
DAY([Alarm DtTm])

-- Day_Of_Year
DATEPART("y",[Alarm DtTm])

-- Month_Of_Year
MONTH( [Alarm DtTm] )

-- Month_Name
MONTH([Alarm DtTm]) == 1 ? "Jan" : MONTH([Alarm DtTm]) == 2 ? "Feb" : MONTH([Alarm DtTm]) == 3 ? "Mar" : MONTH([Alarm DtTm]) == 4 ? "Apr" : MONTH([Alarm DtTm]) == 5 ? "May" : MONTH([Alarm DtTm]) == 6 ? "Jun" : MONTH([Alarm DtTm]) == 7 ? "Jul" : MONTH([Alarm DtTm]) == 8 ? "Aug" : MONTH([Alarm DtTm]) == 9 ? "Sep" : MONTH([Alarm DtTm]) == 10 ? "Oct" : MONTH([Alarm DtTm]) == 11 ? "Nov" : MONTH([Alarm DtTm]) == 12 ? "Dec" : "Invalid Month"

-- Year
YEAR( [Alarm DtTm] )

-- Week_Of_Year
DATEPART("wk",[Alarm DtTm])

-- Quarter
DATEPART("q", [Alarm DtTm])

-- Quarter_Name
DATEPART("q", [Alarm DtTm]) == 1 ? "Q1" : DATEPART("q", [Alarm DtTm]) == 2 ? "Q2" : DATEPART("q", [Alarm DtTm]) == 3 ? "Q3" : DATEPART("q", [Alarm DtTm]) == 4 ? "Q4" : "Invalid Quarter"

-- isWeekend
DATEPART("dw", [Alarm DtTm]) == 6 || DATEPART("dw", [Alarm DtTm]) == 7 ? 1 : 0

-- isLeapYear 
YEAR([Alarm DtTm]) % 4 == 0

/* -----------------------------------------------------------------*/
/** Arrival DtTm **/

-- Day_Of_Week
DATEPART("dw",[Arrival DtTm])

-- Day_Name
DATEPART("dw", [Arrival DtTm]) == 1 ? "Monday" : DATEPART("dw", [Arrival DtTm]) == 2 ? "Tuesday" : DATEPART("dw", [Arrival DtTm]) == 3 ? "Wednesday" : DATEPART("dw", [Arrival DtTm]) == 4 ? "Thursday" : DATEPART("dw", [Arrival DtTm]) == 5 ? "Friday" : DATEPART("dw", [Arrival DtTm]) == 6 ? "Saturday" : DATEPART("dw", [Arrival DtTm]) == 7 ? "Sunday": "Invalid Day"

-- Day_Of_Month
DAY([Arrival DtTm])

-- Day_Of_Year
DATEPART("y",[Arrival DtTm])

-- Month_Of_Year
MONTH( [Arrival DtTm] )

-- Month_Name
MONTH([Arrival DtTm]) == 1 ? "Jan" : MONTH([Arrival DtTm]) == 2 ? "Feb" : MONTH([Arrival DtTm]) == 3 ? "Mar" : MONTH([Arrival DtTm]) == 4 ? "Apr" : MONTH([Arrival DtTm]) == 5 ? "May" : MONTH([Arrival DtTm]) == 6 ? "Jun" : MONTH([Arrival DtTm]) == 7 ? "Jul" : MONTH([Arrival DtTm]) == 8 ? "Aug" : MONTH([Arrival DtTm]) == 9 ? "Sep" : MONTH([Arrival DtTm]) == 10 ? "Oct" : MONTH([Arrival DtTm]) == 11 ? "Nov" : MONTH([Arrival DtTm]) == 12 ? "Dec" : "Invalid Month"

-- Year
YEAR( [Arrival DtTm] )

-- Week_Of_Year
DATEPART("wk",[Arrival DtTm])

-- Quarter
DATEPART("q", [Arrival DtTm])

-- Quarter_Name
DATEPART("q", [Arrival DtTm]) == 1 ? "Q1" : DATEPART("q", [Arrival DtTm]) == 2 ? "Q2" : DATEPART("q", [Arrival DtTm]) == 3 ? "Q3" : DATEPART("q", [Arrival DtTm]) == 4 ? "Q4" : "Invalid Quarter"

-- isWeekend
DATEPART("dw", [Arrival DtTm]) == 6 || DATEPART("dw", [Arrival DtTm]) == 7 ? 1 : 0

-- isLeapYear 
YEAR([Arrival DtTm]) % 4 == 0


/* -----------------------------------------------------------------*/
/** Close DtTm **/

-- Day_Of_Week
DATEPART("dw",[Close DtTm])

-- Day_Name
DATEPART("dw", [Close DtTm]) == 1 ? "Monday" : DATEPART("dw", [Close DtTm]) == 2 ? "Tuesday" : DATEPART("dw", [Close DtTm]) == 3 ? "Wednesday" : DATEPART("dw", [Close DtTm]) == 4 ? "Thursday" : DATEPART("dw", [Close DtTm]) == 5 ? "Friday" : DATEPART("dw", [Close DtTm]) == 6 ? "Saturday" : DATEPART("dw", [Close DtTm]) == 7 ? "Sunday": "Invalid Day"

-- Day_Of_Month
DAY([Close DtTm])

-- Day_Of_Year
DATEPART("y",[Close DtTm])

-- Month_Of_Year
MONTH( [Close DtTm] )

-- Month_Name
MONTH([Close DtTm]) == 1 ? "Jan" : MONTH([Close DtTm]) == 2 ? "Feb" : MONTH([Close DtTm]) == 3 ? "Mar" : MONTH([Close DtTm]) == 4 ? "Apr" : MONTH([Close DtTm]) == 5 ? "May" : MONTH([Close DtTm]) == 6 ? "Jun" : MONTH([Close DtTm]) == 7 ? "Jul" : MONTH([Close DtTm]) == 8 ? "Aug" : MONTH([Close DtTm]) == 9 ? "Sep" : MONTH([Close DtTm]) == 10 ? "Oct" : MONTH([Close DtTm]) == 11 ? "Nov" : MONTH([Close DtTm]) == 12 ? "Dec" : "Invalid Month"

-- Year
YEAR( [Close DtTm] )

-- Week_Of_Year
DATEPART("wk",[Close DtTm])

-- Quarter
DATEPART("q", [Close DtTm])

-- Quarter_Name
DATEPART("q", [Close DtTm]) == 1 ? "Q1" : DATEPART("q", [Close DtTm]) == 2 ? "Q2" : DATEPART("q", [Close DtTm]) == 3 ? "Q3" : DATEPART("q", [Close DtTm]) == 4 ? "Q4" : "Invalid Quarter"

-- isWeekend
DATEPART("dw", [Close DtTm]) == 6 || DATEPART("dw", [Close DtTm]) == 7 ? 1 : 0

-- isLeapYear 
YEAR([Close DtTm]) % 4 == 0

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
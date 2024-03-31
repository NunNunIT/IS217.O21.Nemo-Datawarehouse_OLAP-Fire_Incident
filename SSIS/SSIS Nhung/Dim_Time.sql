-- Dim_Time

Second
Minute
Hour
isNight

/* -----------------------------------------------------------------*/
/** Alarm_DtTm **/

-- Second
DATEPART("s",[Alarm_DtTm])

-- Minute
DATEPART("mi",[Alarm_DtTm])

-- Hour
DATEPART("hh",[Alarm_DtTm])

-- isNight
DATEPART("hh",[Alarm_DtTm]) > 17 || DATEPART("hh",[Alarm_DtTm]) < 5


/* -----------------------------------------------------------------*/
/** Arrival_DtTm**/

-- Second
DATEPART("s",[Arrival_DtTm)

-- Minute
DATEPART("mi",[Arrival_DtTm)

-- Hour
DATEPART("hh",[Arrival_DtTm)

-- isNight
DATEPART("hh",[Arrival_DtTm) > 17 || DATEPART("hh",[Arrival_DtTm) < 5

/* -----------------------------------------------------------------*/
/** Close_DtTm **/

-- Second
DATEPART("s",[Close_DtTm])

-- Minute
DATEPART("mi",[Close_DtTm])

-- Hour
DATEPART("hh",[Close_DtTm])

-- isNight
DATEPART("hh",[Close_DtTm]) > 17 || DATEPART("hh",[Close_DtTm]) < 5


CREATE TABLE [Dim_Time] (
    [Time_ID] int identity(1,1),
    [Hour] int,
    [Minute] int,
    [Second] int,
    [isNight] bit
)
-- Dim_Time

Second
Minute
Hour
isNight

/* -----------------------------------------------------------------*/
/** Alarm DtTm **/

-- Second
DATEPART("s",[Alarm DtTm])

-- Minute
DATEPART("mi",[Alarm DtTm])

-- Hour
DATEPART("hh",[Alarm DtTm])

-- isNight
DATEPART("hh",[Alarm DtTm]) > 17 || DATEPART("hh",[Alarm DtTm]) < 5


/* -----------------------------------------------------------------*/
/** Arrival DtTm **/

-- Second
DATEPART("s",[Arrival DtTm])

-- Minute
DATEPART("mi",[Arrival DtTm])

-- Hour
DATEPART("hh",[Arrival DtTm])

-- isNight
DATEPART("hh",[Arrival DtTm]) > 17 || DATEPART("hh",[Arrival DtTm]) < 5

/* -----------------------------------------------------------------*/
/** Close DtTm **/

-- Second
DATEPART("s",[Close DtTm])

-- Minute
DATEPART("mi",[Close DtTm])

-- Hour
DATEPART("hh",[Close DtTm])

-- isNight
DATEPART("hh",[Close DtTm]) > 17 || DATEPART("hh",[Close DtTm]) < 5


CREATE TABLE [Dim_Time] (
    [Time_ID] int identity(1,1),
    [Hour] int,
    [Minute] int,
    [Second] int,
    [isNight] bit
)
USE FIRE_INCIDENT;
GO

CREATE TABLE [Dim_Ignition_Cause] (
  [Ignition_Cause_ID] varchar(4) PRIMARY KEY,
  [Ignition_Cause_Desc] varchar(100)
)
GO

CREATE TABLE [Dim_Ignition_Factor] (
  [Ignition_Factor_ID] varchar(4) PRIMARY KEY,
  [Ignition_Factor_Desc] varchar(100)
)
GO

CREATE TABLE [Dim_Heat_Source] (
  [Heat_Source_ID] varchar(4) PRIMARY KEY,
  [Heat_Source_Desc] varchar(100)
)
GO

CREATE TABLE [Dim_Action] (
  [Action_ID] varchar(4) PRIMARY KEY,
  [Action_Desc] varchar(100)
)
GO

CREATE TABLE [Dim_Property] (
  [Property_ID] varchar(4) PRIMARY KEY,
  [Property_Desc] varchar(100)
)
GO

CREATE TABLE [Dim_Structure] (
  [Structure_ID] varchar(4) PRIMARY KEY,
  [Structure_Desc] varchar(100)
)
GO

CREATE TABLE [Dim_Location] (
  [Location_ID] int identity(1, 1) PRIMARY KEY,
  [Zipcode] varchar(10),
  [Supervisor_District] smallint,
)
GO

CREATE TABLE [Dim_Station] (
  [Station_ID] int identity(1, 1) PRIMARY KEY,
  [Station_Area] char(2),
  [Battalion] char(3)
)
GO

CREATE TABLE [Dim_Situation] (
  [Situation_ID] varchar(4) PRIMARY KEY,
  [Situation_Desc] varchar(100)
)
GO

CREATE TABLE [Dim_Time] (
  [Time_ID] varchar(6) PRIMARY KEY,
  [Second] smallint,
  [Minute] smallint,
  [Hour] smallint,
  [isNight] BIT
)
GO

CREATE TABLE [Dim_Date] (
  [Date_ID] varchar(8) primary key,
  [Day_of_Week] smallint,
  [Day_Name] varchar(15),
  [isWeekend] bit,
  [Day_of_Month] smallint,
  [Month_of_Year] smallint,
  [Month_Name] varchar(15),
  [Quarter] smallint,
  [Quarter_Name] varchar(15),
  [Year] smallint,
  [isLeapYear] bit
)
GO

CREATE TABLE [Raw_Fact] (
  [Fact_ID] int PRIMARY KEY,
  [City] varchar(35),
  [zipcode] varchar(10),
  [Battalion] varchar(3),
  [Station_Area] varchar(2),
  [Suppression_Units] decimal(28,0),
  [Suppression_Personnel] decimal(28,0),
  [EMS_Units] decimal(28,0),
  [EMS_Personnel] decimal(28,0),
  [Other_Units] decimal(28,0),
  [Other_Personnel] decimal(28,0),
  [Estimated_Property_Loss] decimal(28,0),
  [Estimated_Contents_Loss] decimal(28,0),
  [Fire_Fatalities] smallint,
  [Fire_Injuries] smallint,
  [Civilian_Fatalities] smallint,
  [Civilian_Injuries] smallint,
  [Number_of_Alarms] smallint,
  [Number_of_floors_with_minimum_damage] decimal(28,0),
  [Number_of_floors_with_significant_damage] decimal(28,0),
  [Number_of_floors_with_heavy_damage] decimal(28,0),
  [Number_of_floors_with_extreme_damage] decimal(28,0),
  [Supervisor_District] smallint,
  [Property_ID] varchar(4),
  [Property_Desc] varchar(100),
  [Structure_ID] varchar(4),
  [Structure_Desc] varchar(100),
  [Heat_Source_ID] varchar(4),
  [Heat_Source_Desc] varchar(100),
  [Ignition_Factor_Primary_ID] varchar(4),
  [Ignition_Factor_Primary_Desc] varchar(100),
  [Ignition_Factor_Secondary_ID] varchar(4),
  [Ignition_Factor_Secondary_Desc] varchar(100),
  [Ignition_Cause_ID] varchar(4),
  [Ignition_Cause_Desc] varchar(100),
  [Action_ID] varchar(4),
  [Action_Desc] varchar(100),
  [Situation_ID] varchar(4),
  [Situation_Desc] varchar(100),
  [Incident_Dt_ID] varchar(8),
  [Incident_Dt] DATE,
  [Alarm_Dt_ID] varchar(8),
  [Alarm_Dt] DATE,
  [Arrival_Dt_ID] varchar(8),
  [Arrival_Dt] DATE,
  [Close_Dt_ID] varchar(8),
  [Close_Dt] DATE,
  [Alarm_Tm_ID] varchar(6),
  [Arrival_Tm_ID] varchar(6),
  [Close_Tm_ID] varchar(6),
  [Duration_Tm_inSecond] int
)
GO

CREATE TABLE [Fact] (
  [Fact_ID] int primary key,
  [Property_ID] varchar(4),
  [Structure_ID] varchar(4),
  [Heat_Source_ID] varchar(4),
  [Ignition_Factor_Primary_ID] varchar(4),
  [Ignition_Factor_Secondary_ID] varchar(4),
  [Ignition_Cause_ID] varchar(4),
  [Action_ID] varchar(4),
  [Situation_ID] varchar(4),
  [Incident_Dt_ID] varchar(8),
  [Alarm_Dt_ID] varchar(8),
  [Arrival_Dt_ID] varchar(8),
  [Close_Dt_ID] varchar(8),
  [Alarm_Tm_ID] varchar(6),
  [Arrival_Tm_ID] varchar(6),
  [Close_Tm_ID] varchar(6),
  [Station_ID] int,
  [Location_ID] int,
  [Suppression_Units] numeric(28,0),
  [Suppression_Personnel] numeric(28,0),
  [EMS_Units] numeric(28,0),
  [EMS_Personnel] numeric(28,0),
  [Other_Units] numeric(28,0),
  [Other_Personnel] numeric(28,0),
  [Estimated_Property_Loss] numeric(28,0),
  [Estimated_Contents_Loss] numeric(28,0),
  [Fire_Fatalities] smallint,
  [Fire_Injuries] smallint,
  [Civilian_Fatalities] smallint,
  [Civilian_Injuries] smallint,
  [Number_of_Alarms] smallint,
  [Number_of_floors_with_minimum_damage] numeric(28,0),
  [Number_of_floors_with_significant_damage] numeric(28,0),
  [Number_of_floors_with_heavy_damage] numeric(28,0),
  [Number_of_floors_with_extreme_damage] numeric(28,0),
  [Duration_Tm_inSecond] int,
  FOREIGN KEY ([Property_ID]) REFERENCES [Dim_Property] ([Property_ID]),
  FOREIGN KEY ([Structure_ID]) REFERENCES [Dim_Structure] ([Structure_ID]),
  FOREIGN KEY ([Heat_Source_ID]) REFERENCES [Dim_Heat_Source] ([Heat_Source_ID]),
  FOREIGN KEY ([Ignition_Factor_Primary_ID]) REFERENCES [Dim_Ignition_Factor] ([Ignition_Factor_ID]),
  FOREIGN KEY ([Ignition_Factor_Secondary_ID]) REFERENCES [Dim_Ignition_Factor] ([Ignition_Factor_ID]),
  FOREIGN KEY ([Ignition_Cause_ID]) REFERENCES [Dim_Ignition_Cause] ([Ignition_Cause_ID]),
  FOREIGN KEY ([Action_ID]) REFERENCES [Dim_Action] ([Action_ID]),
  FOREIGN KEY ([Situation_ID]) REFERENCES [Dim_Situation] ([Situation_ID]),
  FOREIGN KEY ([Incident_Dt_ID]) REFERENCES [Dim_Date] ([Date_ID]),
  FOREIGN KEY ([Alarm_Dt_ID]) REFERENCES [Dim_Date] ([Date_ID]),
  FOREIGN KEY ([Arrival_Dt_ID]) REFERENCES [Dim_Date] ([Date_ID]),
  FOREIGN KEY ([Close_Dt_ID]) REFERENCES [Dim_Date] ([Date_ID]),
  FOREIGN KEY ([Alarm_Tm_ID]) REFERENCES [Dim_Time] ([Time_ID]),
  FOREIGN KEY ([Arrival_Tm_ID]) REFERENCES [Dim_Time] ([Time_ID]),
  FOREIGN KEY ([Close_Tm_ID]) REFERENCES [Dim_Time] ([Time_ID]),
  FOREIGN KEY ([Station_ID]) REFERENCES [Dim_Station] ([Station_ID]),
  FOREIGN KEY ([Location_ID]) REFERENCES [Dim_Location] ([Location_ID])
)
GO
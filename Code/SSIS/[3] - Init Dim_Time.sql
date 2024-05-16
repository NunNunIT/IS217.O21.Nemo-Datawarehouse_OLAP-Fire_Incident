USE [FIRE_INCIDENT]
GO

DECLARE @startTime TIME = '00:00:00';
DECLARE @endTime TIME = '23:59:59';
DECLARE @currentSecond TIME = @startTime;

DECLARE @hourStr VARCHAR(2);
DECLARE @minuteStr VARCHAR(2);
DECLARE @secondStr VARCHAR(2);
DECLARE @ID VARCHAR(6);

WHILE (@currentSecond < @endTime)
BEGIN
    SET @hourStr = RIGHT('00' + CAST(DATEPART(HOUR, @currentSecond) AS VARCHAR(2)), 2);
    SET @minuteStr = RIGHT('00' + CAST(DATEPART(MINUTE, @currentSecond) AS VARCHAR(2)), 2);
    SET @secondStr = RIGHT('00' + CAST(DATEPART(SECOND, @currentSecond) AS VARCHAR(2)), 2);
    SET @ID = @hourStr + @minuteStr + @secondStr;

    INSERT INTO Dim_Time (Time_ID, Hour, Minute, Second)
    VALUES (@ID, DATEPART(HOUR, @currentSecond), DATEPART(MINUTE, @currentSecond), DATEPART(SECOND, @currentSecond));

    SET @currentSecond = DATEADD(SECOND, 1, @currentSecond);
END

SET @hourStr = RIGHT('00' + CAST(DATEPART(HOUR, @currentSecond) AS VARCHAR(2)), 2);
SET @minuteStr = RIGHT('00' + CAST(DATEPART(MINUTE, @currentSecond) AS VARCHAR(2)), 2);
SET @secondStr = RIGHT('00' + CAST(DATEPART(SECOND, @currentSecond) AS VARCHAR(2)), 2);
SET @ID = @hourStr + @minuteStr + @secondStr;

INSERT INTO Dim_Time (Time_ID, Hour, Minute, Second)
VALUES (@ID, DATEPART(HOUR, @currentSecond), DATEPART(MINUTE, @currentSecond), DATEPART(SECOND, @currentSecond));


UPDATE Dim_Time
SET isNight = 0

UPDATE Dim_Time
SET isNight = 1
WHERE 
    Hour NOT BETWEEN 6 AND 19
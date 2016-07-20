DECLARE @mydate DATETIME
SET @mydate = getdate()

select convert(varchar(10), DATEADD(dd,-(DAY(@mydate))+1,@mydate) , 121) as MonthFirstDate
,convert(varchar(10),DATEADD(dd,-(DAY(DATEADD(mm,1,@mydate))),DATEADD(mm,1,@mydate)),121) as MonthLastDate


select convert(varchar(10),GETDATE(),101)

SELECT convert(datetime, 'Oct 23 2012 11:01AM', 100) -- mon dd yyyy hh:mmAM (or PM)
SELECT convert(datetime, 'Oct 23 2012 11:01AM') -- 2012-10-23 11:01:00.000
 
-- Without century (yy) string date conversion - convert string to datetime function
SELECT convert(datetime, 'Oct 23 12 11:01AM', 0) -- mon dd yy hh:mmAM (or PM)
SELECT convert(datetime, 'Oct 23 12 11:01AM') -- 2012-10-23 11:01:00.000
 
-- Convert string to datetime sql - convert string to date sql - sql dates format
-- T-SQL convert string to datetime - SQL Server convert string to date
SELECT convert(datetime, '10/23/2016', 101) -- mm/dd/yyyy
SELECT convert(datetime, '2016.10.23', 102) -- yyyy.mm.dd ANSI date with century
SELECT convert(datetime, '23/10/2016', 103) -- dd/mm/yyyy
SELECT convert(datetime, '23.10.2016', 104) -- dd.mm.yyyy
SELECT convert(datetime, '23-10-2016', 105) -- dd-mm-yyyy
-- mon types are nondeterministic conversions, dependent on language setting
SELECT convert(datetime, '23 OCT 2016', 106) -- dd mon yyyy
SELECT convert(datetime, 'Oct 23, 2016', 107) -- mon dd, yyyy
-- 2016-10-23 00:00:00.000
SELECT convert(datetime, '20:10:44', 108) -- hh:mm:ss
-- 1900-01-01 20:10:44.000
 
-- mon dd yyyy hh:mm:ss:mmmAM (or PM) - sql time format - SQL Server datetime format
SELECT convert(datetime, 'Oct 23 2016 11:02:44:013AM', 109)
-- 2016-10-23 11:02:44.013
SELECT convert(datetime, '10-23-2016', 110) -- mm-dd-yyyy
SELECT convert(datetime, '2016/10/23', 111) -- yyyy/mm/dd
-- YYYYMMDD ISO date format works at any language setting - international standard
SELECT convert(datetime, '20161023')
SELECT convert(datetime, '20161023', 112) -- ISO yyyymmdd
-- 2016-10-23 00:00:00.000
SELECT convert(datetime, '23 Oct 2016 11:02:07:577', 113) -- dd mon yyyy hh:mm:ss:mmm
-- 2016-10-23 11:02:07.577
SELECT convert(datetime, '20:10:25:300', 114) -- hh:mm:ss:mmm(24h)
-- 1900-01-01 20:10:25.300
SELECT convert(datetime, '2016-10-23 20:44:11', 120) -- yyyy-mm-dd hh:mm:ss(24h)
-- 2016-10-23 20:44:11.000
SELECT convert(datetime, '2016-10-23 20:44:11.500', 121) -- yyyy-mm-dd hh:mm:ss.mmm
-- 2016-10-23 20:44:11.500
 
-- Style 126 is ISO 8601 format: international standard - works with any language setting
SELECT convert(datetime, '2008-10-23T18:52:47.513', 126) -- yyyy-mm-ddThh:mm:ss(.mmm)
-- 2008-10-23 18:52:47.513
SELECT convert(datetime, N'23 ???? 1429  6:52:47:513PM', 130) -- Islamic/Hijri date
SELECT convert(datetime, '23/10/1429  6:52:47:513PM',    131) -- Islamic/Hijri date
 
-- Convert DDMMYYYY format to datetime - sql server to date / datetime
SELECT convert(datetime, STUFF(STUFF('31012016',3,0,'-'),6,0,'-'), 105)
-- 2016-01-31 00:00:00.000
-- SQL Server T-SQL string to datetime conversion without century - some exceptions
-- nondeterministic means language setting dependent such as Mar/M?r/mars/m?rc
SELECT convert(datetime, 'Oct 23 16 11:02:44AM') -- Default
SELECT convert(datetime, '10/23/16', 1) -- mm/dd/yy U.S.
SELECT convert(datetime, '16.10.23', 2) -- yy.mm.dd ANSI
SELECT convert(datetime, '23/10/16', 3) -- dd/mm/yy UK/FR
SELECT convert(datetime, '23.10.16', 4) -- dd.mm.yy German
SELECT convert(datetime, '23-10-16', 5) -- dd-mm-yy Italian
SELECT convert(datetime, '23 OCT 16', 6) -- dd mon yy non-det.
SELECT convert(datetime, 'Oct 23, 16', 7) -- mon dd, yy non-det.
SELECT convert(datetime, '20:10:44', 8) -- hh:mm:ss
SELECT convert(datetime, 'Oct 23 16 11:02:44:013AM', 9) -- Default with msec
SELECT convert(datetime, '10-23-16', 10) -- mm-dd-yy U.S.
SELECT convert(datetime, '16/10/23', 11) -- yy/mm/dd Japan
SELECT convert(datetime, '161023', 12) -- yymmdd ISO
SELECT convert(datetime, '23 Oct 16 11:02:07:577', 13) -- dd mon yy hh:mm:ss:mmm EU dflt
SELECT convert(datetime, '20:10:25:300', 14) -- hh:mm:ss:mmm(24h)
SELECT convert(datetime, '2016-10-23 20:44:11',20) -- yyyy-mm-dd hh:mm:ss(24h) ODBC can.
SELECT convert(datetime, '2016-10-23 20:44:11.500', 21)-- yyyy-mm-dd hh:mm:ss.mmm ODBC
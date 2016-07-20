if exists (select  * from tempdb.dbo.sysobjects o where o.xtype in ('U') 
            and o.id = object_id(N'tempdb..#tempTable'))
DROP TABLE #tempTable;

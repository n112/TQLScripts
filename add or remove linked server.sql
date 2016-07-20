
--add linked server
EXEC master.dbo.sp_addlinkedserver 
    @server = N'sql1', 
    @srvproduct=N'SQL Server' ;
GO

--remove linked server
EXEC master.dbo.sp_dropserver 
    @server = N'sql2'



	
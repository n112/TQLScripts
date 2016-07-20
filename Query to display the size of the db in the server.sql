SELECT DB_NAME(database_id) AS DatabaseName,
(size*8)/1024 SizeMB,
Name AS Logical_Name,
Physical_Name
FROM sys.master_files
--WHERE DB_NAME(database_id) = 'AdventureWorks'
where Name like '%stg%'
and Name not like '%log%'
order by size desc
GO
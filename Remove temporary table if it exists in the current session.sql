IF EXISTS
(
SELECT *
FROM tempdb.dbo.sysobjects
WHERE ID = OBJECT_ID(N'tempdb..#t')
)
BEGIN
DROP TABLE #t
select 1
END


IF EXISTS (SELECT * FROM tempdb.dbo.sysobjects WHERE ID = OBJECT_ID(N'tempdb..#t')) BEGIN DROP TABLE #t select 1 END

IF EXISTS (SELECT * FROM tempdb.dbo.sysobjects WHERE ID = OBJECT_ID(N'tempdb..#t')) BEGIN DROP TABLE #t END
SELECT name, create_date, modify_date ,   * 
FROM sys.objects
WHERE type = 'P' 
and name ='sp_test'
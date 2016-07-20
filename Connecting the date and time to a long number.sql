       select SUBSTRING (STR(DATEPART(YEAR,GETDATE()),4),3,2) + 
		  REPLACE(
		  STR(DATEPART(MONTH,GETDATE()),2) + 
		  STR(DATEPART(DAY,GETDATE()),2) + 
		  STR(DATEPART(HOUR,GETDATE()),2) + 
		  STR(DATEPART(MINUTE,GETDATE()),2) + 
		  STR(DATEPART(SECOND,GETDATE()),2) + 
		  STR(DATEPART(MILLISECOND,GETDATE()),3),' ','0')
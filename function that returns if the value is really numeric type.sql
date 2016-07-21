USE [LAB_STG_NEWOFEK]
GO

/****** Object:  UserDefinedFunction [dbo].[isReallyNumeric]    Script Date: 21/07/2016 09:46:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[isReallyNumeric]  
(  
    @num VARCHAR(64)  
)  
RETURNS BIT  
BEGIN  

    IF LEFT(@num, 1) = '-'  
        SET @num = SUBSTRING(@num, 2, LEN(@num))  
 
    DECLARE @pos TINYINT  
 
    SET @pos = 1 + LEN(@num) - CHARINDEX('.', REVERSE(@num))  
 
    RETURN CASE  
    WHEN PATINDEX('%[^0-9.-]%', @num) = 0  
        AND @num NOT IN ('.', '-', '+', '^') 
        AND LEN(@num)>0  
        AND @num NOT LIKE '%-%' 
        AND  
        (  
            ((@pos = LEN(@num)+1)  
            OR @pos = CHARINDEX('.', @num))  
        )  
    THEN  
        1  
    ELSE  
    0  
    END  
END  

GO



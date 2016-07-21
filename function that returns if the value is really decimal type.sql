

CREATE FUNCTION [dbo].[isReallyDecimal]  
(  
    @num VARCHAR(64),
    @Digits tinyint,
    @Decimal tinyint  
)  
RETURNS BIT  
BEGIN  

    IF LEFT(@num, 1) = '-'  
        SET @num = SUBSTRING(@num, 2, LEN(@num))  
	--set @num= @num COLLATE hebrew_bin 
 
    DECLARE @pos TINYINT  
 
    SET @pos = 1 + LEN(@num) - CHARINDEX('.', REVERSE(@num))  
 
    RETURN CASE
    WHEN   @num LIKE '%.%'
    THEN
		CASE WHEN PATINDEX('%[^0-9.-]%', @num COLLATE hebrew_bin ) = 0  
			AND @num NOT IN ('.', '-', '+', '^') 
			AND LEN(@num) between 1 and @Digits+1  
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
	ELSE
		CASE WHEN PATINDEX('%[^0-9-]%', @num COLLATE hebrew_bin) = 0  
			AND @num NOT IN ('.', '-', '+', '^') 
			AND LEN(@num) between 1 and (@Digits-@Decimal)  
			AND @num NOT LIKE '%-%' 
			AND  
			(	  
				((@pos = LEN(@num)+1)  
				--OR @pos = CHARINDEX('.', @num)) 
				) 
			)  
		THEN  
			1  
		ELSE  
		0  
		END
	END	  
END  

GO



DECLARE @str VARCHAR(400)= '(re@move) ~special~ *char|acters. from; ^string& in sql!'

--function option 1
DECLARE @expres  VARCHAR(50) = '%[~,@,#,$,%,&,*,(,),.,!,|,;,^]%'
WHILE PATINDEX( @expres, @str ) > 0
      SET @str = Replace(REPLACE( @str, SUBSTRING( @str, PATINDEX( @expres, @str ), 1 ),''),'-',' ')

SELECT @str

--function option 2
SELECT REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
       REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@str,
        '!',''),'@',''),'#',''),'$',''),'%',''),
        '^',''),'&',''),'*',''),',',''),';',''),'|','')
        



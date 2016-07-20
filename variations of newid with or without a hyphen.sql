select newid()

select LEFT(REPLACE(newid(),'-',''),20)

select LEFT(REPLACE(newid(),'-',''),15)

select LEFT(REPLACE(cast(newid()as varchar (45)),'-',''),15)


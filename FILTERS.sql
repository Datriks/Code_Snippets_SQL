USE [DSTRAINING]
GO



select *
from [dbo].[FakeNamesCanada]
WHERE ISNUMERIC([BALANCE]) = 1
AND LEN([ZIPCODE]) <= 7
AND ISDATE([BIRTHDAY]) <> 1


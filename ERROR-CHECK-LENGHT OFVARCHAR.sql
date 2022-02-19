SELECT *
FROM [dbo].[FakeNamesCanada]
WHERE LEN([ZipCode])>7
AND ISNUMERIC([Balance]) =1
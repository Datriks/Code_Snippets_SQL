CREATE VIEW NEWVIEWUS
AS
SELECT  [Name],[Group],[SalesQuota],[Bonus]
FROM  [Sales].[SalesTerritory] A INNER JOIN [Sales].[SalesPerson] B
ON A.TerritoryID = B.TerritoryID
WHERE [Group]  LIKE 'NORTH AMERICA'

SELECT * FROM NEWVIEWUS
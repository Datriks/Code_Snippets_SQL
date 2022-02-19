-- =============================================
-- Create View template
-- =============================================
USE AdventureWorks2017
GO

IF object_id(N'dbo.Top15Sales', 'V') IS NOT NULL
	DROP VIEW dbo.Top15Sales
GO

CREATE VIEW dbo.Top15Sales AS
SELECT TOP 15 * FROM Sales.SalesOrderHeader ORDER BY TotalDue DESC

select * from Top15Sales
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (4000) [Order ID]
      ,[Order Date]
      ,[Customer Name]
      ,[City]
      ,[Country]
      ,[Region]
      ,[Segment]
      ,[Ship Date]
      ,[Ship Mode]
  FROM [DSTRAINING].[dbo].[EuroMart-ListOfOrders]
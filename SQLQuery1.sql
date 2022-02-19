/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [CountryRegionCode]
      ,[Name]
      ,[ModifiedDate] INTO TAB1
  FROM [AdventureWorks2017].[Person].[CountryRegion] 
  WHERE[CountryRegionCode] LIKE 'A%'


  SELECT TOP (1000) [CountryRegionCode]
      ,[Name]
      ,[ModifiedDate] INTO TAB2
  FROM [AdventureWorks2017].[Person].[CountryRegion] 
  WHERE[CountryRegionCode] NOT LIKE 'A%'
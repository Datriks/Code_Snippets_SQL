/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [OrderDate]
      ,[Region]
      ,[Rep]
      ,[Item]
      ,[Units]
      ,[Unit Price]
  FROM [DSTRAINING].[dbo].[OfficeSupplies]

  alter table [dbo].[OfficeSupplies]
  add RowNumber int identity (1,1) not null
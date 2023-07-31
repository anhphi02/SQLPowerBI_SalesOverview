/****** Script for SelectTopNRows command from SSMS  ******/
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductItemCode
      --,p.[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS ProductName
	  ,ps.EnglishProductSubcategoryName AS ProductSubCategory
	  ,pc.EnglishProductCategoryName AS ProductCategory
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] AS ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS ProductLine
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] AS ProductModelName
      --,[LargePhoto]
      ,p.[EnglishDescription] AS ProductDescription
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL(p.Status, 'Outdated') AS ProductStatus
FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
LEFT JOIN DimProductSubcategory AS ps
	ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
LEFT JOIN DimProductCategory AS pc
	ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY p.ProductKey ASC

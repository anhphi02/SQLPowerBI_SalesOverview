-- Clean DimCustomer Table
SELECT
	   c.[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName]
      --,[MiddleName]
      ,c.[LastName]
	  ,c.FirstName + ' ' + c.LastName AS FullName
      --,[NameStyle]
      ,[BirthDate]
      ,[MaritalStatus]
      --,[Suffix]
      ,CASE WHEN c.Gender ='M' THEN 'Male' WHEN c.Gender ='F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,g.City
FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g
	ON c.GeographyKey = g.GeographyKey
ORDER BY  CustomerKey ASC
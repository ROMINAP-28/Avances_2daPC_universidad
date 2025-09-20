USE AdventureWorksDW2022

SELECT FirstName,LastName,EnglishProductName,SalesAmount,FullDateAlternateKey AS FECHA
FROM FactInternetSales
INNER JOIN  DimCustomer ON DimCustomer.CustomerKey = FactInternetSales.CustomerKey
INNER JOIN DimProduct ON DimProduct.ProductKey = FactInternetSales.ProductKey
INNER JOIN DimDate ON FactInternetSales.OrderDateKey = DimDate.DateKey
USE AdventureWorksDW2022;

SELECT 
    c.FirstName + ' ' + c.LastName AS Cliente,
    p.EnglishProductName AS Producto,
    d.CalendarYear AS Año,
    t.SalesTerritoryCountry AS Pais,
    f.SalesAmount AS MontoVenta
FROM FactInternetSales f
INNER JOIN DimCustomer c ON f.CustomerKey = c.CustomerKey
INNER JOIN DimProduct p ON f.ProductKey = p.ProductKey
INNER JOIN DimDate d ON f.OrderDateKey = d.DateKey
INNER JOIN DimSalesTerritory t ON f.SalesTerritoryKey = t.SalesTerritoryKey;

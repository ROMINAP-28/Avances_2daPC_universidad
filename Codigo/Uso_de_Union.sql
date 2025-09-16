USE AdventureWorksDW2022;


SELECT SalesOrderNumber, SalesAmount, 'Internet' AS TipoVenta
FROM FactInternetSales
UNION
SELECT SalesOrderNumber, SalesAmount, 'Reseller' AS TipoVenta
FROM FactResellerSales;

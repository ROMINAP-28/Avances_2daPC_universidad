USE AdventureWorksDW2022;
GO

SELECT 
    c.CustomerKey,
    c.FirstName + ' ' + c.LastName AS NombreCliente,
    COUNT(DISTINCT f.SalesOrderNumber) AS TotalPedidos
FROM DimCustomer c
INNER JOIN FactInternetSales f ON c.CustomerKey = f.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
ORDER BY TotalPedidos DESC;

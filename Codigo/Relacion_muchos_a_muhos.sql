Use AdventureWorksDW2022;


SELECT 
    p.EnglishProductName AS Producto,
    pr.EnglishPromotionName AS Promocion,
    COUNT(fs.SalesOrderNumber) AS TotalVentas
FROM dbo.FactInternetSales AS fs
INNER JOIN dbo.DimProduct AS p
    ON fs.ProductKey = p.ProductKey
INNER JOIN dbo.DimPromotion AS pr
    ON fs.PromotionKey = pr.PromotionKey
GROUP BY p.EnglishProductName, pr.EnglishPromotionName
ORDER BY p.EnglishProductName;
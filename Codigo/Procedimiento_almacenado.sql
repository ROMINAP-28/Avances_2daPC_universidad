USE AdventureWorksDW2022

GO

CREATE PROCEDURE usp_ListarGeografia
AS
BEGIN
    SELECT City,
           SpanishCountryRegionName,
           PostalCode
    FROM DimGeography;
END;
GO
EXEC usp_ListarGeografia;


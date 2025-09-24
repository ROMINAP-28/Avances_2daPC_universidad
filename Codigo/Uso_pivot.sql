USE AdventureWorksDW2022

-- USO DEL PIVOT

SELECT * FROM (SELECT City,SpanishCountryRegionName,PostalCode FROM DimGeography)
AS fuente 
PIVOT ( COUNT (PostalCode) FOR SpanishCountryRegionName IN ([Australia],[Canada])) AS PivotTable;


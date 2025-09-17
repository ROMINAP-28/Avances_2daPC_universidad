USE AdventureWorksDW2022

SELECT City,EnglishCountryRegionName
FROM DimGeography
WHERE EnglishCountryRegionName IN ('Australia','France','Canada');
USE AdventureWorksDW2022;

-- USO DE EXIST 

SELECT DepartmentGroupName FROM DimDepartmentGroup 

WHERE EXISTS (SELECT 1 FROM  FactFinance WHERE FactFinance.FinanceKey = DimDepartmentGroup.DepartmentGroupKey);

-- USO DE NO EXIST 

SELECT City FROM DimGeography

WHERE NOT EXISTS ( SELECT 1 FROM DimSalesTerritory WHERE DimGeography.GeographyKey = DimSalesTerritory.SalesTerritoryKey);
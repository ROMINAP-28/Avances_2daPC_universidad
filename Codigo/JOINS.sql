USE AdventureWorksDW2022

-- USO DEL LEFT JOIN

	SELECT FirstName,LastName FROM DimCustomer

	LEFT JOIN FactSurveyResponse ON DimCustomer.CustomerKey = FactSurveyResponse.CustomerKey

--RIGHT JOIN 
	SELECT FirstName,LastName FROM DimCustomer

	RIGHT JOIN FactSurveyResponse ON DimCustomer.CustomerKey = FactSurveyResponse.SurveyResponseKey


--FULL JOIN 

	SELECT FirstName, LastName,  City, EnglishCountryRegionName
	FROM DimCustomer 
	FULL JOIN DimGeography   ON DimCustomer.GeographyKey = DimGeography.GeographyKey;


--CROSS JOIN

	SELECT FirstName, LastName, City, EnglishCountryRegionName
	FROM DimCustomer 
	CROSS JOIN DimGeography ;

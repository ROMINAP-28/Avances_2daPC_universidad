USE AdventureWorksDW2022;

SELECT SpanishDayNameOfWeek, SpanishMonthName  FROM DimDate 
WHERE SpanishDayNameOfWeek LIKE '[V]%'  AND SpanishMonthName = 'Enero';



USE AdventureWorksDW2022;
GO

CREATE FUNCTION dbo.fn_GetTotalOrdersByCustomer
(
    @CustomerKey INT
)
RETURNS INT
AS
BEGIN
    DECLARE @TotalOrdenes INT;

    SELECT @TotalOrdenes = COUNT(*)
    FROM FactInternetSales
    WHERE CustomerKey = @CustomerKey;

    RETURN @TotalOrdenes;
END;
GO


SELECT dbo.fn_GetTotalOrdersByCustomer(11000) AS TotalPedidos;

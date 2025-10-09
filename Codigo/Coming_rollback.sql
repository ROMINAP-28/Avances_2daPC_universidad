USE AdventureWorksDW2022

GO


BEGIN TRANSACTION;

BEGIN TRY
    
    DECLARE @CustomerKey INT = 11000;

    IF NOT EXISTS (SELECT 1 FROM DimCustomer WHERE CustomerKey = @CustomerKey)
    BEGIN
        PRINT 'El cliente no existe';
        ROLLBACK TRANSACTION;
        RETURN;
    END

    
    INSERT INTO FactInternetSales
        (ProductKey, OrderDateKey, DueDateKey, ShipDateKey, CustomerKey, SalesOrderNumber, SalesAmount, OrderQuantity)
    VALUES
        (310, 20250101, 20250103, 20250105, @CustomerKey, 'SO222222', 1500.00, 2);

    PRINT 'Cliente insertado correctamente' + CAST(@CustomerKey AS VARCHAR);

    
    COMMIT TRANSACTION;
    PRINT 'Transacción confirmada.';

END TRY
BEGIN CATCH
    PRINT 'Ocurrió un error';
    ROLLBACK TRANSACTION;
END CATCH;
GO

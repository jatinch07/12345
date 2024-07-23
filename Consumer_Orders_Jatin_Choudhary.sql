-- This query creates a report displaying the number of orders by customer and shipper, grouped by month.

SELECT 
    CustomerID, 
    ShipperID, 
    YEAR(OrderDate) AS OrderYear, 
    MONTH(OrderDate) AS OrderMonth, 
    COUNT(OrderID) AS NumberOfOrders
FROM 
    Orders
GROUP BY 
    CustomerID, 
    ShipperID, 
    YEAR(OrderDate), 
    MONTH(OrderDate)
ORDER BY 
    CustomerID, 
    ShipperID, 
    OrderYear, 
    OrderMonth;

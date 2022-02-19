use [DSTRAINING]
go

SELECT *
FROM [ListOfOrders] A
LEFT JOIN [OrderBreakdown] B
ON
A.[Order ID] = B.[Order ID]